//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.callback.ExecuteScriptCallback;
import com.mojitox.mxflutter.framework.callback.InvokeJSValueCallback;
import com.mojitox.mxflutter.framework.common.JsLoadErrorMsg;
import com.mojitox.mxflutter.framework.constants.ApiName;
import com.mojitox.mxflutter.framework.constants.JsConstant;
import com.mojitox.mxflutter.framework.constants.JsObjectType;
import com.mojitox.mxflutter.framework.constants.MethodChannelConstant;
import com.mojitox.mxflutter.framework.constants.MxConfig;
import com.mojitox.mxflutter.framework.executor.UiThread;
import com.mojitox.mxflutter.framework.js.JsEngineLoader;
import com.mojitox.mxflutter.framework.utils.MxLog;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StringCodec;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class JsFlutterApp {

    private static final String TAG = "JsFlutterApp";

    MethodChannel jsFlutterAppChannel;
    BasicMessageChannel<String> jsFlutterAppRebuildChannel;
    BasicMessageChannel<String> jsFlutterAppNavigatorPushChannel;

    private volatile boolean isJsAppRun;
    //mx框架native侧加载main.js耗时
    private long mxNativeJSLoadCost;
    private final ArrayList<MethodCall> callJSMethodQueue;

    public JsFlutterApp() {
        setupChannel(MXFlutterPlugin.get().getBinaryMessenger());
        callJSMethodQueue = new ArrayList<>(1);
    }

    //flutter --> js
    private void setupChannel(BinaryMessenger binaryMessenger) {
        jsFlutterAppChannel = new MethodChannel(binaryMessenger,
                MethodChannelConstant.MX_FLUTTER_METHOD_CHANNEL_APP);
        jsFlutterAppChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(@NonNull MethodCall methodCall, @NonNull MethodChannel.Result result) {
                if (methodCall.method.equals(MethodChannelConstant.CALL_JS)) {
                    if (!isJsAppRun) {
                        MxLog.w(TAG, "jsApp is not running" + methodCall.argument("method"));
                        MethodCall tempMethodCall = new MethodCall(MethodChannelConstant.NATIVE_CALL_METHOD,
                                methodCall.arguments);
                        callJSMethodQueue.add(tempMethodCall);
                        return;
                    }
                    MXFlutterPlugin
                            .get().getJsExecutor()
                            .invokeJSValue(JsObjectType.CURRENT_APP_OBJECT, MethodChannelConstant.NATIVE_CALL_METHOD,
                                    methodCall.arguments, new InvokeJSValueCallback() {
                                        @Override
                                        public void onSuccess(Object value) {
                                            final String resultStr = value == null ? "" : value.toString();
                                            UiThread.post(new Runnable() {
                                                @Override
                                                public void run() {
                                                    result.success(resultStr);
                                                }
                                            });
                                        }

                                        @Override
                                        public void onError(Error error) {
                                            result.error(error.toString(), null, null);
                                            JsLoadErrorMsg.INSTANCE.invokeJsErrorMethodChannel(error, "");
                                        }
                                    });
                }
            }
        });

        // Rebuild方法采用BasicMessageChannel
        jsFlutterAppRebuildChannel = new BasicMessageChannel<>(binaryMessenger,
                MethodChannelConstant.MX_FLUTTER_METHOD_CHANNEL_APP_REBUILD, StringCodec.INSTANCE);
        // navigator_push方法采用BasicMessageChannel
        jsFlutterAppNavigatorPushChannel = new BasicMessageChannel<>(binaryMessenger,
                MethodChannelConstant.MX_FLUTTER_METHOD_CHANNEL_APP_NAVIGATOR_PUSH, StringCodec.INSTANCE);
    }

    public MethodChannel getJsFlutterAppChannel() {
        return jsFlutterAppChannel;
    }

    public BasicMessageChannel<String> getJsFlutterAppRebuildChannel() {
        return jsFlutterAppRebuildChannel;
    }

    public BasicMessageChannel<String> getJsFlutterAppNavigatorPushChannel() {
        return jsFlutterAppNavigatorPushChannel;
    }

    /**
     * 加载main js入口
     */
    public void runApp(Map flutterAppEnvironmentInfo) {
        if (isJsAppRun) {
            isJsAppRun = false;
            JsEngineLoader.getInstance().hotReloadJsEngine(new ExecuteScriptCallback() {
                @Override
                public void onComplete(Object value) {
                    realStartApp(flutterAppEnvironmentInfo);
                }
            });
        } else {
            realStartApp(flutterAppEnvironmentInfo);
        }
    }

    private void realStartApp(Map flutterAppEnvironmentInfo) {
        setFlutterAppEnvironmentInfo(flutterAppEnvironmentInfo);
        // 记录native侧main.js加载开始时间
        long jsLoadStartTime = System.currentTimeMillis();
        if (JsEngineLoader.getInstance().isLoadMainJsSuccess()) {
            MxLog.d(TAG, "load main js success");
            MXFlutterPlugin.get().getMxEngine()
                    .invokeJsCommonChannel(JsConstant.getInvokeJSMirrorResetData(), null);
            onMainJsLoadComplete(jsLoadStartTime);
        } else {
            final String mainJsPath = MxConfig.getMainJsPath();
            InvokeJSValueCallback invokeJSValueCallback = new InvokeJSValueCallback() {
                @Override
                public void onSuccess(@Nullable Object value) {
                    onMainJsLoadComplete(jsLoadStartTime);
                }

                @Override
                public void onError(Error error) {
                    JsLoadErrorMsg.INSTANCE.invokeJsErrorMethodChannel(error, mainJsPath);
                }
            };
            if (JsEngineLoader.getInstance().isLoadMainJs()) {
                JsEngineLoader.getInstance().setPreloadMainJsCallback(invokeJSValueCallback);
                MxLog.d(TAG, "is load main js");
            } else {
                MxLog.d(TAG, "begin load main js");
                MXFlutterPlugin.get().getJsExecutor().registerMxNativeJsFlutterApp();
                MXFlutterPlugin.get().getJsExecutor().executeScriptPath(mainJsPath, invokeJSValueCallback);
            }
        }
    }
    
    private void onMainJsLoadComplete(long jsLoadStartTime) {
        isJsAppRun = true;
        callJSMethodCallQueue();
        // 记录native侧main.js加载开始时间
        mxNativeJSLoadCost = System.currentTimeMillis() - jsLoadStartTime;
        callJSInitProfileInfo();
        // 通知Flutter侧，JS引擎初始化成功
        callFlutterJSEngineInitSuccess();
    }

    private void setFlutterAppEnvironmentInfo(Map flutterAppEnvironmentInfo) {
        MXFlutterPlugin.get().getJsExecutor()
                .registerGlobalObject(ApiName.OBJECT_FLUTTER_APP_ENVIRONMENT_INFO, flutterAppEnvironmentInfo);
        MXFlutterPlugin.get().getJsExecutor().registerGlobalObject(ApiName.OBJECT_IS_FLUTTER_ENGINE_SET_UP, true);
    }

    public void close() {
        JsEngineLoader.getInstance().closeEngine();
    }

    private void callJSMethodCallQueue() {
        for (MethodCall call : callJSMethodQueue) {
            MXFlutterPlugin.get().getJsExecutor()
                    .invokeJSValue(JsObjectType.CURRENT_APP_OBJECT, call.method, call.arguments, null);
        }
        callJSMethodQueue.clear();
    }

    private void callJSInitProfileInfo() {
        Map<String, Object> args = new HashMap<>();
        args.put(ApiName.METHOD_KEY, "nativeCallInitProfileInfo");
        Map<String, Object> arguments = new HashMap<>();
        arguments.put("mxNativeJSLoadCost", mxNativeJSLoadCost);
        args.put(ApiName.METHOD_ARGUMENT, arguments);
        MethodCall methodCall = new MethodCall(MethodChannelConstant.NATIVE_CALL_METHOD, args);
        if (!isJsAppRun) {
            callJSMethodQueue.add(methodCall);
            return;
        }
        MXFlutterPlugin.get().getJsExecutor()
                .invokeJSValue(JsObjectType.CURRENT_APP_OBJECT, methodCall.method,
                        methodCall.arguments, null);
    }

    private void callFlutterJSEngineInitSuccess() {
        UiThread.post(new Runnable() {
            @Override
            public void run() {
                Map<String, Boolean> arg = new HashMap<>();
                arg.put("success", true);
                MethodCall call = new MethodCall(MethodChannelConstant.MX_FLUTTER_JS_ENGINE_INIT_SUCCESS_HANDLER, arg);
                MXFlutterPlugin.get().getMxEngine().jsFlutterMainChannel.invokeMethod(call.method, call.arguments);
            }
        });
    }
}

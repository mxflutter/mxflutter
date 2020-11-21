//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework;

import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.common.JsLoadErrorMsg;
import com.mojitox.mxflutter.framework.constants.MethodChannelConstant;
import com.mojitox.mxflutter.framework.constants.ApiName;
import com.mojitox.mxflutter.framework.constants.Const;
import com.mojitox.mxflutter.framework.constants.JsObjectType;
import com.mojitox.mxflutter.framework.constants.MxConfig;
import com.mojitox.mxflutter.framework.ffi.MxFlutterFfi;
import com.mojitox.mxflutter.framework.runtime.InvokeJSValueCallback;
import com.mojitox.mxflutter.framework.utils.LogUtilsKt;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StringCodec;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class JsFlutterApp {

    public static final String TAG = "MXJSFlutterApp";
    private String rootPath;

    private boolean isJsAPPRun;
    private JsFlutterApp currentApp;

    //mx框架native侧加载main.js耗时
    private long mxNativeJSLoadCost;

    MethodChannel jsFlutterAppChannel;
    BasicMessageChannel<String> jsFlutterAppRebuildChannel;
    BasicMessageChannel<String> jsFlutterAppNavigatorPushChannel;

    private ArrayList<MethodCall> callJSMethodQueue;

    public JsFlutterApp() {
        setUpChannel(MXFlutterPlugin.get().getFlutterEngine());
        this.rootPath = MxConfig.getJsPath();
        callJSMethodQueue = new ArrayList<>(1);
    }

    public JsFlutterApp initWithAppName(Map flutterAppEnvironmentInfo) {
        setFlutterAppEnvironmentInfo(flutterAppEnvironmentInfo);
        currentApp = this;
        new MxFlutterFfi();
        return this;
    }

    private void setFlutterAppEnvironmentInfo(Map flutterAppEnvironmentInfo) {
        MXFlutterPlugin.get().getJsExecutor().registerGlobalObject("mx_flutterAppEnvironmentInfo", flutterAppEnvironmentInfo);
    }

    //flutter --> js
    void setUpChannel(BinaryMessenger flutterViewController) {
        jsFlutterAppChannel = new MethodChannel(flutterViewController, MethodChannelConstant.MXFLUTTER_METHED_CHANNEL_APP);
        jsFlutterAppChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                if (currentApp == null)
                    return;

                if (methodCall.method.equals("callJS")) {
                    if (!isJsAPPRun) {
                        LogUtilsKt.MXJSFlutterLog("MXJSFlutter : jsFlutterAppChannel callJS:%s JSAPP not running", (String) ((Map) methodCall.arguments).get("method"));
                        MethodCall tempMethodCall = new MethodCall(ApiName.NATIVE_CALL_METHOD, (Map) methodCall.arguments);
                        callJSMethodQueue.add(tempMethodCall);
                        return;
                    }
                    MXFlutterPlugin
                            .get().getJsExecutor()
                            .invokeJSValue(JsObjectType.CURRENT_APP_OBJECT, ApiName.NATIVE_CALL_METHOD,
                                    (Map) methodCall.arguments, new InvokeJSValueCallback() {
                                        @Override
                                        public void onSuccess(Object value) {
                                            result.success(value == null ? "" : value.toString());
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
        jsFlutterAppRebuildChannel = new BasicMessageChannel<>(flutterViewController, MethodChannelConstant.MXFLUTTER_METHED_CHANNEL_APP_REBUILD, StringCodec.INSTANCE);
        // navigator_push方法采用BasicMessageChannel
        jsFlutterAppNavigatorPushChannel = new BasicMessageChannel<>(flutterViewController, MethodChannelConstant.MXFLUTTER_METHED_CHANNEL_APP_NAVIGATOR_PUSH, StringCodec.INSTANCE);
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

    public void close() {
        MXFlutterPlugin.get().getJsExecutor().close();
    }

    public void runApp() {
        isJsAPPRun = false;
        runAppWithPageName();
    }

    public void runAppWithPageName() {
        MXFlutterPlugin.get().getJsExecutor().registerMxNativeJsFlutterApp();

        // 记录native侧main.js加载开始时间
        long jsLoadStartTime = System.currentTimeMillis();
        final String mainJsPath = rootPath + Const.MAIN_JS;
        MXFlutterPlugin.get().getJsExecutor().executeScriptPath(mainJsPath, new InvokeJSValueCallback() {
            @Override
            public void onSuccess(Object value) {
                isJsAPPRun = true;
                callJSMethodCallQueue();

                // 记录native侧main.js加载开始时间
                mxNativeJSLoadCost = System.currentTimeMillis() - jsLoadStartTime;


                callJSInitProfileInfo();
            }

            @Override
            public void onError(Error error) {
                JsLoadErrorMsg.INSTANCE.invokeJsErrorMethodChannel(error, mainJsPath);
            }
        });
    }

    private void callJSMethodCallQueue() {
        for (MethodCall call : callJSMethodQueue) {
            MXFlutterPlugin.get().getJsExecutor()
                    .invokeJSValue(JsObjectType.CURRENT_APP_OBJECT, call.method, (Map) call.arguments,
                            new InvokeJSValueCallback() {
                                @Override
                                public void onSuccess(Object value) {

                                }

                                @Override
                                public void onError(Error error) {

                                }
                            });
        }
        callJSMethodQueue.clear();
    }

    public void callJSInitProfileInfo() {
        Map<String, Object> args = new HashMap<>();
        args.put("method", "nativeCallInitProfileInfo");
        Map<String, Object> arguments = new HashMap<>();
        arguments.put("mxNativeJSLoadCost", mxNativeJSLoadCost);
        args.put("arguments", arguments);
        MethodCall methodCall = new MethodCall(ApiName.NATIVE_CALL_METHOD, args);
        if (!isJsAPPRun) {
            callJSMethodQueue.add(methodCall);
            return;
        }
        MXFlutterPlugin.get().getJsExecutor()
                .invokeJSValue(JsObjectType.CURRENT_APP_OBJECT, methodCall.method,
                        (Map) methodCall.arguments, new InvokeJSValueCallback() {
                            @Override
                            public void onSuccess(Object value) {

                            }

                            @Override
                            public void onError(Error error) {

                            }
                        });
    }
}

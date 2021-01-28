//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.callback.ExecuteScriptCallback;
import com.mojitox.mxflutter.framework.callback.InvokeJSValueCallback;
import com.mojitox.mxflutter.framework.constants.ApiName;
import com.mojitox.mxflutter.framework.constants.MethodChannelConstant;
import com.mojitox.mxflutter.framework.constants.MxConfig;
import com.mojitox.mxflutter.framework.executor.JsTask;
import com.mojitox.mxflutter.framework.executor.TaskName;
import com.mojitox.mxflutter.framework.executor.UiThread;
import com.mojitox.mxflutter.framework.js.JsEngineLoader;
import com.mojitox.mxflutter.framework.utils.MxLog;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StringCodec;
import java.util.HashMap;
import java.util.Map;
import java.util.TimerTask;

public class JsFlutterEngine {

    public static final String TAG = "MXJSFlutterEngine";

    public MethodChannel jsFlutterMainChannel;
    BasicMessageChannel<String> jsFlutterCommonBasicChannel;

    public JsFlutterEngine() {
        setupChannel();
    }

    private void setupChannel() {
        jsFlutterMainChannel = new MethodChannel(MXFlutterPlugin.get().getBinaryMessenger(),
                MethodChannelConstant.FLUTTER_METHOD_CHANNEL_NAME);
        jsFlutterMainChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(@NonNull MethodCall methodCall, @NonNull MethodChannel.Result result) {
                switch (methodCall.method) {
                    case MethodChannelConstant.CALL_NATIVE_RUN_JS_APP:
                        Map flutterAppEnvironmentInfo = (Map) methodCall
                                .argument("flutterAppEnvironmentInfo");
                        MxConfig.setJsAppPath(methodCall);
                        runApp(flutterAppEnvironmentInfo);
                        result.success("success");
                        break;
                    case MethodChannelConstant.CALL_JS_CALLBACK_FUNCTION:
                        String jsAppName = methodCall.argument("callbackId");
                        Map param = methodCall.argument("param");
                        JsEngineLoader.getInstance().getJsEngine().callJSCallbackFunction(jsAppName, param);
                        result.success("success");
                        break;
                    case MethodChannelConstant.MX_LOG:
                        MxLog.w(TAG, methodCall.arguments.toString());
                        break;
                    default:
                        break;
                }
            }
        });

        jsFlutterCommonBasicChannel = new BasicMessageChannel<>(MXFlutterPlugin.get().getBinaryMessenger(),
                MethodChannelConstant.FLUTTER_COMMON_BASIC_CHANNEL_NAME, StringCodec.INSTANCE);
        jsFlutterCommonBasicChannel.setMessageHandler(new BasicMessageChannel.MessageHandler<String>() {
            @Override
            public void onMessage(String message, @NonNull BasicMessageChannel.Reply<String> reply) {
                invokeJsCommonChannel(message, new InvokeJSValueCallback() {
                    @Override
                    public void onSuccess(@Nullable Object value) {
                        final String result = value == null ? "" : value.toString();
                        UiThread.postAtFrontOfQueue(new TimerTask() {
                            @Override
                            public void run() {
                                reply.reply(result);
                            }
                        });
                    }

                    @Override
                    public void onError(Error error) {

                    }
                });
            }
        });
    }

    /**
     * 调用js通用通道
     */
    public void invokeJsCommonChannel(String message, @Nullable InvokeJSValueCallback jsValueCallback) {
        MXFlutterPlugin.get().getJsExecutor()
                .invokeJSValue(ApiName.METHOD_INVOKE_JS_COMMON_CHANNEL, message, jsValueCallback);
    }

    public void destroy() {
        if (MXFlutterPlugin.get().getCurrentApp() != null) {
            MXFlutterPlugin.get().getCurrentApp().close();
        }
    }


    public void runApp(Map flutterAppEnvironmentInfo) {
        MXFlutterPlugin.get().getCurrentApp().runApp(flutterAppEnvironmentInfo);
    }

    public void callFlutterReloadAppWithJSWidgetData(String widgetData) {
        callFlutterReloadAppWithRouteName("MXJSWidget", widgetData);
    }

    public void callFlutterReloadAppWithRouteName(String routeName, String widgetData) {
        UiThread.post(new JsTask() {
            @Override
            protected void execute() {
                if (routeName == null || widgetData == null) {
                    return;
                }
                Map<String, String> arg = new HashMap<>();
                arg.put("routeName", routeName);
                arg.put("widgetData", widgetData);
                MethodCall call = new MethodCall("reloadApp", arg);
                jsFlutterMainChannel.invokeMethod(call.method, call.arguments);
            }
        }.setTaskName(TaskName.CALL_FLUTTER_RELOAD_APP));
    }

    /**
     * 顶层通用通道
     */
    public void invokeFlutterCommonChannel(String callJson, BasicMessageChannel.Reply<String> reply) {
        UiThread.post(new JsTask() {
            @Override
            protected void execute() {
                jsFlutterCommonBasicChannel.send(callJson, reply);
            }
        }.setTaskName(TaskName.CALL_FLUTTER_COMMON_CHANNEL));
    }

    public void callFlutterMethodChannelInvoke(String channelName, String methodName, Map params,
            MethodChannel.Result callback) {
        UiThread.post(new JsTask() {
            @Override
            protected void execute() {
                Map<String, Object> arg = new HashMap<>();
                arg.put("channelName", channelName);
                arg.put("params", params);
                arg.put("methodName", methodName);
                MethodCall call = new MethodCall(MethodChannelConstant.FLUTTER_BRIDGE_METHOD_CHANNEL_INVOKE, arg);
                jsFlutterMainChannel.invokeMethod(call.method, call.arguments, callback);
            }
        }.setTaskName(TaskName.CALL_FLUTTER_METHOD_CHANNEL_INVOKE));
    }

    public void callFlutterEventChannelReceiveBroadcastStreamListenInvoke(String channelName, String streamParam,
            String onDataId, String onErrorId, String onDoneId, boolean cancelOnError) {
        UiThread.post(new JsTask() {
            @Override
            protected void execute() {
                Map<String, Object> arg = new HashMap<>();
                arg.put("channelName", channelName);
                arg.put("streamParam", streamParam);
                arg.put("onDataId", onDataId);
                arg.put("onErrorId", onErrorId);
                arg.put("onDoneId", onDoneId);
                arg.put("cancelOnError", cancelOnError);
                MethodCall call = new MethodCall(
                        MethodChannelConstant.FLUTTER_BRIDGE_EVENT_CHANNEL_RECEIVE_BROADCAST_INVOKE, arg);
                jsFlutterMainChannel.invokeMethod(call.method, call.arguments);
            }
        }.setTaskName(TaskName.CALL_FLUTTER_EVENT));
    }

    @Keep
    public void callJSMethodCallHandler(String channelName, MethodCall methodCall,
            ExecuteScriptCallback callback) {
        JsEngineLoader.getInstance().getJsEngine()
                .callJSCallbackFunctionWithChannelName(channelName, methodCall, callback);
    }
}

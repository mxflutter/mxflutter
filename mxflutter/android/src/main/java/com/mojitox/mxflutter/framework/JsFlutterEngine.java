//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework;

import androidx.annotation.Keep;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.constants.MethodChannelConstant;
import com.mojitox.mxflutter.framework.constants.MxConfig;
import com.mojitox.mxflutter.framework.executor.JsTask;
import com.mojitox.mxflutter.framework.executor.TaskName;
import com.mojitox.mxflutter.framework.executor.UiThread;
import com.mojitox.mxflutter.framework.runtime.ExecuteScriptCallback;
import com.mojitox.mxflutter.framework.runtime.InvokeJSValueCallback;
import io.flutter.Log;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StringCodec;
import java.util.HashMap;
import java.util.Map;
import java.util.TimerTask;
import org.jetbrains.annotations.NotNull;

public class JsFlutterEngine {

    public static final String TAG = "MXJSFlutterEngine";

    public MethodChannel jsFlutterMainChannel;
    BasicMessageChannel<String> jsFlutterCommonBasicChannel;

    public JsFlutterEngine() {
        setupChannel();
    }

    public void setupChannel() {
        jsFlutterMainChannel = new MethodChannel(MXFlutterPlugin.get().getFlutterEngine(),
                MethodChannelConstant.FLUTTER_METHED_CHANNEL_NAME);
        jsFlutterMainChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
                if (methodCall.method.equals("callNativeRunJSApp")) {
                    Map flutterAppEnvironmentInfo = (Map) methodCall
                            .argument("flutterAppEnvironmentInfo");
                    MxConfig.setJsAppPath(methodCall);
                    runApp(flutterAppEnvironmentInfo);
                    result.success("success");
                } else if (methodCall.method.equals("callJsCallbackFunction")) {
                    String jsAppName = methodCall.argument("callbackId");
                    Map param = methodCall.argument("param");
                    MXFlutterPlugin.get().getJsEngine().callJSCallbackFunction(jsAppName, param);
                    result.success("success");
                } else if (methodCall.method.equals("mxLog")) {
                    Log.i(TAG, methodCall.arguments.toString());
                }
            }
        });

        jsFlutterCommonBasicChannel = new BasicMessageChannel<>(MXFlutterPlugin.get().getFlutterEngine(),
                MethodChannelConstant.FLUTTER_COMMON_BASIC_CHANNEL_NAME, StringCodec.INSTANCE);
        jsFlutterCommonBasicChannel.setMessageHandler(new BasicMessageChannel.MessageHandler<String>() {
            @Override
            public void onMessage(String message, BasicMessageChannel.Reply<String> reply) {
                setupChannelMessageHandler(message, reply);

            }
        });
    }

    public void setupChannelMessageHandler(String message, BasicMessageChannel.Reply<String> reply) {

        MXFlutterPlugin.get().getJsExecutor()
                .invokeJSValue("mxfJSBridgeInvokeJSCommonChannel", message,
                        new InvokeJSValueCallback() {
                            @Override
                            public void onSuccess(Object value) {
                                UiThread.postAtFrontOfQueue(new TimerTask() {
                                    @Override
                                    public void run() {
                                        reply.reply(value.toString());
                                    }
                                });
                            }

                            @Override
                            public void onError(Error error) {

                            }
                        });
    }

    public void destroy() {
        if (MXFlutterPlugin.get().getCurrentApp() != null) {
            MXFlutterPlugin.get().getCurrentApp().close();
        }
    }


    public void runApp(Map flutterAppEnvironmentInfo) {
        MXFlutterPlugin.get().getCurrentApp().initWithAppName(flutterAppEnvironmentInfo);
        MXFlutterPlugin.get().getCurrentApp().runAppWithPageName();
    }

    public void callFlutterReloadAppWithJSWidgetData(String widgetData) {
        callFlutterReloadAppWithRouteName("MXJSWidget", widgetData);
    }

    @SuppressWarnings("unchecked")
    public void callFlutterReloadAppWithRouteName(String routeName, String widgetData) {
        UiThread.post(new JsTask() {
            @Override
            protected void execute() {
                if (routeName == null || widgetData == null) {
                    return;
                }
                Map arg = new HashMap();
                arg.put("routeName", routeName);
                arg.put("widgetData", widgetData);
                MethodCall call = new MethodCall("reloadApp", arg);
                jsFlutterMainChannel.invokeMethod(call.method, call.arguments);
            }
        }.setTaskName(TaskName.CALL_FLUTTER_RELOAD_APP));
    }

    //顶层通用通道
    @SuppressWarnings("unchecked")
    public void invokeFlutterCommonChannel(String callJSONStr, BasicMessageChannel.Reply<String> Reply) {
        UiThread.post(new JsTask() {
            @Override
            protected void execute() {
                jsFlutterCommonBasicChannel.send(callJSONStr, Reply);
            }
        }.setTaskName(TaskName.CALL_FLUTTER_COMMON_CHANNEL));
    }

    @SuppressWarnings("unchecked")
    public void callFlutterMethodChannelInvoke(String channelName, String methodName, Map params,
            MethodChannel.Result callback) {
        UiThread.post(new JsTask() {
            @Override
            protected void execute() {
                Map arg = new HashMap();
                arg.put("channelName", channelName);
                arg.put("params", params);
                arg.put("methodName", methodName);
                MethodCall call = new MethodCall("mxflutterBridgeMethodChannelInvoke", arg);
                jsFlutterMainChannel.invokeMethod(call.method, call.arguments, callback);
            }
        }.setTaskName(TaskName.CALL_FLUTTER_METHOD_CHANNEL_INVOKE));
    }

    @SuppressWarnings("unchecked")
    public void callFlutterEventChannelReceiveBroadcastStreamListenInvoke(String channelName, String streamParam,
            String onDataId, String onErrorId, String onDoneId, boolean cancelOnError) {
        UiThread.post(new JsTask() {
            @Override
            protected void execute() {
                Map arg = new HashMap();
                arg.put("channelName", channelName);
                arg.put("streamParam", streamParam);
                arg.put("onDataId", onDataId);
                arg.put("onErrorId", onErrorId);
                arg.put("onDoneId", onDoneId);
                arg.put("cancelOnError", cancelOnError);
                MethodCall call = new MethodCall("mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke", arg);
                jsFlutterMainChannel.invokeMethod(call.method, call.arguments);
            }
        }.setTaskName(TaskName.CALL_FLUTTER_EVENT));
    }

    @Keep
    public void callJSMethodCallHandler(String channelName, MethodCall methodCall,
            ExecuteScriptCallback callback) {
        MXFlutterPlugin.get().getJsEngine().callJSCallbackFunctionWithChannelName(channelName, methodCall, callback);
    }
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework;

import com.eclipsesource.v8.V8Object;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.common.JsConstant;
import com.mojitox.mxflutter.framework.common.JsLoadErrorMsg;
import com.mojitox.mxflutter.framework.common.MethodChannelConstant;
import com.mojitox.mxflutter.framework.constants.MxConfig;
import com.mojitox.mxflutter.framework.executor.JsTask;
import com.mojitox.mxflutter.framework.executor.TaskName;
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

    private boolean isJSAPPRun;
    private JsFlutterApp currentApp;
    private V8Object jsAppObj;

    //mx框架native侧加载main.js耗时
    private long mxNativeJSLoadCost;

    MethodChannel jsFlutterAppChannel;
    BasicMessageChannel<String> jsFlutterAppRebuildChannel;
    BasicMessageChannel<String> jsFlutterAppNavigatorePushChannel;

    private ArrayList<MethodCall> callJSMethodQueue;

    public JsFlutterApp() {
        setUpChannel(MXFlutterPlugin.get().mFlutterPluginBinding.getBinaryMessenger());
        this.rootPath = MxConfig.getJsPath();
        callJSMethodQueue = new ArrayList<>(1);
    }

    public JsFlutterApp initWithAppName(Map<String, Boolean> flutterAppEnvironmentInfo) {
        setFlutterAppEnvironmentInfo(flutterAppEnvironmentInfo);

        currentApp = this;
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
                    if (!isJSAPPRun) {
                        LogUtilsKt.MXJSFlutterLog("MXJSFlutter : jsFlutterAppChannel callJS:%s JSAPP not running", (String) ((Map) methodCall.arguments).get("method"));
                        MethodCall tempMethodCall = new MethodCall("nativeCall", (Map) methodCall.arguments);
                        callJSMethodQueue.add(tempMethodCall);
                        return;
                    }
                    if (jsAppObj != null) {
                        MXFlutterPlugin
                                .get().getJsExecutor().invokeJSValue(jsAppObj, "nativeCall", (Map) methodCall.arguments, new JsExecutor.InvokeJSValueCallback() {
                            @Override
                            public void onSuccess(Object value) {
                                result.success(value.toString());
                            }

                            @Override
                            public void onError(Error error) {
                                result.error(error.toString(), null, null);
                                JsLoadErrorMsg.INSTANCE.invokeJsErrorMethodChannel(error, "");
                            }
                        });
                    }
                }
            }
        });

        // Rebuild方法采用BasicMessageChannel
        jsFlutterAppRebuildChannel = new BasicMessageChannel<>(flutterViewController, MethodChannelConstant.MXFLUTTER_METHED_CHANNEL_APP_REBUILD, StringCodec.INSTANCE);
        // navigator_push方法采用BasicMessageChannel
        jsFlutterAppNavigatorePushChannel = new BasicMessageChannel<>(flutterViewController, MethodChannelConstant.MXFLUTTER_METHED_CHANNEL_APP_NAVIGATOR_PUSH, StringCodec.INSTANCE);
    }


    public void close() {
        MXFlutterPlugin.get().getJsExecutor().execute(new JsTask() {
            public void execute() {
                //todo app release
                JsModule.clearModuleCache(MXFlutterPlugin.get().getRuntime());
                if (jsAppObj != null) {
                    jsAppObj.close();
                }
            }
        });
        MXFlutterPlugin.get().getJsExecutor().close();
    }

    public void runApp() {
        isJSAPPRun = false;
        runAppWithPageName();
    }

    public void runAppWithPageName() {
        MXFlutterPlugin.get().getJsExecutor().execute(new JsTask() {
            public void execute() {
                MXNativeJSFlutterApp MXNativeJSFlutterApp = new MXNativeJSFlutterApp();
                V8Object v8Object = new V8Object(MXFlutterPlugin.get().getRuntime());
                MXFlutterPlugin.get().getRuntime().add("MXNativeJSFlutterApp", v8Object);
                v8Object.registerJavaMethod(MXNativeJSFlutterApp, "setCurrentJSApp",
                        "setCurrentJSApp", new Class<?>[]{V8Object.class});
                v8Object.registerJavaMethod(MXNativeJSFlutterApp,
                        "callFlutterReloadApp", "callFlutterReloadApp", new Class<?>[]{V8Object.class, String.class});
                v8Object.registerJavaMethod(MXNativeJSFlutterApp,
                        "callFlutterWidgetChannel", "callFlutterWidgetChannel", new Class<?>[]{String.class, String.class});
            }
        }.setTaskName(TaskName.RUN_APP_PAGE_NAME));

        // 记录native侧main.js加载开始时间
        long jsLoadStartTime = System.currentTimeMillis();
        final String mainJsPath = rootPath + JsConstant.MAIN_JS;
        MXFlutterPlugin.get().getJsExecutor().executeScriptPath(mainJsPath, new JsExecutor.InvokeJSValueCallback() {
            @Override
            public void onSuccess(Object value) {
                isJSAPPRun = true;
                // 记录native侧main.js加载开始时间
                mxNativeJSLoadCost = System.currentTimeMillis() - jsLoadStartTime;
                callJSMethodCallQueqe();
                // 通知JS侧，框架加载时间
                currentApp.callJSInitProfileInfo();
            }

            @Override
            public void onError(Error error) {
                JsLoadErrorMsg.INSTANCE.invokeJsErrorMethodChannel(error, mainJsPath);
            }
        });
    }

    private void callJSMethodCallQueqe() {
        for (MethodCall call : callJSMethodQueue) {
            MXFlutterPlugin.get().getJsExecutor().invokeJSValue(jsAppObj, call.method, (Map) call.arguments, new JsExecutor.InvokeJSValueCallback() {
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
        MethodCall methodCall = new MethodCall("nativeCall", args);
        if (!isJSAPPRun) {
            callJSMethodQueue.add(methodCall);
            return;
        }
        MXFlutterPlugin.get().getJsExecutor().invokeJSValue(jsAppObj, methodCall.method, (Map) methodCall.arguments, new JsExecutor.InvokeJSValueCallback() {
            @Override
            public void onSuccess(Object value) {

            }

            @Override
            public void onError(Error error) {

            }
        });
    }

    //js 注入对象
    class MXNativeJSFlutterApp {

        //js --> native
        public void setCurrentJSApp(V8Object jsApp) {
            jsAppObj = jsApp.twin();
        }

        //js --> flutter
        public void callFlutterReloadApp(V8Object jsApp, String widgetData) {
            jsAppObj = jsApp.twin();

            MXFlutterPlugin.get().getMainHandler().post(new Runnable() {
                @Override
                public void run() {
                    MXFlutterPlugin.get().getMxEngine().callFlutterReloadAppWithJSWidgetData(widgetData);
                }
            });
        }

        //js --> flutter
        public void callFlutterWidgetChannel(String methodName, String args) {
//            String[] datas = args.getKeys();
//            HashMap dataMap =  new HashMap();
//            for (int i = 0; i < datas.length; i++) {
//                dataMap.put(datas[i],args.get(datas[i]));
//            }
            MXFlutterPlugin.get().getMainHandler().post(new Runnable() {
                @Override
                public void run() {
                    if (methodName.equals("rebuild")) {
                        jsFlutterAppRebuildChannel.send(args);
                    } else if (methodName.equals("navigatorPush")) {
                        jsFlutterAppNavigatorePushChannel.send(args);
                    } else {
                        jsFlutterAppChannel.invokeMethod(methodName, args);
                    }
                }
            });
        }
    }
}

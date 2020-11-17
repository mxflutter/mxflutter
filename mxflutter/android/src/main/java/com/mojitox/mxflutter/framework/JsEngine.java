//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.eclipsesource.v8.JavaCallback;
import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Function;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.utils.V8ObjectUtils;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.common.JsLoadErrorMsg;
import com.mojitox.mxflutter.framework.common.MethodChannelConstant;
import com.mojitox.mxflutter.framework.executor.JsTask;
import com.mojitox.mxflutter.framework.runtime.Console;
import com.mojitox.mxflutter.framework.utils.FileUtils;
import com.mojitox.mxflutter.framework.utils.LogUtilsKt;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.Map;

public class JsEngine {

    private static String TAG = "MXJSEngine";
    private HashMap<String, V8Function> jsCallbackCache;
    private long jsCallbackCount = 0;

    public JsEngine() {
        setup();
    }

    private void setup() {
        jsCallbackCache = new HashMap<String, V8Function>();
        setupBasicJSRuntime();
    }

    private void registerConsoleLog() {
        MXFlutterPlugin.get().getJsExecutor().execute(new JsTask() {
            @Override
            protected void execute() {
                Console console = new Console();
                V8Object v8Console = new V8Object(MXFlutterPlugin.get().getRuntime());
                MXFlutterPlugin.get().getRuntime().add("console", v8Console);
                v8Console.registerJavaMethod(console, "log", "log", new Class[]{String.class});
                v8Console.registerJavaMethod(console, "error", "error", new Class[]{String.class});
            }
        });
    }

    private void setupBasicJSRuntime() {
        JsExecutor jsExecutor = MXFlutterPlugin.get().getJsExecutor();
        registerConsoleLog();

        //------Dart2Js支持------
        JavaVoidCallback nativePrint = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 1);
                Log.d(TAG, args.get(0).toString());
            }
        };
        jsExecutor.registerJavaMethod(nativePrint, "nativePrint");

        JavaVoidCallback dartPrint = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 1);

                Log.d(TAG, args.get(0).toString());
            }
        };
        jsExecutor.registerJavaMethod(dartPrint, "dartPrint");

        JavaVoidCallback setTimeout = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                final V8Array local_args = args.twin();
                assetJsFunctionArg(args.length(), 2);

                jsExecutor.executeDelay(new JsTask() {
                    public void execute() {
                        V8Function function = (V8Function) local_args.get(0);
                        jsExecutor.invokeJsFunction(function, null);
                    }
                }, Long.parseLong(local_args.get(1).toString()));
            }
        };
        jsExecutor.registerJavaMethod(setTimeout, "setTimeout");

        JavaCallback isMXIOS = new JavaCallback() {
            @Override
            public Object invoke(V8Object v8Object, V8Array args) {
                return false;
            }
        };
        jsExecutor.registerJavaMethod(isMXIOS, "isMXIOS");

        JavaCallback isMXAndroid = new JavaCallback() {
            @Override
            public Object invoke(V8Object v8Object, V8Array args) {
                return true;
            }
        };
        jsExecutor.registerJavaMethod(isMXAndroid, "isMXAndroid");
        //------Dart2Js支持------

        //------Flutter Bridge------

        /**
         * @param callJSONStr 透传字段
         * @param needNativeManagedValue JS中需要监控生命周期的对象
         * @param function 回调
         */
        JavaVoidCallback mxfJSBridgeInvokeFlutterCommonChannel = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 2);

                String callJSONStr = args.get(0).toString();
                V8Function function = (V8Function) args.get(1);
                MXFlutterPlugin.get().getMxEngine().invokeFlutterCommonChannel(callJSONStr,
                        new BasicMessageChannel.Reply<String>() {
                            @Override
                            public void reply(String result) {
                                if (result == null) {
                                    jsExecutor.invokeJsFunction(function, null);
                                } else if (result instanceof String) {
                                    jsExecutor.invokeJsFunctionWithString(function, result);
                                } else {
                                    throw new IllegalArgumentException(
                                            "BasicMessageChannel.Reply Must be return String object");
                                }
                            }
                        });

            }
        };
        jsExecutor.registerJavaMethod(mxfJSBridgeInvokeFlutterCommonChannel,
                "mxfJSBridgeInvokeFlutterCommonChannel");

        /**
         * @param channelName 通道名
         * @param methodName 方法名
         * @param params 参数
         * @param function 回调
         */
        JavaVoidCallback mx_jsbridge_MethodChannel_invokeMethod = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 4);

                String channelName = args.get(0).toString();
                String methodName = args.get(1).toString();
                Map params = V8ObjectUtils.toMap((V8Object) args.get(2));
                V8Function function = (V8Function) args.get(3);
                MXFlutterPlugin
                        .get().getMxEngine().callFlutterMethodChannelInvoke(channelName, methodName, params,
                        new MethodChannel.Result() {
                            @Override
                            public void success(@Nullable Object result) {
                                if (result == null) {
                                    jsExecutor.invokeJsFunction(function, null);
                                } else if (result instanceof Map) {
                                    jsExecutor.invokeJsFunction(function, (Map) result);
                                } else {
                                    throw new IllegalArgumentException(
                                            "MethodChannel.Result Must be return Map object");
                                }
                            }

                            @Override
                            public void error(String errorCode, @Nullable String errorMessage,
                                              @Nullable Object errorDetails) {
                            }

                            @Override
                            public void notImplemented() {
                            }
                        });
            }
        };
        jsExecutor.registerJavaMethod(mx_jsbridge_MethodChannel_invokeMethod,
                "mx_jsbridge_MethodChannel_invokeMethod");

        /**
         * @param channelName 通道名
         * @param function 回调
         */
        JavaVoidCallback mx_jsbridge_MethodChannel_setMethodCallHandler = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 2);

                String channelName = args.get(0).toString();
                V8Function function = (V8Function) args.get(1);
                jsCallbackCache.put(channelName, function);
            }
        };
        jsExecutor.registerJavaMethod(mx_jsbridge_MethodChannel_setMethodCallHandler, "mx_jsbridge_MethodChannel_setMethodCallHandler");

        /**
         * @param channelName 通道名
         * @param streamParam receiveBroadcastStream参数
         * @param onData 回调
         * @param onError 回调
         * @param onDone 回调
         * @param cancelOnError boolean
         */
        JavaVoidCallback mx_jsbridge_EventChannel_receiveBroadcastStream_listen = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 6);

                String channelName = args.get(0).toString();
                String streamParam = args.get(1).toString();
                V8Function onData = (V8Function) args.get(2);
                V8Function onError = (V8Function) args.get(3);
                V8Function onDone = (V8Function) args.get(4);
                boolean cancelOnError = (boolean) args.get(5);
                String onDataId = storeJsCallback(onData);
                String onErrorId = storeJsCallback(onError);
                String onDoneId = storeJsCallback(onDone);
                MXFlutterPlugin.get().getMxEngine()
                        .callFlutterEventChannelReceiveBroadcastStreamListenInvoke(channelName,
                                streamParam, onDataId, onErrorId, onDoneId, cancelOnError);
            }
        };
        jsExecutor.registerJavaMethod(mx_jsbridge_EventChannel_receiveBroadcastStream_listen,
                "mx_jsbridge_EventChannel_receiveBroadcastStream_listen");

        //------Flutter Bridge------
        JavaCallback require = new JavaCallback() {
            @Override
            public Object invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 1);

                String filePath = args.get(0).toString();
                if (MXFlutterPlugin.get().getRuntime().contains(filePath)) {
                    return MXFlutterPlugin.get().getRuntime().getObject(filePath);
                }
                String absolutePath = FileUtils.findRequireJsPath(filePath);
                V8Object exports = null;
                if (!TextUtils.isEmpty(absolutePath)) {
                    try {
                        exports = JsModule.require(filePath, absolutePath, MXFlutterPlugin.get().getRuntime());
                    } catch (Exception e) {
                        JsLoadErrorMsg.INSTANCE
                                .invokeJsErrorMethodChannel(new Error("require js file fail", e), filePath);
                    }
                    if (exports == null) {
                        jsExecutor.executeScript("throw 'not found'", new JsExecutor.InvokeJSValueCallback() {
                            @Override
                            public void onSuccess(Object value) {

                            }

                            @Override
                            public void onError(Error error) {
                                JsLoadErrorMsg.INSTANCE.invokeJsErrorMethodChannel(error, filePath);
                            }
                        });
                        return null;
                    }
                } else {
                    LogUtilsKt.MXFLogError(
                            "MXJSFlutter : require js file fail, import js file name: %s",
                            filePath);
                }
                return exports;
            }
        };
        jsExecutor.registerJavaMethod(require, "require");

        jsExecutor.execute(new JsTask() {
            public void execute() {
                JsModule.initGlobalModuleCache(MXFlutterPlugin.get().getRuntime());
            }
        });
    }

    private String storeJsCallback(V8Function v8Function) {
        String callbackId = "jsCallback_" + jsCallbackCount++;
        jsCallbackCache.put(callbackId, v8Function);
        return callbackId;
    }

    private V8Function getJsCallBackWithCallbackId(String callbackId) {
        if (TextUtils.isEmpty(callbackId)) {
            return null;
        }
        return jsCallbackCache.get(callbackId);
    }

    public void callJSCallbackFunction(String callbackId, Map params) {
        V8Function callback = getJsCallBackWithCallbackId(callbackId);
        if (callback != null) {
            MXFlutterPlugin.get().getJsExecutor().invokeJsFunction(callback, params);
        }
    }

    private void assetJsFunctionArg(int argSize, int legalSize) {
        if (argSize < legalSize) {
            throw new IllegalArgumentException("Argument size not currect");
        }
    }

    public void callJSCallbackFunctionWithChannelName(String channelName, MethodCall methodCall, JsExecutor.ExecuteScriptCallback callback) {
        V8Function v8Callback = jsCallbackCache.get(channelName);
        if (v8Callback != null) {
            Map<String, Object> params = new HashMap<>();
            params.put("method", methodCall.method);
            params.put("arguments", methodCall.arguments);
            MXFlutterPlugin.get().getJsExecutor().invokeJsFunction(v8Callback, params, callback);
        }
    }
}

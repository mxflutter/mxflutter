//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework.js.v8;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.eclipsesource.v8.JavaCallback;
import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Function;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.utils.V8ObjectUtils;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.common.JsLoadErrorMsg;
import com.mojitox.mxflutter.framework.constants.ApiName;
import com.mojitox.mxflutter.framework.constants.JsObjectType;
import com.mojitox.mxflutter.framework.executor.JsTask;
import com.mojitox.mxflutter.framework.js.BaseJsEngine;
import com.mojitox.mxflutter.framework.callback.ExecuteScriptCallback;
import com.mojitox.mxflutter.framework.callback.InvokeJSValueCallback;
import com.mojitox.mxflutter.framework.utils.FileUtils;
import com.mojitox.mxflutter.framework.utils.MxLog;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.Map;

public class V8JsEngine extends BaseJsEngine<V8JsExecutor> {

    private static final String TAG = "V8JsEngine";
    private String soPath;

    @Override
    protected void initEngine() {
        //Todo So可以用宿主的，外部传递进来
        //soPath = flutterPluginBinding.getApplicationContext().getFilesDir().getAbsolutePath() + File.separator
        //        + "j2v8.so";
        setup();
    }

    @NonNull
    @Override
    protected V8JsExecutor createJsExecutor() {
        return new V8JsExecutor(soPath);
    }

    private void setup() {
        setupBasicJSRuntime();
    }

    private void registerConsoleLog() {
        getJsExecutor().execute(new JsTask() {
            @Override
            protected void execute() {
                Console console = new Console();
                V8Object v8Console = new V8Object(getJsExecutor().getRuntime());
                getJsExecutor().getRuntime().add(ApiName.CONSOLE, v8Console);
                v8Console.registerJavaMethod(console, "log", "log", new Class[]{String.class});
                v8Console.registerJavaMethod(console, "error", "error", new Class[]{String.class});
                v8Console.registerJavaMethod(console, "warn", "warn", new Class[]{String.class});
            }
        });
    }

    private void setupBasicJSRuntime() {
        V8JsExecutor jsExecutor = getJsExecutor();
        registerConsoleLog();

        //------Dart2Js支持------
        JavaVoidCallback nativePrint = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 1);
                MxLog.d(TAG, args.get(0).toString());
            }
        };
        jsExecutor.registerJavaMethod(JsObjectType.APP_OBJECT, nativePrint, ApiName.NATIVE_PRINT);

        JavaVoidCallback dartPrint = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 1);
                MxLog.d(TAG, args.get(0).toString());
            }
        };
        jsExecutor.registerJavaMethod(JsObjectType.APP_OBJECT, dartPrint, ApiName.DART_PRINT);

        JavaVoidCallback setTimeout = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                final V8Array local_args = args.twin();
                assetJsFunctionArg(args.length(), 2);

                jsExecutor.executeDelayed(new JsTask() {
                    public void execute() {
                        V8Function function = (V8Function) local_args.get(0);
                        jsExecutor.invokeJsFunction(function, null);
                    }
                }, Long.parseLong(local_args.get(1).toString()));
            }
        };
        jsExecutor.registerJavaMethod(JsObjectType.RUNTIME, setTimeout, ApiName.SET_TIME_OUT);

        JavaCallback isMXIOS = new JavaCallback() {
            @Override
            public Object invoke(V8Object v8Object, V8Array args) {
                return false;
            }
        };
        jsExecutor.registerJavaMethod(JsObjectType.APP_OBJECT, isMXIOS, "isMXIOS");

        JavaCallback isMXAndroid = new JavaCallback() {
            @Override
            public Object invoke(V8Object v8Object, V8Array args) {
                return true;
            }
        };
        jsExecutor.registerJavaMethod(JsObjectType.APP_OBJECT, isMXAndroid, "isMXAndroid");

        JavaCallback ignoreLoadBundleJs = new JavaCallback() {
            @Override
            public Object invoke(V8Object v8Object, V8Array args) {
                return false;
            }
        };
        jsExecutor.registerJavaMethod(JsObjectType.APP_OBJECT, ignoreLoadBundleJs, ApiName.IGNORE_LOAD_BUNDLE_JS);
        
        //------Dart2Js支持------
        setupFlutterBridge(jsExecutor);
        jsExecutor.execute(new JsTask() {
            public void execute() {
                V8JsModule.initGlobalModuleCache(getJsExecutor().getRuntime());
            }
        });
    }

    /**
     * flutter bridge
     */
    private void setupFlutterBridge(@NonNull V8JsExecutor jsExecutor) {
        /*
           @param callJSONStr 透传字段
         * @param function 回调
         */
        JavaVoidCallback mxfJSBridgeInvokeFlutterCommonChannel = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 2);
                String callJson = args.get(0).toString();
                V8Function function = (V8Function) args.get(1);
                MXFlutterPlugin.get().getMxEngine().invokeFlutterCommonChannel(callJson,
                        new BasicMessageChannel.Reply<String>() {
                            @Override
                            public void reply(String result) {
                                if (result == null) {
                                    jsExecutor.invokeJsFunction(function, null);
                                } else {
                                    jsExecutor.invokeJsFunction(function, result, false);
                                }
                            }
                        });

            }
        };
        jsExecutor
                .registerJavaMethod(JsObjectType.APP_OBJECT, mxfJSBridgeInvokeFlutterCommonChannel,
                        ApiName.COMMON_CHANNEL);

        /*
           @param channelName 通道名
         * @param methodName 方法名
         * @param params 参数
         * @param function 回调
         */
        JavaVoidCallback mxJsBridgeMethodChannelInvokeMethod = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 4);

                String channelName = args.get(0).toString();
                String methodName = args.get(1).toString();
                Map params = V8ObjectUtils.toMap((V8Object) args.get(2));
                V8Function function = (V8Function) args.get(3);
                MXFlutterPlugin
                        .get().getMxEngine()
                        .callFlutterMethodChannelInvoke(channelName, methodName, params,
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
                                    public void error(String errorCode,
                                            @Nullable String errorMessage,
                                            @Nullable Object errorDetails) {
                                    }

                                    @Override
                                    public void notImplemented() {
                                    }
                                });
            }
        };
        jsExecutor
                .registerJavaMethod(JsObjectType.APP_OBJECT, mxJsBridgeMethodChannelInvokeMethod,
                        ApiName.METHOD_CHANNEL_INVOKE_METHOD);

        /*
           @param channelName 通道名
         * @param function 回调
         */
        JavaVoidCallback mxJSBridgeMethodChannelSetMethodCallHandler = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 2);

                String channelName = args.get(0).toString();
                V8Function function = (V8Function) args.get(1);
                storeJsCallback(channelName, function);
            }
        };
        jsExecutor.registerJavaMethod(JsObjectType.APP_OBJECT,
                mxJSBridgeMethodChannelSetMethodCallHandler,
                ApiName.METHOD_CHANNEL_SET_METHOD_CALL);
        setupFlutterBridge1(jsExecutor);
        setSyncCallFlutterFromJsBridge(jsExecutor);
    }

    /**
     * flutter bridge
     */
    private void setupFlutterBridge1(@NonNull V8JsExecutor jsExecutor) {
        /*
           @param channelName 通道名
         * @param streamParam receiveBroadcastStream参数
         * @param onData 回调
         * @param onError 回调
         * @param onDone 回调
         * @param cancelOnError boolean
         */
        JavaVoidCallback mxJSBridgeEventChannelReceiveBroadcastStreamListen = new JavaVoidCallback() {
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
        jsExecutor.registerJavaMethod(JsObjectType.APP_OBJECT,
                mxJSBridgeEventChannelReceiveBroadcastStreamListen,
                ApiName.EVENT_CHANNEL_RECEIVE_BROADCAST);

        JavaCallback require = new JavaCallback() {
            @Override
            public Object invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 1);

                String filePath = args.get(0).toString();
                MxLog.d(TAG, "require:" + filePath);
                if (getJsExecutor().getRuntime().contains(filePath)) {
                    return getJsExecutor().getRuntime().getObject(filePath);
                }
                String absolutePath = FileUtils.findRequireJsPath(filePath);
                V8Object exports = null;
                if (!TextUtils.isEmpty(absolutePath)) {
                    try {
                        exports = V8JsModule.require(filePath, absolutePath,
                                getJsExecutor().getRuntime());
                    } catch (Exception e) {
                        JsLoadErrorMsg.INSTANCE
                                .invokeJsErrorMethodChannel(new Error("require js file fail", e),
                                        filePath);
                    }
                    if (exports == null) {
                        jsExecutor.executeScript("throw 'not found", "error", new InvokeJSValueCallback() {
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
                    MxLog.e(TAG, "require js file fail, import js file name:" + filePath);
                }
                return exports;
            }
        };
        jsExecutor.registerJavaMethod(JsObjectType.APP_OBJECT, require, ApiName.REQUIRE);
    }

    /**
     * js call flutter sync bridge
     */
    private void setSyncCallFlutterFromJsBridge(@NonNull V8JsExecutor jsExecutor) {
        JavaCallback mxJsBridgeInvokeFlutterFFIPort = new JavaCallback() {
            @Override
            public Object invoke(V8Object receiver, V8Array args) {
                MxLog.d(TAG, "setSyncCallFlutterFromJsBridge:" + args.toString());
                String callJson = args.get(0).toString();
                return MXFlutterPlugin.get().getMxFlutterFfi().callFlutterFunctionSync(callJson);
            }
        };
        jsExecutor.registerJavaMethod(JsObjectType.APP_OBJECT,
                mxJsBridgeInvokeFlutterFFIPort,
                ApiName.METHOD_JS_CALL_FLUTTER_SYNC);
    }

    @Override
    public void callJSCallbackFunction(String callbackId, Map params) {
        Object callback = getJsCallBackWithCallbackId(callbackId);
        if (callback instanceof V8Function) {
            getJsExecutor().invokeJsFunction((V8Function) callback, params);
        }
    }

    private void assetJsFunctionArg(int argSize, int legalSize) {
        if (argSize < legalSize) {
            throw new IllegalArgumentException("Argument size not correct");
        }
    }

    @Override
    public void callJSCallbackFunctionWithChannelName(String channelName, MethodCall methodCall,
            ExecuteScriptCallback callback) {
        Object function = getJsCallBackWithCallbackId(channelName);
        if (function instanceof V8Function) {
            Map<String, Object> params = new HashMap<>();
            params.put(ApiName.METHOD_KEY, methodCall.method);
            params.put(ApiName.METHOD_ARGUMENT, methodCall.arguments);
            getJsExecutor().invokeJsFunction((V8Function) function, params, true, callback);
        }
    }
}

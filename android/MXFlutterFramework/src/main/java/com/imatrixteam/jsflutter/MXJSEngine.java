//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.imatrixteam.jsflutter;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;


import com.eclipsesource.v8.JavaCallback;
import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Function;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.V8ResultUndefined;
import com.eclipsesource.v8.utils.V8ObjectUtils;
import com.imatrixteam.jsflutter.utils.FileUtils;
import com.imatrixteam.jsflutter.utils.MXJsScheduledExecutorService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import androidx.annotation.Nullable;
import io.flutter.plugin.common.MethodChannel;

public class MXJSEngine {
    static private String TAG = "MXJSEngine";

    public MXJSExecutor jsExecutor;

    private MXJSFlutterEngine mMXJSFlutterEngine;

    private ArrayList<String> searchDirArray;

    private HashMap<String, V8Function> jsCallbackCache;
    private long jsCallbackCount = 0;

    private Context mContext;

    public MXJSEngine(Context context, MXJSFlutterEngine mxjsFlutterEngine) {
        mContext = context;
        this.mMXJSFlutterEngine = mxjsFlutterEngine;
        this.searchDirArray = new ArrayList<>();
        setup();
    }

    private void setup() {
        this.jsExecutor = new MXJSExecutor(mContext);
        jsCallbackCache = new HashMap();
        setupBasicJSRuntime();
    }

    private void setupBasicJSRuntime() {

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

                jsExecutor.executeDelay(new MXJsScheduledExecutorService.MXJsTask() {
                    @Override
                    public void excute() {
                        V8Function function = (V8Function) local_args.get(0);
                        jsExecutor.invokeJsFunction(function, new HashMap());
                    }
                }, Long.parseLong(local_args.get(1).toString()));
            }
        };
        jsExecutor.registerJavaMethod(setTimeout, "setTimeout");
        //------Dart2Js支持------

        //------Flutter Bridge------

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
                mMXJSFlutterEngine.callFlutterMethodChannelInvoke(channelName, methodName, params, new MethodChannel.Result() {
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
                    public void error(String errorCode, @Nullable String errorMessage, @Nullable Object errorDetails) {
                    }

                    @Override
                    public void notImplemented() {
                    }
                });
            }
        };
        jsExecutor.registerJavaMethod(mx_jsbridge_MethodChannel_invokeMethod, "mx_jsbridge_MethodChannel_invokeMethod");

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
                mMXJSFlutterEngine.callFlutterEventChannelReceiveBroadcastStreamListenInvoke(channelName, streamParam, onDataId, onErrorId, onDoneId, cancelOnError);
            }
        };
        jsExecutor.registerJavaMethod(mx_jsbridge_EventChannel_receiveBroadcastStream_listen, "mx_jsbridge_EventChannel_receiveBroadcastStream_listen");

        /**
         */
        JavaVoidCallback mx_jsbridge_createFlutterObject = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 1);

                mMXJSFlutterEngine.callFlutterCreateFlutterObject((String) args.get(0));
            }
        };
        jsExecutor.registerJavaMethod(mx_jsbridge_createFlutterObject, "mx_jsbridge_createFlutterObject");

        /**
         */
        JavaVoidCallback mx_jsbridge_invokeWithCallback = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 2);

                String params = (String) args.get(0);
                V8Function onResult = (V8Function) args.get(1);
                String onResultId = storeJsCallback(onResult);
                mMXJSFlutterEngine.callFlutterInvokeWithCallback(params, onResultId);
            }
        };
        jsExecutor.registerJavaMethod(mx_jsbridge_invokeWithCallback, "mx_jsbridge_invokeWithCallback");
        //------Flutter Bridge------

        JavaCallback require = new JavaCallback() {
            @Override
            public Object invoke(V8Object v8Object, V8Array args) {
                assetJsFunctionArg(args.length(), 1);

                String filePath = args.get(0).toString();
                String absolutePath = null;
                boolean isFromAsset = !FileUtils.isCopiedFileFromAssets(mContext);
                if (isFromAsset) {
                    absolutePath = FileUtils.getFilePathFromAsset(mContext, filePath, searchDirArray);
                } else {
                    absolutePath = FileUtils.getFilePathFromFS(mContext, filePath, searchDirArray);
                }

                V8Object exports = null;
                if (!TextUtils.isEmpty(absolutePath)) {
                    exports = JSModule.require(filePath, absolutePath, jsExecutor.runtime, isFromAsset);
                    if (exports == null) {
                        jsExecutor.executeScript("throw 'not found'", new MXJSExecutor.ExecuteScriptCallback() {
                            @Override
                            public void onComplete(Object value) {

                            }
                        });
                        return null;
                    }
                }
                return exports;
            }
        };
        jsExecutor.registerJavaMethod(require, "require");


        jsExecutor.execute(new MXJsScheduledExecutorService.MXJsTask() {
            @Override
            public void excute() {
                JSModule.initGlobalModuleCache(jsExecutor.runtime);
            }
        });
    }

    void addSearchDir(String dir) {
        if (TextUtils.isEmpty(dir) || searchDirArray.indexOf(dir) != -1) {
            return;
        }
        searchDirArray.add(dir);
    }

    private String storeJsCallback(V8Function v8Function) {
        String callbackId = "jsCallback_" + jsCallbackCount++;
        jsCallbackCache.put(callbackId, v8Function);
        return callbackId;
    }

    private V8Function getJsCallBackWithCallbackId(String callbackId) {
        if (TextUtils.isEmpty(callbackId))
            return null;
        return jsCallbackCache.get(callbackId);
    }

    public void callJSCallbackFunction(String callbackId, Map params) {
        V8Function callback = getJsCallBackWithCallbackId(callbackId);
        if (callback != null) {
            jsExecutor.invokeJsFunction(callback, params);
        }
    }

    private void assetJsFunctionArg(int argSize, int legalSize) {
        if (argSize < legalSize) {
            throw new IllegalArgumentException(
                    "Argument size not currect");
        }
    }

}

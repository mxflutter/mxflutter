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
import com.eclipsesource.v8.V8Object;
import com.imatrixteam.jsflutter.utils.FileUtils;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class MXJSEngine {
    static private String TAG = "MXJSEngine";

    public MXJSExecutor jsExecutor;

    private MXJSFlutterEngine mMXJSFlutterEngine;

    private ArrayList<String> searchDirArray;

    private Set<String> runnedScriptFile;

    private Context mContext;

    public MXJSEngine(Context context, MXJSFlutterEngine mxjsFlutterEngine) {
        mContext = context;
        this.mMXJSFlutterEngine = mxjsFlutterEngine;
        this.searchDirArray = new ArrayList<>();
        this.runnedScriptFile = new HashSet<>();
        setup();
    }

    private void setup() {
        this.jsExecutor = new MXJSExecutor(mContext);
        setupBasicJSRuntime();
    }

    private void setupBasicJSRuntime() {

        JavaVoidCallback nativePrint = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                if (args.length() > 0) {
                    Log.i(TAG, args.get(0).toString());
                }
            }
        };
        jsExecutor.registerJavaMethod(nativePrint, "nativePrint");

        JavaVoidCallback dartPrint = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                if (args.length() > 0) {
                    Log.i(TAG, args.get(0).toString());
                }
            }
        };
        jsExecutor.registerJavaMethod(dartPrint, "dartPrint");

        JavaVoidCallback setTimeout = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                if (args.length() > 1) {
                    jsExecutor.executeDelay(new MXJSExecutor.MXJsTask() {
                        @Override
                        public void excute() {
                            v8Object.getRuntime().executeScript(args.get(1).toString() + "()");
                        }
                    }, Long.parseLong(args.get(1).toString()), TimeUnit.MILLISECONDS);
                }
            }
        };
        jsExecutor.registerJavaMethod(setTimeout, "setTimeout");

        JavaVoidCallback mx_jsbridge_MethodChannel_invokeMethod = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                if (args.length() > 3) {
                    try {
                        String channelName = args.get(0).toString();
                        String methodName = args.get(1).toString();
                        JSONObject params = new JSONObject(args.get(2).toString());
                        String function = args.get(3).toString();
                        mMXJSFlutterEngine.callFlutterMethodChannelInvoke(channelName, methodName, params, new MXJSFlutterEngine.JsMethodChannelCallback() {
                            @Override
                            public void callback() {
                                //todo
                            }
                        });
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        };
        jsExecutor.registerJavaMethod(mx_jsbridge_MethodChannel_invokeMethod, "mx_jsbridge_MethodChannel_invokeMethod");

        JavaVoidCallback mx_jsbridge_EventChannel_receiveBroadcastStream_listen = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                if (args.length() > 0) {
                    //todo
                }
            }
        };
        jsExecutor.registerJavaMethod(mx_jsbridge_EventChannel_receiveBroadcastStream_listen, "mx_jsbridge_EventChannel_receiveBroadcastStream_listen");

        JavaCallback require = new JavaCallback() {
            @Override
            public Object invoke(V8Object v8Object, V8Array args) {
                if (args.length() > 0) {
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
                return null;
            }
        };
        jsExecutor.registerJavaMethod(require, "require");


        jsExecutor.execute(new MXJSExecutor.MXJsTask() {
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

}

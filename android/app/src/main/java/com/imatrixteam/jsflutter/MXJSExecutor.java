package com.imatrixteam.jsflutter;

import com.eclipsesource.v8.JavaCallback;
import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Object;

import android.app.Activity;
import android.content.Context;

import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.utils.V8ObjectUtils;

import org.json.JSONObject;

import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;


public class MXJSExecutor {
    public V8 runtime;

    private Executor executor;

    public Context context;


    public MXJSExecutor(Context context) {
        this.context = context;
        this.executor = Executors.newSingleThreadExecutor();
        setup();
    }


    public void execute(Runnable action) {
        try {
            executor.execute(action);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setup() {
        executor.execute(new Runnable() {
            @Override
            public void run() {
                runtime = V8.createV8Runtime();
                runtime.add("g_platform", "android");
            }
        });
    }

    public void registerJavaMethod(JavaVoidCallback callback, String name) {
        try {
            executor.execute(new Runnable() {
                @Override
                public void run() {
                    runtime.registerJavaMethod(callback, name);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void registerJavaMethod(JavaCallback callback, String name) {
        try {
            executor.execute(new Runnable() {
                @Override
                public void run() {
                    runtime.registerJavaMethod(callback, name);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void registerJavaMethod(Object object, String methodName, String jsFunctionName, Class<?>[] parameterTypes) {
        try {
            executor.execute(new Runnable() {
                @Override
                public void run() {
                    runtime.registerJavaMethod(object,  methodName,  jsFunctionName, parameterTypes);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void executeScriptPath(String path, ExecuteScriptCallback callback) {
        try {
            executor.execute(new Runnable() {
                @Override
                public void run() {
                    String script = FileUtils.getFromAssets(context, path);
                    V8Object result = runtime.executeObjectScript(script);
                    callback.onComplete(result);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void executeScript(String script, ExecuteScriptCallback callback) {
        try {
            executor.execute(new Runnable() {
                @Override
                public void run() {
                    Object result = runtime.executeScript(script);
                    ((Activity)context).runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            callback.onComplete(result);
                        }
                    });
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    public void close() {
        executor.execute(new Runnable() {
            @Override
            public void run() {
                if (runtime!=null){
                    try {
                        runtime.close();
                    }catch (Exception e){
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    interface ExecuteScriptCallback{
        void onComplete(Object value);
    }

    interface InvokeJSValueCallback {
        void onSuccess(Object value);
        void onFail(Error error);
    }

    public void invokeJSValue(V8Object jsAppObj, String method, Object args, InvokeJSValueCallback callback){
        //获取执行结果
        if (jsAppObj != null) {
            try {
                Object result = jsAppObj.executeFunction(method, new V8Array(runtime).push(
                       new V8Object(runtime).add("paramJson", new JSONObject((Map) args).toString()))
                );

                callback.onSuccess(result);
            }catch (Exception e) {
                callback.onFail(new Error(e.getMessage()));
                e.printStackTrace();
            }
        } else {
            callback.onFail(new Error("jsObjectNull"));
        }
    }
}



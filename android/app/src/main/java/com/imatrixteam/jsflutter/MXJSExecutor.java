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

    private static MXJSExecutor instance;

    private MXJSExecutor(Context context) {
        this.context = context;
        init(context);
    }

    public static MXJSExecutor getInstance(Context context) {
        if (instance == null) {
            synchronized (MXJSExecutor.class) {
                instance = new MXJSExecutor(context);
            }
        }
        return instance;
    }

    public MXJSExecutor init(Context context) {
        executor = Executors.newSingleThreadExecutor();
        setup();
        return this;
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

    private boolean isValid() {
        return runtime != null;
    }

    public void invalidate() {
        executor.execute(new Runnable() {
            @Override
            public void run() {
                if (isValid()) {
                    runtime.release();
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



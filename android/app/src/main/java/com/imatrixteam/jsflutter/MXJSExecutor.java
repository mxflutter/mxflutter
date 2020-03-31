package com.imatrixteam.jsflutter;

import com.eclipsesource.v8.JavaCallback;
import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Object;

import android.app.Activity;
import android.content.Context;

import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8ScriptException;
import com.imatrixteam.jsflutter.utils.FileUtils;

import org.json.JSONObject;

import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;


public class MXJSExecutor {

    public static final String TAG = "MXJSExecutor";

    private volatile static MXJSExecutor sMXJSExecutor;

    public static MXJSExecutor getInstance(Context context) {
        if (sMXJSExecutor == null) {
            synchronized (MXJSExecutor.class) {
                if (sMXJSExecutor == null) {
                    sMXJSExecutor = new MXJSExecutor(context);
                }
            }
        }
        return sMXJSExecutor;
    }

    //不要在主线程使用
    public V8 runtime;

    private ScheduledExecutorService executor;

    public Context context;

    private MXJSExecutor(Context context) {
        this.context = context;
        this.executor = Executors.newSingleThreadScheduledExecutor();
        setup();
    }

    public void executeDelay(MXJsTask action, long delay, TimeUnit unit) {
        try {
            executor.schedule(action, delay, unit);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void execute(MXJsTask action) {
        try {
            executor.execute(action);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setup() {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime = V8.createV8Runtime();
                runtime.add("g_platform", "android");
            }
        });
    }

    //global js runtime
    public void registerJavaMethod(JavaVoidCallback callback, String name) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime.registerJavaMethod(callback, name);
            }
        });
    }

    public void registerJavaMethod(JavaVoidCallback callback, String name, V8 runtime) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime.registerJavaMethod(callback, name);
            }
        });
    }

    //global js runtime
    public void registerJavaMethod(JavaCallback callback, String name) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime.registerJavaMethod(callback, name);
            }
        });
    }

    public void registerJavaMethod(JavaCallback callback, String name, V8 runtime) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime.registerJavaMethod(callback, name);
            }
        });
    }

    //global js runtime
    public void registerJavaMethod(Object object, String methodName, String jsFunctionName, Class<?>[] parameterTypes) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime.registerJavaMethod(object, methodName, jsFunctionName, parameterTypes);
            }
        });
    }

    public void registerJavaMethod(Object object, String methodName, String jsFunctionName, Class<?>[] parameterTypes, V8 runtime) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime.registerJavaMethod(object, methodName, jsFunctionName, parameterTypes);
            }
        });
    }

    //global js runtime
    public void executeScriptPath(String path, ExecuteScriptCallback callback) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                String script = FileUtils.getFromAssets(context, path);
                V8Object result = runtime.executeObjectScript(script);
                callback.onComplete(result);
            }
        });
    }

    public void executeScriptPath(String path, ExecuteScriptCallback callback, V8 runtime) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                String script = FileUtils.getFromAssets(context, path);
                V8Object result = runtime.executeObjectScript(script);
                callback.onComplete(result);
            }
        });
    }

    //global js runtime
    public void executeScript(String script, ExecuteScriptCallback callback) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                Object result = runtime.executeScript(script);
                ((Activity) context).runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        callback.onComplete(result);
                    }
                });
            }
        });
    }

    public void executeScript(String script, ExecuteScriptCallback callback, V8 runtime) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                Object result = runtime.executeScript(script);
                ((Activity) context).runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        callback.onComplete(result);
                    }
                });
            }
        });
    }

    public void close() {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                if (runtime != null) {
                    runtime.close();
                }
            }
        });
    }

    interface ExecuteScriptCallback {
        void onComplete(Object value);
    }

    interface InvokeJSValueCallback {
        void onSuccess(Object value);

        void onFail(Error error);
    }

    public void invokeJSValue(V8Object jsAppObj, String method, Object args, InvokeJSValueCallback callback) {
        //获取执行结果
        if (jsAppObj != null) {
            try {
                Object result = jsAppObj.executeFunction(method, new V8Array(runtime).push(
                        new V8Object(runtime).add("paramJson", new JSONObject((Map) args).toString()))
                );

                callback.onSuccess(result);
            } catch (Exception e) {
                callback.onFail(new Error(e.getMessage()));
                e.printStackTrace();
            }
        } else {
            callback.onFail(new Error("jsObjectNull"));
        }
    }

    public static abstract class MXJsTask implements Runnable {

        protected MXJsTask() {
        }

        @Override
        public void run() {
            try {
                excute();
            } catch (V8ScriptException e) {
                android.util.Log.e(TAG, "V8ScriptException:JSMessage:" + e);
            }
        }

        public abstract void excute();
    }
}



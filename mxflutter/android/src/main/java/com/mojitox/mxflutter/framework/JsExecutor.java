//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework;

import android.util.Log;
import androidx.annotation.Nullable;
import com.eclipsesource.v8.JavaCallback;
import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Function;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.V8Value;
import com.eclipsesource.v8.utils.V8ObjectUtils;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.executor.JobExecutor;
import com.mojitox.mxflutter.framework.executor.JsTask;
import com.mojitox.mxflutter.framework.executor.TaskName;
import com.mojitox.mxflutter.framework.utils.FileUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class JsExecutor {

    public static final String TAG = "MXJSExecutor";

    private JobExecutor executor;

    public JsExecutor() {
        executor = new JobExecutor();
    }

    public void executeDelay(JsTask action, long delay) {
        executor.schedule(action, delay, TimeUnit.SECONDS);
    }

    public void execute(JsTask action) {
        executor.execute(action);
    }

    //global js runtime
    public void registerGlobalObject(String name, Map data) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                MXFlutterPlugin.get().getRuntime().add(name, V8ObjectUtils.toV8Object(
                        MXFlutterPlugin.get().getRuntime(), data));
            }
        }.setTaskName(TaskName.REG_GLOBAL_OBJECT + name));
    }

    //global js runtime
    public void registerGlobalObject(String name, V8Value value) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                MXFlutterPlugin.get().getRuntime().add(name, value);
            }
        }.setTaskName(TaskName.REG_GLOBAL_OBJECT + name));
    }


    //global js runtime
    public void registerJavaMethod(JavaVoidCallback callback, String name) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                MXFlutterPlugin.get().getRuntime().registerJavaMethod(callback, name);
            }
        }.setTaskName(TaskName.REG_JAVA_METHOD + name));
    }

    public void registerJavaMethod(JavaVoidCallback callback, String name, V8 runtime) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                runtime.registerJavaMethod(callback, name);
            }
        }.setTaskName(TaskName.REG_JAVA_METHOD + name));
    }

    //global js runtime
    public void registerJavaMethod(JavaCallback callback, String name) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                MXFlutterPlugin.get().getRuntime().registerJavaMethod(callback, name);
            }
        }.setTaskName(TaskName.REG_JAVA_METHOD + name));
    }

    public void registerJavaMethod(JavaCallback callback, String name, V8 runtime) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                runtime.registerJavaMethod(callback, name);
            }
        }.setTaskName(TaskName.REG_JAVA_METHOD + name));
    }

    //global js runtime
    public void registerJavaMethod(Object object, String methodName, String jsFunctionName,
                                   Class<?>[] parameterTypes) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                MXFlutterPlugin
                        .get().getRuntime().registerJavaMethod(object, methodName, jsFunctionName, parameterTypes);
            }
        }.setTaskName(TaskName.REG_JAVA_METHOD + methodName));
    }

    public void registerJavaMethod(Object object, String methodName, String jsFunctionName,
                                   Class<?>[] parameterTypes, V8 runtime) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                runtime.registerJavaMethod(object, methodName, jsFunctionName, parameterTypes);
            }
        }.setTaskName(TaskName.REG_JAVA_METHOD + methodName));
    }

    //global js runtime
    public void executeScriptPath(final String path, InvokeJSValueCallback callback) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                try {
                    String script = FileUtils.getScriptFromPath(path);
                    V8Object result = MXFlutterPlugin.get().getRuntime().executeObjectScript(script);
                    callback.onSuccess(result);
                } catch (Throwable e) {
                    callback.onError(new Error("load main js failed", e));
                }
            }
        }.setTaskName(TaskName.EXECUTE_SCRIPT_PATH + path));
    }

    public void executeScriptPath(final String path, ExecuteScriptCallback callback, V8 runtime) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                String script = FileUtils.getScriptFromPath(path);
                V8Object result = runtime.executeObjectScript(script);
                callback.onComplete(result);
            }
        }.setTaskName(TaskName.EXECUTE_SCRIPT_PATH + path));
    }

    //global js runtime
    public void executeScript(String script, InvokeJSValueCallback callback) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                try {
                    Object result = MXFlutterPlugin.get().getRuntime().executeScript(script);
                    MXFlutterPlugin.get().getMainHandler().post(new Runnable() {
                        @Override
                        public void run() {
                            callback.onSuccess(result);
                        }
                    });
                } catch (Throwable e) {
                    callback.onError(new Error("load bundle js failed", e));
                }
            }
        }.setTaskName(TaskName.getExecuteScriptName(script)));
    }

    public void executeScript(String script, ExecuteScriptCallback callback, V8 runtime) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                Object result = runtime.executeScript(script);
                MXFlutterPlugin.get().getMainHandler().post(new Runnable() {
                    @Override
                    public void run() {
                        callback.onComplete(result);
                    }
                });
            }
        }.setTaskName(TaskName.getExecuteScriptName(script)));
    }

    public void close() {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                if (MXFlutterPlugin.get().getRuntime() != null) {
                    MXFlutterPlugin.get().getRuntime().release(false);
                }
            }
        }.setTaskName(TaskName.CLOSE));
    }

    @SuppressWarnings("unchecked")
    public void invokeJSValue(V8Object jsAppObj, String method, Map args,
                              InvokeJSValueCallback callback) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                //获取执行结果
                if (jsAppObj != null) {
                    try {
                        Object result = jsAppObj.executeFunction(method,
                                new V8Array(MXFlutterPlugin.get().getRuntime()).push(V8ObjectUtils.toV8Object(
                                        MXFlutterPlugin.get().getRuntime(), args)));
                        callback.onSuccess(result);
                    } catch (Exception e) {
                        callback.onError(new Error(e.getMessage(), e));
                        Log.e(TAG, "", e);
                    }
                } else {
                    callback.onError(new Error("jsObjectNull"));
                }
            }
        }.setTaskName(TaskName.INVOKE_JS_VALUE + method));
    }

    @SuppressWarnings("unchecked")
    public void invokeJSValueWithString(V8Object jsAppObj, String method, String args,
                                        InvokeJSValueCallback callback) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                //获取执行结果
                if (jsAppObj != null) {
                    try {
                        Object result = jsAppObj
                                .executeFunction(method, new V8Array(MXFlutterPlugin.get().getRuntime()).push(args));
                        callback.onSuccess(result);
                    } catch (Exception e) {
                        callback.onError(new Error(e.getMessage()));
                        Log.e(TAG, "", e);
                    }
                } else {
                    callback.onError(new Error("jsObjectNull"));
                }
            }
        }.setTaskName(TaskName.INVOKE_JS_WITH_STRING + method));
    }

    @SuppressWarnings("unchecked")
    public void invokeJsFunction(V8Function v8Function, Map value) {
        invokeJsFunction(v8Function, value, null);
    }

    @SuppressWarnings("unchecked")
    public void invokeJsFunction(V8Function v8Function, Map value,
                                 @Nullable ExecuteScriptCallback callback) {
        executor.execute(new JsTask() {
            @Override
            protected void execute() {
                Object result = v8Function.call(MXFlutterPlugin.get().getRuntime(), value != null
                        ? new V8Array(MXFlutterPlugin.get().getRuntime()).push(V8ObjectUtils.toV8Object(
                        MXFlutterPlugin.get().getRuntime(), value))
                        : new V8Array(MXFlutterPlugin.get().getRuntime())
                        .push(V8ObjectUtils.toV8Object(MXFlutterPlugin.get().getRuntime(), new HashMap<>())));
                if (callback != null) {
                    callback.onComplete(result);
                }
            }
        }.setTaskName(TaskName.INVOKE_JS_FUNCTION));
    }

    public void invokeJsFunctionWithString(V8Function v8Function, String value) {
        executor.execute(new JsTask() {
            @Override
            public void execute() {
                v8Function.call(MXFlutterPlugin.get().getRuntime(), value != null
                        ? new V8Array(MXFlutterPlugin.get().getRuntime()).push(value)
                        : null);
            }
        }.setTaskName(TaskName.INVOKE_JS_FUNCTION_WITH_STRING));
    }

    interface ExecuteScriptCallback {

        void onComplete(Object value);
    }

    interface InvokeJSValueCallback {

        void onSuccess(Object value);

        void onError(Error error);
    }

}



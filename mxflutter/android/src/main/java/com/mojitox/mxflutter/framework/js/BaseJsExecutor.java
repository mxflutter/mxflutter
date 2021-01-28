package com.mojitox.mxflutter.framework.js;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.mojitox.mxflutter.framework.constants.JsObjectType;
import com.mojitox.mxflutter.framework.executor.JobExecutor;
import com.mojitox.mxflutter.framework.executor.JsTask;
import com.mojitox.mxflutter.framework.executor.TaskName;
import com.mojitox.mxflutter.framework.executor.UiThread;
import com.mojitox.mxflutter.framework.callback.ExecuteScriptCallback;
import com.mojitox.mxflutter.framework.callback.InvokeJSValueCallback;
import com.mojitox.mxflutter.framework.utils.FileUtils;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * create by ericpsun on 2020/11/6.
 */
public abstract class BaseJsExecutor<T, S> implements IJsExecutor<T> {

    protected volatile T jsRuntime;
    private JobExecutor jobExecutor;

    @Override
    public void setRuntime(T jsRuntime) {
        this.jsRuntime = jsRuntime;
    }

    /**
     * 延迟执行task
     *
     * @param delay s
     */
    public void executeDelayed(JsTask action, long delay) {
        getJobExecutor().schedule(action, delay, TimeUnit.SECONDS);
    }

    public void execute(JsTask action) {
        getJobExecutor().execute(action);
    }

    /**
     * global js runtime
     *
     * @param name object class name
     */
    public void registerGlobalObject(String name) {
        registerGlobalObject(name, null);
    }

    /**
     * global js runtime
     *
     * @param name object class name
     * @param data The data to add
     */
    public void registerGlobalObject(String name, @Nullable Object data) {
        execute(new JsTask() {
            @Override
            public void execute() {
                registerGlobalObjectInner(name, data);
            }
        }.setTaskName(TaskName.REG_GLOBAL_OBJECT + name));
    }

    /**
     * 加载js文件
     *
     * @param path 路径
     * @param callback 回调
     */
    public void executeScriptPath(final String path, @Nullable InvokeJSValueCallback callback) {
        execute(new JsTask() {
            @Override
            public void execute() {
                try {
                    String script = FileUtils.getScriptFromPath(path);
                    String scriptName = FileUtils.getScriptName(path);
                    Object result = executeScriptPathInner(script, scriptName);
                    successCallback(callback, result);
                } catch (Throwable e) {
                    errorCallback(callback, new Error("load main js failed", e));
                }
            }
        }.setTaskName(TaskName.EXECUTE_SCRIPT_PATH + path));
    }

    /**
     * 直接执行script
     *
     * @param script 脚本
     * @param callback 回调
     */
    public void executeScript(String script,String scriptName, @Nullable InvokeJSValueCallback callback) {
        execute(new JsTask() {
            @Override
            public void execute() {
                try {
                    String name = FileUtils.getScriptName(scriptName);
                    Object result = executeScriptInner(script, name);
                    successCallback(callback, result);
                } catch (Throwable e) {
                    errorCallback(callback, new Error("load bundle js failed", e));
                }
            }
        }.setTaskName(TaskName.getExecuteScriptName(script)));
    }

    /**
     * invoke js value default appObject
     */
    public void invokeJSValue(String method, Object args,
            @Nullable InvokeJSValueCallback callback) {
        invokeJSValue(JsObjectType.APP_OBJECT, method, args, callback);
    }

    /**
     * invoke js value
     */
    public void invokeJSValue(@NonNull JsObjectType jsObjectType, String method, Object args,
            @Nullable InvokeJSValueCallback callback) {
        execute(new JsTask() {
            @Override
            public void execute() {
                try {
                    if (!assertInitSuccess(jsObjectType)) {
                        errorCallback(callback, new Error("jsObjectNull"));
                    } else {
                        Object result = invokeJsValueInner(jsObjectType, method, args);
                        successCallback(callback, result);
                    }
                } catch (Exception e) {
                    errorCallback(callback, new Error(e.getMessage(), e));
                }
            }
        }.setTaskName(TaskName.INVOKE_JS_VALUE + method));
    }

    /**
     * invoke js value sync
     */
    @Nullable
    public Object invokeJSValueSync(@NonNull JsObjectType jsObjectType, String method, Object args) {
        try {
            if (!assertInitSuccess(jsObjectType)) {
                return null;
            } else {
                return invokeJsValueInner(jsObjectType, method, args);
            }
        } catch (Exception e) {
            return null;
        }
    }

    /**
     * invoke js function
     */
    public void invokeJsFunction(@NonNull S function, Map value) {
        invokeJsFunction(function, value, true, null);
    }

    /**
     * invoke js function
     */
    public void invokeJsFunction(@NonNull S function, Object value, boolean isMap) {
        invokeJsFunction(function, value, isMap, null);
    }

    /**
     * invoke js function
     */
    public void invokeJsFunction(@NonNull S function, Object value, boolean isMap,
            @Nullable ExecuteScriptCallback callback) {
        execute(new JsTask() {
            @Override
            protected void execute() {
                Object result = invokeJsFunctionInner(function, value, isMap);
                if (callback != null) {
                    callback.onComplete(result);
                }
            }
        }.setTaskName(TaskName.INVOKE_JS_FUNCTION));
    }

    /**
     * direct invoke js function by execute script
     */
    public void invokeJsFunction(String function, Object value, @Nullable ExecuteScriptCallback callback) {
        execute(new JsTask() {
            @Override
            protected void execute() {
                Object result = invokeJsFunctionInner(function, value);
                if (callback != null) {
                    callback.onComplete(result);
                }
            }
        }.setTaskName(TaskName.INVOKE_JS_FUNCTION));
    }

    @NonNull
    public JobExecutor getJobExecutor() {
        if (jobExecutor == null) {
            jobExecutor = new JobExecutor();
        }
        return jobExecutor;
    }

    /**
     * flutter引擎初始化
     */
    protected void onAttachedToFlutterEngine(){

    }

    /**
     * 默认回调到主线程
     */
    private void successCallback(InvokeJSValueCallback callback, Object data) {
        if (callback != null) {
            if (!successCallBackInUiThread()) {
                callback.onSuccess(data);
            } else if (UiThread.isUIThread()) {
                callback.onSuccess(data);
            } else {
                UiThread.post(new Runnable() {
                    @Override
                    public void run() {
                        callback.onSuccess(data);
                    }
                });
            }
        }
    }

    /**
     * 默认回调到主线程
     */
    private void errorCallback(InvokeJSValueCallback callback, Error error) {
        if (callback != null) {
            if (UiThread.isUIThread()) {
                callback.onError(error);
            } else {
                UiThread.post(new Runnable() {
                    @Override
                    public void run() {
                        callback.onError(error);
                    }
                });
            }
        }
    }

    /**
     * set from js
     */
    public abstract void setCurrentAppObject(Object currentAppObject);

    /**
     * in thread
     */
    protected abstract void registerGlobalObjectInner(String name, @Nullable Object data);

    /**
     * in thread may be throw exception
     */
    protected abstract Object executeScriptPathInner(final String script, String scriptName);

    /**
     * in thread may be throw exception
     */
    protected abstract Object executeScriptInner(final String script, String scriptName);

    protected abstract Object invokeJsValueInner(@NonNull JsObjectType jsObjectType, String method, Object args);

    protected abstract Object invokeJsFunctionInner(@NonNull S function, Object args, boolean isMap);

    protected abstract Object invokeJsFunctionInner(String function, Object args);

    @NonNull
    protected abstract String getTag();

    /**
     * call back thread
     * @return call back in ui thread after invoke js
     */
    protected boolean successCallBackInUiThread() {
        return true;
    }
}

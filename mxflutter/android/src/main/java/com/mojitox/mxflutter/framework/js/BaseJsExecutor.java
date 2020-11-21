package com.mojitox.mxflutter.framework.js;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mojitox.mxflutter.framework.constants.JsObjectType;
import com.mojitox.mxflutter.framework.executor.JobExecutor;
import com.mojitox.mxflutter.framework.executor.JsTask;
import com.mojitox.mxflutter.framework.executor.TaskName;
import com.mojitox.mxflutter.framework.executor.UiThread;
import com.mojitox.mxflutter.framework.runtime.ExecuteScriptCallback;
import com.mojitox.mxflutter.framework.runtime.InvokeJSValueCallback;
import com.mojitox.mxflutter.framework.utils.FileUtils;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * create by ericpsun on 2020/11/6.
 */
public abstract class BaseJsExecutor<RunTime, Function> implements IJsExecutor<RunTime> {

    protected RunTime jsRuntime;
    private JobExecutor jobExecutor;

    @Override
    public void setRuntime(RunTime jsRuntime) {
        this.jsRuntime = jsRuntime;
    }

    /**
     *
     * @param delay s
     */
    public void executeDelay(JsTask action, long delay) {
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
     * @param data The data to add(Map<String,Object>)
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
                    Object result = executeScriptPathInner(script);
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
    public void executeScript(String script, @Nullable InvokeJSValueCallback callback) {
        execute(new JsTask() {
            @Override
            public void execute() {
                try {
                    Object result = executeScriptInner(script);
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
    public void invokeJsFunction(@NonNull Function function, Map value) {
        invokeJsFunction(function, value, true, null);
    }

    /**
     * invoke js function
     */
    public void invokeJsFunction(@NonNull Function function, Object value, boolean isMap) {
        invokeJsFunction(function, value, isMap, null);
    }

    /**
     * invoke js function
     */
    public void invokeJsFunction(@NonNull Function function, Object value, boolean isMap,
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

    @NonNull
    protected JobExecutor getJobExecutor() {
        if (jobExecutor == null) {
            jobExecutor = new JobExecutor();
        }
        return jobExecutor;
    }

    /**
     * 默认回调到主线程
     */
    private void successCallback(InvokeJSValueCallback callback, Object data) {
        if (callback != null) {
            if (UiThread.isUIThread()) {
                callback.onSuccess(data);
            } else {
                UiThread.post(() -> callback.onSuccess(data));
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
                UiThread.post(() -> callback.onError(error));
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
    protected abstract Object executeScriptPathInner(final String script);

    /**
     * in thread may be throw exception
     */
    protected abstract Object executeScriptInner(final String script);

    protected abstract Object invokeJsValueInner(@NonNull JsObjectType jsObjectType, String method, Object args);

    protected abstract Object invokeJsFunctionInner(@NonNull Function function, Object args, boolean isMap);

    @NonNull
    public abstract String getTag();


    public abstract String getApiName();
}

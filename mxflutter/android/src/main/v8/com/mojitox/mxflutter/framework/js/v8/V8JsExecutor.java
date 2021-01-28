//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework.js.v8;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.debug.MXDebug;
import com.eclipsesource.v8.JavaCallback;
import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Function;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.V8Value;
import com.eclipsesource.v8.utils.V8ObjectUtils;
import com.mojitox.mxflutter.BuildConfig;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.callback.ExecuteScriptCallback;
import com.mojitox.mxflutter.framework.constants.ApiName;
import com.mojitox.mxflutter.framework.constants.JsConstant;
import com.mojitox.mxflutter.framework.constants.JsObjectType;
import com.mojitox.mxflutter.framework.executor.JsTask;
import com.mojitox.mxflutter.framework.executor.TaskName;
import com.mojitox.mxflutter.framework.js.BaseJsExecutor;
import com.mojitox.mxflutter.framework.utils.MxLog;
import java.util.HashMap;
import java.util.Map;

public class V8JsExecutor extends BaseJsExecutor<V8, V8Function> {

    private static final String TAG = "V8JsExecutor";
    private static final Object lock = new Object();
    private final String soPath;
    private V8Object apiObject;
    private V8Object currentAppObject;

    public V8JsExecutor(String soPath) {
        this.soPath = soPath;
    }

    @NonNull
    @Override
    public String getTag() {
        return TAG;
    }

    @Override
    public V8 getRuntime() {
        if (jsRuntime == null) {
            synchronized (lock) {
                if (jsRuntime == null) {
                    if (!TextUtils.isEmpty(soPath)) {
                        jsRuntime = V8.createV8Runtime(ApiName.V8_NAME, soPath);
                    } else {
                        jsRuntime = V8.createV8Runtime(ApiName.V8_NAME);
                    }
                }
            }
        }
        return jsRuntime;
    }

    public V8Object getApiObject() {
        if (apiObject == null) {
            apiObject = new V8Object(getRuntime());
            getRuntime().add(ApiName.API_NAME, apiObject);
        }
        return apiObject;
    }

    @Nullable
    public V8Object getCurrentAppObject() {
        return currentAppObject;
    }

    @SuppressWarnings("unchecked")
    @Override
    protected void registerGlobalObjectInner(String name, Object data) {
        if (data == null) {
            getApiObject().add(name, getApiObject());
        } else if (data instanceof Map) {
            try {
                getApiObject().add(name, V8ObjectUtils.toV8Object(getRuntime(), (Map<String, ?>) data));
            } catch (ClassCastException e) {
                MxLog.e(TAG, "registerGlobalObjectInner:" + e.getMessage());
            }
        } else if (data instanceof V8Value) {
            getApiObject().add(name, (V8Value) data);
        } else if (data instanceof Boolean) {
            getApiObject().add(name, (Boolean) data);
        } else if (BuildConfig.DEBUG) {
            throw new UnsupportedOperationException("not support type:" + data);
        }
    }


    //global js runtime
    public void registerJavaMethod(@NonNull JsObjectType jsObjectType, JavaVoidCallback callback, String name) {
        execute(new JsTask() {
            @Override
            public void execute() {
                switch (jsObjectType) {
                    case RUNTIME:
                        getRuntime().registerJavaMethod(callback, name);
                        break;
                    case APP_OBJECT:
                        getApiObject().registerJavaMethod(callback, name);
                        break;
                    default:
                        break;
                }
            }
        }.setTaskName(TaskName.REG_JAVA_METHOD + name));
    }

    //global js runtime
    public void registerJavaMethod(@NonNull JsObjectType jsObjectType, JavaCallback callback, String name) {
        execute(new JsTask() {
            @Override
            public void execute() {
                switch (jsObjectType) {
                    case RUNTIME:
                        getRuntime().registerJavaMethod(callback, name);
                        break;
                    case APP_OBJECT:
                        getApiObject().registerJavaMethod(callback, name);
                        break;
                    default:
                        break;
                }
            }
        }.setTaskName(TaskName.REG_JAVA_METHOD + name));
    }

    //global js runtime
    public void registerJavaMethod(Object object, String methodName, String jsFunctionName,
            Class<?>[] parameterTypes) {
        execute(new JsTask() {
            @Override
            public void execute() {
                getApiObject().registerJavaMethod(object, methodName, jsFunctionName, parameterTypes);
            }
        }.setTaskName(TaskName.REG_JAVA_METHOD + methodName));
    }

    @Override
    protected Object executeScriptPathInner(String script, String scriptName) {
        Object result = getRuntime().executeObjectScript(script, scriptName, 0);
        MXDebug.INSTANCE.addScrips(scriptName, script);
        return result;
    }

    @Override
    protected Object executeScriptInner(String script, String scriptName) {
        Object result = getRuntime().executeScript(script, scriptName, 0);
        MXDebug.INSTANCE.addScrips(scriptName, script);
        return result;
    }

    @Override
    protected Object invokeJsValueInner(@NonNull JsObjectType jsObjectType, String method, Object args) {
        V8Array v8Array;
        if (args instanceof Map) {
            v8Array = new V8Array(getRuntime())
                    .push(V8ObjectUtils.toV8Object(getRuntime(), (Map<String, ? extends Object>) args));
        } else {
            v8Array = new V8Array(getRuntime()).push(args);
        }
        switch (jsObjectType) {
            case RUNTIME:
                return getRuntime().executeFunction(method, v8Array);
            case APP_OBJECT:
                return getApiObject().executeFunction(method, v8Array);
            case CURRENT_APP_OBJECT:
                if (currentAppObject != null) {
                    return currentAppObject.executeFunction(method, v8Array);
                }
                break;
            default:
                break;
        }
        return null;
    }

    @Override
    public void close(boolean cleanRunTime, ExecuteScriptCallback callback) {
        execute(new JsTask() {
            @Override
            public void execute() {
                V8JsModule.clearModuleCache();
                if (cleanRunTime) {
                    if (currentAppObject != null) {
                        currentAppObject.close();
                        currentAppObject = null;
                    }
                    if (apiObject != null) {
                        apiObject.close();
                        apiObject = null;
                    }
                    getRuntime().release(false);
                    setRuntime(null);
                    if (callback != null) {
                        callback.onComplete(null);
                    }
                }
            }
        }.setTaskName(TaskName.CLOSE));
    }

    @Override
    protected Object invokeJsFunctionInner(@NonNull V8Function function, Object args, boolean isMap) {
        if (isMap) {
            return ((V8Function) function).call(getApiObject(), args != null
                    ? new V8Array(getRuntime())
                    .push(V8ObjectUtils.toV8Object(getRuntime(), (Map<String, ? extends Object>) args))
                    : new V8Array(getRuntime()).push(V8ObjectUtils.toV8Object(getRuntime(),
                            new HashMap<>())));
        } else {
            return ((V8Function) function).call(getApiObject(), args != null
                    ? new V8Array(getRuntime()).push(args)
                    : null);
        }
    }

    @Override
    protected Object invokeJsFunctionInner(String function, Object args) {
        if (!TextUtils.isEmpty(function)) {
            String script;
            if (args == null) {
                script = String.format(JsConstant.FUNCTION_CALLBACK, function);
            } else {
                script = String.format(JsConstant.FUNCTION_WITH_PARAM_CALLBACK, function, args.toString());
            }
            MxLog.e(TAG, "invokeJsFunctionInner:" + script);
            return getRuntime().executeScript(script);
        }
        return null;
    }

    @Override
    public boolean assertInitSuccess(@NonNull JsObjectType jsObjectType) {
        switch (jsObjectType) {
            case RUNTIME:
            case APP_OBJECT:
                return true;
            case CURRENT_APP_OBJECT:
                return getCurrentAppObject() != null;
            default:
                break;
        }
        return false;
    }

    @Override
    public void registerMxNativeJsFlutterApp() {
        execute(new JsTask() {
            public void execute() {
                MXNativeJSFlutterApp mxNativeJSFlutterApp = new MXNativeJSFlutterApp();
                V8Object v8Object = getApiObject();
                v8Object.registerJavaMethod(mxNativeJSFlutterApp, ApiName.SET_CURRENT_APP,
                        ApiName.SET_CURRENT_APP, new Class<?>[]{V8Object.class});
                v8Object.registerJavaMethod(mxNativeJSFlutterApp,
                        ApiName.CALL_FLUTTER_RELOAD_APP, ApiName.CALL_FLUTTER_RELOAD_APP,
                        new Class<?>[]{V8Object.class, String.class});
                v8Object.registerJavaMethod(mxNativeJSFlutterApp,
                        ApiName.CALL_FLUTTER_WIDGET_CHANNEL, ApiName.CALL_FLUTTER_WIDGET_CHANNEL,
                        new Class<?>[]{String.class, String.class});
            }
        }.setTaskName(TaskName.RUN_APP_PAGE_NAME));
    }

    @Override
    public void setCurrentAppObject(Object currentAppObject) {
        if (currentAppObject instanceof V8Object) {
            this.currentAppObject = (V8Object) currentAppObject;
        }
    }

    /**
     * V8Object toString will checkThread
     * use {@link com.mojitox.mxflutter.framework.executor.UiThread#post(Runnable)} if need Method call result callback
     */
    @Override
    protected boolean successCallBackInUiThread() {
        return false;
    }

    @Override
    protected void onAttachedToFlutterEngine() {
        super.onAttachedToFlutterEngine();
        execute(new JsTask() {
            @Override
            protected void execute() {
                MXDebug.INSTANCE.startDebugV8(MXFlutterPlugin.get().getApplicationContext(), getRuntime());
            }
        }.setTaskName(TaskName.RUN_MX_DEBUG));
    }
}



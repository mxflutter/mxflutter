package com.mojitox.mxflutter.framework.js.x5;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mojitox.mxflutter.BuildConfig;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.constants.ApiName;
import com.mojitox.mxflutter.framework.constants.Const;
import com.mojitox.mxflutter.framework.constants.JsObjectType;
import com.mojitox.mxflutter.framework.executor.JsTask;
import com.mojitox.mxflutter.framework.executor.TaskName;
import com.mojitox.mxflutter.framework.js.BaseJsExecutor;
import com.tencent.smtt.sdk.JsContext;
import com.tencent.smtt.sdk.JsError;
import com.tencent.smtt.sdk.JsValue;
import com.tencent.smtt.sdk.JsVirtualMachine;
import com.tencent.smtt.sdk.QbSdk;
import com.tencent.smtt.sdk.QbSdk.PreInitCallback;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONObject;


public class X5Executor extends BaseJsExecutor<JsContext, JsValue> implements PreInitCallback {

    private static final String TAG = "X5Executor";
    private boolean isInit;
    private JsContext jsContext;
    private ArrayList<JsTask> jsTaskQueue;
    //js传递过来的实例，主要用于nativeCall方法的调用
    @Nullable
    private IMxJsFlutterApp jsFlutterApp;

    public X5Executor() {
        jsTaskQueue = new ArrayList<>(1);
        getJobExecutor().execute(new JsTask() {
            public void execute() {
                Log.e(TAG, "start init");
                QbSdk.initX5Environment(MXFlutterPlugin.get().getApplicationContext(), X5Executor.this);
            }
        });
    }

    @Override
    public void onCoreInitFinished() {
        Log.e(TAG, "onViewInitFinished onCoreInitFinished:");
    }

    @Override
    public void onViewInitFinished(boolean isX5Core) {
        Log.e(TAG, "onViewInitFinished onViewInitFinished:" + isX5Core);
        JsVirtualMachine vm = new JsVirtualMachine(MXFlutterPlugin.get().getApplicationContext(), Looper.myLooper());
        jsContext = new JsContext(vm);
        jsContext.setExceptionHandler(new JsContext.ExceptionHandler() {
            @Override
            public void handleException(JsContext context, JsError error) {
                Log.e(TAG, error.getMessage());
            }
        });
        isInit = true;
        callJsTask();
    }

    @Override
    public void execute(JsTask action) {
        if (isInit) {
            super.execute(action);
        } else {
            jsTaskQueue.add(action);
        }
    }

    private void callJsTask() {
        for (JsTask task : jsTaskQueue) {
            execute(task);
        }
    }

    @Override
    protected void registerGlobalObjectInner(String name, @Nullable Object data) {
        execute(new JsTask() {
            @Override
            protected void execute() {
                if (data == null) {
                    jsContext.evaluateScript(String.format(Const.NEW_OBJECT, getApiName(), name));
                } else if (data instanceof Map) {
                    try {
                        JSONObject jsonObj = new JSONObject((Map) data);
                        String str = String.format(Const.SET_OBJECT, getApiName(), name, jsonObj.toString());
                        jsContext.evaluateScript(str);
                    } catch (ClassCastException e) {
                        Log.e(TAG, "registerGlobalObjectInner:" + e.getMessage());
                    }
                }
            }
        });
    }

    @Override
    protected Object executeScriptPathInner(String script) {
        return jsContext.evaluateScript(script);
    }

    @Override
    protected Object executeScriptInner(String script) {
        return jsContext.evaluateScript(script);
    }

    @Override
    protected Object invokeJsValueInner(@NonNull JsObjectType jsObjectType, String method, Object args) {

        String script = null;
        switch (jsObjectType) {
            case RUNTIME:
                script = method + (args == null ? "" : "('" + args + "')");
                break;
            case APP_OBJECT:
                script = ApiName.API_NAME + "." + method + (args == null ? "" : "('" + args + "')");
                break;
            case CURRENT_APP_OBJECT:
                if (jsFlutterApp != null) {
                    final Object param = X5EvaluateUtil.getCurrentAppObjectParam(getRuntime(), args);
                    if (param == null) {
                        return null;
                    } else if (TextUtils.equals(method, ApiName.NATIVE_CALL_METHOD)) {
                        jsFlutterApp.nativeCall(param);
                    } else if (BuildConfig.DEBUG) {
                        throw new RuntimeException("CURRENT_APP_OBJECT not implements:" + method);
                    }
                }
                break;
            default:
                break;
        }
        if (TextUtils.isEmpty(script)) {
            return null;
        }
        Log.e(TAG, "invokeJsValueInner:" + script);
        return getRuntime().evaluateScript(script);
    }

    /**
     * x5的参数貌似不能传null
     */
    @Override
    protected Object invokeJsFunctionInner(@NonNull JsValue function, Object args, boolean isMap) {
        if (function.isFunction()) {
            function.call(args == null ? "" : args);
        }
        return null;
    }

    @NonNull
    @Override
    public String getTag() {
        return TAG;
    }

    @Override
    public String getApiName() {
        return ApiName.API_NAME;
    }

    @Override
    public JsContext getRuntime() {
        return jsContext;
    }

    @Override
    public void close() {
        execute(new JsTask() {
            @Override
            public void execute() {
                getRuntime().destroy();
            }
        }.setTaskName(TaskName.CLOSE));
    }

    @Override
    public boolean assertInitSuccess(@NonNull JsObjectType jsObjectType) {
        return jsContext != null;
    }

    /**
     * 不需要实现，已经在{@link X5Interface 中注册}
     */
    @Override
    public void registerMxNativeJsFlutterApp() {
        
    }

    /**
     * 设置js实例
     */
    @Override
    public void setCurrentAppObject(Object currentAppObject) {
        if (currentAppObject instanceof IMxJsFlutterApp) {
            jsFlutterApp = (IMxJsFlutterApp) currentAppObject;
        }
    }
}

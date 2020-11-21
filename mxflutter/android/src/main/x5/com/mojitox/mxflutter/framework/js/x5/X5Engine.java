package com.mojitox.mxflutter.framework.js.x5;

import android.util.Log;
import androidx.annotation.NonNull;
import com.mojitox.mxflutter.framework.constants.ApiName;
import com.mojitox.mxflutter.framework.executor.JsTask;
import com.mojitox.mxflutter.framework.js.BaseJsEngine;
import com.mojitox.mxflutter.framework.runtime.ExecuteScriptCallback;
import com.mojitox.mxflutter.framework.runtime.InvokeJSValueCallback;
import com.tencent.smtt.sdk.JsValue;
import io.flutter.plugin.common.MethodCall;
import java.util.HashMap;
import java.util.Map;

public class X5Engine extends BaseJsEngine<X5Executor> {

    private static final String TAG = "X5Engine";

    @Override
    protected void initEngine() {
        setupBasicJSRuntime();
        //test();
    }

    @NonNull
    @Override
    protected X5Executor createJsExecutor() {
        return new X5Executor();
    }

    private void test() {
        Map flutterAppEnvironmentInfo = new HashMap<>();
        flutterAppEnvironmentInfo.put("kReleaseMode", true);
        flutterAppEnvironmentInfo.put("kProfileMode", false);
        flutterAppEnvironmentInfo.put("kDebugMode", false);
        getJsExecutor().registerGlobalObjectInner("mx_flutterAppEnvironmentInfo",flutterAppEnvironmentInfo);
        getJsExecutor().execute(new JsTask() {
            @Override
            protected void execute() {
                getJsExecutor().executeScriptPath("file:///android_asset/js/x5test.js", new InvokeJSValueCallback() {

                    @Override
                    public void onSuccess(Object value) {
                        Log.e(TAG, "test ok");
                        getJsExecutor().invokeJSValue("mxfJSBridgeInvokeJSCommonChannel", "sjaidjaiuwd", null);
                    }

                    @Override
                    public void onError(Error error) {
                        Log.e(TAG, "test fail");
                    }
                });
            }
        });
    }

    private void setupBasicJSRuntime() {
        getJsExecutor().execute(new JsTask() {
            @Override
            protected void execute() {
                getJsExecutor().getRuntime().addJavascriptInterface(new X5Interface(getJsExecutor()), ApiName.API_NAME);
            }
        });
    }

    @Override
    public void callJSCallbackFunction(String callbackId, Map params) {
        Object callback = getJsCallBackWithCallbackId(callbackId);
        if (callback instanceof JsValue) {
            getJsExecutor().invokeJsFunction((JsValue) callback, params);
        }
    }

    @Override
    public void callJSCallbackFunctionWithChannelName(String channelName, MethodCall methodCall,
            ExecuteScriptCallback callback) {
        Object function = getJsCallBackWithCallbackId(channelName);
        if (function instanceof JsValue) {
            Map<String, Object> params = new HashMap<>();
            params.put("method", methodCall.method);
            params.put("arguments", methodCall.arguments);
            getJsExecutor().invokeJsFunction((JsValue) function, params, true, callback);
        }
    }
}

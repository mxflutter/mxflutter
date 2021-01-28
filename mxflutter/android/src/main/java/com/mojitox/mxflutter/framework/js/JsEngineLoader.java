package com.mojitox.mxflutter.framework.js;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mojitox.mxflutter.framework.callback.ExecuteScriptCallback;
import com.mojitox.mxflutter.framework.callback.InvokeJSValueCallback;
import com.mojitox.mxflutter.framework.constants.MxConfig;
import com.mojitox.mxflutter.framework.utils.MxLog;

/**
 * create by ericpsun on 2021/1/14.
 */
public class JsEngineLoader {

    private static class SingletonHolder {

        private static final JsEngineLoader INSTANCE = new JsEngineLoader();
    }

    public static JsEngineLoader getInstance() {
        return SingletonHolder.INSTANCE;
    }

    private BaseJsEngine jsEngine;
    private boolean keepEngineInstance;
    private volatile boolean loadMainJsSuccess;
    private volatile boolean isLoadMainJs;
    @Nullable
    private InvokeJSValueCallback preloadMainJsCallback;
    private Context applicationContext;

    public JsEngineLoader() {

    }

    public void initApplication(@NonNull Context applicationContext) {
        this.applicationContext = applicationContext;
    }

    /**
     * 获取applicationContext
     */
    public Context getApplicationContext() {
        return applicationContext;
    }

    /**
     * 是否缓存js引擎
     */
    public void setKeepEngineInstance(boolean keepEngineInstance) {
        this.keepEngineInstance = keepEngineInstance;
    }

    /**
     * 预加载main js 不支持跨进程
     */
    public void preloadJsEngine(@NonNull Context applicationContext) {
        initApplication(applicationContext);
        if (jsEngine == null) {
            jsEngine = JsEngineProvider.createJsEngine();
            jsEngine.getJsExecutor().registerMxNativeJsFlutterApp();
            final String mainJsPath = MxConfig.getMainJsPath();
            isLoadMainJs = true;
            jsEngine.getJsExecutor().executeScriptPath(mainJsPath, new InvokeJSValueCallback() {
                @Override
                public void onSuccess(@Nullable Object value) {
                    isLoadMainJs = false;
                    loadMainJsSuccess = true;
                    if (preloadMainJsCallback != null) {
                        preloadMainJsCallback.onSuccess(value);
                    }
                    MxLog.d("JsEngineLoader", "loadMainJsSuccess");
                }

                @Override
                public void onError(Error error) {
                    isLoadMainJs = false;
                    loadMainJsSuccess = false;
                    if (preloadMainJsCallback != null) {
                        preloadMainJsCallback.onError(error);
                    }
                    MxLog.d("JsEngineLoader", "loadMainJsSuccess false:" + error.getCause().toString());
                }
            });
        }
    }

    /**
     * 正在加载main js
     */
    public boolean isLoadMainJs() {
        return isLoadMainJs;
    }

    /**
     * main js加载成功
     */
    public boolean isLoadMainJsSuccess() {
        return jsEngine != null && loadMainJsSuccess;
    }

    /**
     * 设置main js加载回调
     */
    public void setPreloadMainJsCallback(@Nullable InvokeJSValueCallback preloadMainJsCallback) {
        this.preloadMainJsCallback = preloadMainJsCallback;
    }

    /**
     * 获取js引擎
     */
    public BaseJsEngine getJsEngine() {
        if (jsEngine == null) {
            jsEngine = JsEngineProvider.createJsEngine();
        }
        return jsEngine;
    }

    /**
     * 重新加载js引擎
     */
    public void hotReloadJsEngine(@NonNull ExecuteScriptCallback callback) {
        loadMainJsSuccess = false;
        getJsEngine().hotReloadJsEngine(callback);
    }

    /**
     * 关闭并释放js引擎
     */
    public void closeEngine() {
        this.preloadMainJsCallback = null;
        if (jsEngine != null) {
            jsEngine.getJsExecutor().close(!keepEngineInstance, new ExecuteScriptCallback() {
                @Override
                public void onComplete(Object value) {
                    if (!keepEngineInstance) {
                        jsEngine = null;
                    }
                }
            });
        }
    }
}

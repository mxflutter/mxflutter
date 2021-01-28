package com.mojitox.mxflutter.framework.js;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mojitox.mxflutter.framework.callback.ExecuteScriptCallback;
import java.util.HashMap;

/**
 * create by ericpsun on 2020/11/12.
 */
public abstract class BaseJsEngine<T extends BaseJsExecutor> implements IJsEngine<T> {
    
    private T jsExecutor;
    @NonNull
    private final HashMap<String, Object> jsCallbackCache;
    private long jsCallbackCount = 0;

    public BaseJsEngine() {
        jsCallbackCache = new HashMap<>();
        initEngine();
    }

    @Override
    @NonNull
    public T getJsExecutor() {
        if (jsExecutor == null) {
            jsExecutor = createJsExecutor();
        }
        return jsExecutor;
    }

    /**
     * flutter引擎初始化
     */
    @Override
    public void onAttachedToFlutterEngine() {
        getJsExecutor().onAttachedToFlutterEngine();
    }

    /**
     * 存储js callback
     * @param function function
     */
    public String storeJsCallback(Object function) {
        String callbackId = "jsCallback_" + jsCallbackCount++;
        jsCallbackCache.put(callbackId, function);
        return callbackId;
    }

    /**
     * 存储js callback
     * @param channelName method channel name
     * @param function function
     */
    public void storeJsCallback(String channelName, Object function) {
        jsCallbackCache.put(channelName, function);
    }

    protected Object getJsCallBackWithCallbackId(String callbackId) {
        if (TextUtils.isEmpty(callbackId)) {
            return null;
        }
        return jsCallbackCache.get(callbackId);
    }

    /**
     * 重新加载js引擎，由于预加载逻辑统一由{@link JsEngineLoader}调用
     */
    protected void hotReloadJsEngine(@NonNull ExecuteScriptCallback callback) {
        getJsExecutor().close(true, new ExecuteScriptCallback() {
            @Override
            public void onComplete(Object value) {
                initEngine();
                callback.onComplete(value);
            }
        });
    }

    @NonNull
    protected abstract T createJsExecutor();

    protected abstract void initEngine();
}

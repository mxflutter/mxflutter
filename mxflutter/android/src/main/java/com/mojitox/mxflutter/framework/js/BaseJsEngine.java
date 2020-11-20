package com.mojitox.mxflutter.framework.js;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.HashMap;

/**
 * create by ericpsun on 2020/11/12.
 */
public abstract class BaseJsEngine<JsExecutor extends BaseJsExecutor> implements IJsEngine<JsExecutor> {
    
    private JsExecutor jsExecutor;
    @NonNull
    private final HashMap<String, Object> jsCallbackCache;
    private long jsCallbackCount = 0;

    public BaseJsEngine() {
        jsCallbackCache = new HashMap<>();
        initEngine();
    }

    @Override
    @NonNull
    public JsExecutor getJsExecutor() {
        if (jsExecutor == null) {
            jsExecutor = createJsExecutor();
        }
        return jsExecutor;
    }

    /**
     * @param function function
     */
    public String storeJsCallback(Object function) {
        String callbackId = "jsCallback_" + jsCallbackCount++;
        jsCallbackCache.put(callbackId, function);
        return callbackId;
    }

    /**
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
    
    @NonNull
    protected abstract JsExecutor createJsExecutor();

    protected abstract void initEngine();
}

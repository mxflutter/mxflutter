package com.mojitox.mxflutter.framework.js;

import com.mojitox.mxflutter.framework.runtime.ExecuteScriptCallback;
import io.flutter.plugin.common.MethodCall;
import java.util.Map;

/**
 * jsEngine抽象
 */
public interface IJsEngine<JsExecutor extends BaseJsExecutor> {

    JsExecutor getJsExecutor();

    void callJSCallbackFunction(String callbackId, Map params);

    void callJSCallbackFunctionWithChannelName(String channelName, MethodCall methodCall,
            ExecuteScriptCallback callback);
}

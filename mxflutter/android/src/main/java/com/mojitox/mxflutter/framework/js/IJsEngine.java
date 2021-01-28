package com.mojitox.mxflutter.framework.js;

import com.mojitox.mxflutter.framework.callback.ExecuteScriptCallback;
import io.flutter.plugin.common.MethodCall;
import java.util.Map;

/**
 * jsEngine抽象
 */
public interface IJsEngine<T extends BaseJsExecutor> {

    T getJsExecutor();

    void callJSCallbackFunction(String callbackId, Map params);

    void callJSCallbackFunctionWithChannelName(String channelName, MethodCall methodCall,
            ExecuteScriptCallback callback);

    void onAttachedToFlutterEngine();
}

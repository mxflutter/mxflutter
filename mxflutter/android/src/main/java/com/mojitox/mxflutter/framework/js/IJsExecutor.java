package com.mojitox.mxflutter.framework.js;

import androidx.annotation.NonNull;
import com.mojitox.mxflutter.framework.callback.ExecuteScriptCallback;
import com.mojitox.mxflutter.framework.constants.JsObjectType;

/**
 * create by ericpsun on 2020/11/6.
 */
public interface IJsExecutor<Runtime> {

    /**
     * 获取js引擎
     */
    Runtime getRuntime();

    void setRuntime(Runtime jsRuntime);

    /**
     * 关闭js引擎 清理main js & 业务js
     * @param cleanRunTime 是否清除runtime
     * @param callback 关闭回调
     */
    void close(boolean cleanRunTime, ExecuteScriptCallback callback);

    boolean assertInitSuccess(@NonNull JsObjectType jsObjectType);

    void registerMxNativeJsFlutterApp();
}

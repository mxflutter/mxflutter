package com.mojitox.mxflutter.framework.js;

import androidx.annotation.NonNull;
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

    void close();

    boolean assertInitSuccess(@NonNull JsObjectType jsObjectType);

    void registerMxNativeJsFlutterApp();
}

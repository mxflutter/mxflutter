package com.mojitox.mxflutter.framework.js.x5;

import android.text.TextUtils;
import com.mojitox.mxflutter.framework.constants.Const;
import com.mojitox.mxflutter.framework.utils.FileUtils;
import com.tencent.smtt.sdk.JsContext;
import com.tencent.smtt.sdk.JsValue;

/**
 * create by ericpsun on 2020/11/12.
 */
public class X5JsModule {
    
    //todo cache
    public static void require(String moduleClassName, String fullModulePath, JsContext runtime) {
        if (TextUtils.isEmpty(moduleClassName) || TextUtils.isEmpty(fullModulePath)) {
            return;
        }
        String script = FileUtils.getScriptFromPath(fullModulePath);
        String exportScript = String.format(Const.REQUIRE, script);
        JsValue value = runtime.evaluateScript(exportScript);
    }
}

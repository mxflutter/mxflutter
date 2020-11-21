package com.mojitox.mxflutter.framework.js;

import androidx.annotation.NonNull;
import com.eclipsesource.v8.V8ScriptException;
import com.mojitox.mxflutter.framework.js.v8.V8JsEngine;
import java.io.PrintWriter;
import java.io.StringWriter;

/**
 * create by ericpsun on 2020/11/20.
 */
public class JsEngineProvider {

    @NonNull
    public static BaseJsEngine createJsEngine() {
        return new V8JsEngine();
    }

    public static String getErrorStack(@NonNull Throwable throwable) {
        if (throwable instanceof V8ScriptException) {
            return ((V8ScriptException) throwable).getJSStackTrace();
        }
        StringWriter stringWriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}

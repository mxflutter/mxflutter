package com.mojitox.mxflutter.framework.js;

import androidx.annotation.NonNull;
import com.mojitox.mxflutter.framework.js.x5.X5Engine;
import java.io.PrintWriter;
import java.io.StringWriter;

/**
 * create by ericpsun on 2020/11/20.
 */
public class JsEngineProvider {

    @NonNull
    public static BaseJsEngine createJsEngine() {
        return new X5Engine();
    }

    public static String getErrorStack(@NonNull Throwable throwable) {
        StringWriter stringWriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}

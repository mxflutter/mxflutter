package com.mojitox.mxflutter.framework.js.x5;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.smtt.sdk.JsContext;
import java.util.Map;
import org.json.JSONObject;

/**
 * create by ericpsun on 2020/11/16.
 */
public class X5EvaluateUtil {

    @Nullable
    public static Object getCurrentAppObjectParam(@NonNull JsContext context, Object args) {
        Object jsValue;
        if (args instanceof Map) {
            JSONObject jsonObject = new JSONObject((Map) args);
            jsValue = context.evaluateScript("JSON.parse('" + jsonObject.toString() + "');");
        } else {
            jsValue = args;
        }
        return jsValue;
    }
}

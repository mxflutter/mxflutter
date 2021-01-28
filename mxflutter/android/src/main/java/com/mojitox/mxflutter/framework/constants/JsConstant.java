package com.mojitox.mxflutter.framework.constants;

import com.mojitox.mxflutter.framework.utils.MxLog;
import org.json.JSONException;
import org.json.JSONObject;

public class JsConstant {

    //常量需要注意与dart以及js看齐
    public static final String MAIN_JS_FOLDER = "/main";
    public static final String MAIN_JS = "/main.js";
    public static final String BUNDLE_JS = "bundle-";

    //X5使用 do not remove
    public static final String REQUIRE = "(function() { var module = { exports: {}}; var exports = "
            + "module.exports; \n%s\n; return module.exports; })();";
    public static final String NEW_OBJECT = "%s.%s = {}";
    public static final String SET_OBJECT = "globalThis.%s.%s = %s";
    public static final String INVOKE_JS_API = "%s.%s('%s')";
    public static final String FUNCTION_CALLBACK = "javascript:%s()";
    public static final String FUNCTION_WITH_PARAM_CALLBACK = "javascript:%s(%s)";

    public static String getInvokeJSMirrorResetData() {
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put(ApiName.METHOD_KEY, "invokeJSMirrorResetData");
        } catch (JSONException e) {
            MxLog.e("JsConstant", e.getMessage());
        }
        return jsonObject.toString();
    }
}

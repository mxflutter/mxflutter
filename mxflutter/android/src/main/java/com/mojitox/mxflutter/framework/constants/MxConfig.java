package com.mojitox.mxflutter.framework.constants;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mojitox.mxflutter.framework.js.JsEngineLoader;
import io.flutter.plugin.common.MethodCall;
import java.io.File;

public class MxConfig {

    public static final String ANDROID_ASSETS = "file:///android_asset/";
    public static final String MX_JS_EXT = ".js";

    private static final String MX_FLUTTER_ASSET_APP_JS_DEFAULT_FILE_NAME = "mxflutter_js_bundle";
    private static final String JS_APP_PATH_KEY = "jsAppPath";
    private static final String JS_APP_ASSERTS_KEY = "jsAppAssetsKey";

    private static String sJsAppPath = "";
    private static String sJsAppAssertsFileName = "";

    /**
     * 解析传入的js path
     */
    public static void setJsAppPath(@NonNull MethodCall methodCall) {
        if (methodCall.hasArgument(JS_APP_PATH_KEY)) {
            sJsAppPath = methodCall.argument(JS_APP_PATH_KEY);
        }
        if (methodCall.hasArgument(JS_APP_ASSERTS_KEY)) {
            sJsAppAssertsFileName = methodCall.argument(JS_APP_ASSERTS_KEY);
        }
    }

    /**
     * 优先返回设置的目录 获取业务侧js目录
     */
    public static String getBizJsPath() {
        if (!TextUtils.isEmpty(sJsAppPath)) {
            return sJsAppPath;
        }
        final File dir = JsEngineLoader.getInstance().getApplicationContext().getCacheDir();
        if (dir == null) {
            return null;
        }
        return dir.getAbsolutePath() + File.separator + (TextUtils.isEmpty(sJsAppAssertsFileName)
                ? MX_FLUTTER_ASSET_APP_JS_DEFAULT_FILE_NAME : sJsAppAssertsFileName);
    }

    /**
     * 下载器中做了随包main.js的拷贝兼容
     *
     * @return main js path
     */
    public static String getMainJsPath() {
        return getBizJsPath() + JsConstant.MAIN_JS_FOLDER + JsConstant.MAIN_JS;
    }
}

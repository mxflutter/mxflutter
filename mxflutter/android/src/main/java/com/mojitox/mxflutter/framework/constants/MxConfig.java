package com.mojitox.mxflutter.framework.constants;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mojitox.mxflutter.MXFlutterPlugin;
import io.flutter.plugin.common.MethodCall;

public class MxConfig {

    public static final String ANDROID_ASSETS = "file:///android_asset/";
    public static final String MX_JS_EXT = ".js";
    public static final String JS_LIB_ASSERTS = "js_lib";

    private static final String MX_FLUTTER_ASSET_APP_ROOT_PATH = ANDROID_ASSETS + "flutter_assets/";
    private static final String MX_FLUTTER_ASSET_APP_JS_DEFAULT_FILE_NAME = "mxflutter_js_bundle";
    private static final String JS_APP_PATH_KEY = "jsAppPath";
    private static final String JS_APP_ASSERTS_KEY = "jsAppAssetsKey";

    private static String sJsAppPath = "";
    private static String sJsAppAssertsFileName = "";
    private static String sJsMXFlutterLibMainJsPath = "";

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
        return MX_FLUTTER_ASSET_APP_ROOT_PATH + (TextUtils.isEmpty(sJsAppAssertsFileName)
                ? MX_FLUTTER_ASSET_APP_JS_DEFAULT_FILE_NAME : sJsAppAssertsFileName);
    }

    /**
     * 先判断appMainJsPath是否有main.js，优先加载用户设置的目录里的main.js,如果没有加载随包的main.js
     *
     * @return main js path
     */
    public static String getMainJsPath() {
        final String bizMainPath = getBizJsPath() + Const.MAIN_JS;
        boolean isOpen;
        try {
            MXFlutterPlugin.get().getApplicationContext().getAssets().openFd(bizMainPath);
            isOpen = true;
        } catch (Throwable e) {
            isOpen = false;
        }
        return isOpen ? bizMainPath : getJsLibPath() + Const.MAIN_JS;
    }

    /**
     * 设置随包的Main.js路径
     */
    public static void setJsLibPath(@NonNull String jsLibPath) {
        sJsMXFlutterLibMainJsPath = jsLibPath;
    }

    private static String getJsLibPath() {
        return MxConfig.ANDROID_ASSETS + sJsMXFlutterLibMainJsPath;
    }
}

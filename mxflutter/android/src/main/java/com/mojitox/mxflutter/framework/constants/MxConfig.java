package com.mojitox.mxflutter.framework.constants;

public class MxConfig {
    public static final String ANDROID_ASSETS = "file:///android_asset/";
    public static final String MX_FLUTTER_ASSET_APP_ROOT_PATH = ANDROID_ASSETS + "flutter_assets/mxflutter_js_src";
    public static final String MX_JS_EXT = ".js";

    public static String getJsPath() {
        return MX_FLUTTER_ASSET_APP_ROOT_PATH;
    }
}

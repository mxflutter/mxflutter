package com.mojitox.mxflutter.framework.constants;

public class Const {
    
    //常量需要注意与dart以及js看齐
    public static final String MAIN_JS = "/main.js";
    public static final String BUNDLE_JS = "bundle-";
    
    public static final String REQUIRE = "(function() { var module = { exports: {}}; var exports = module.exports; \n%s\n; return module.exports; })();";
    public static final String NEW_OBJECT = "%s.%s = {}";
    public static final String SET_OBJECT = "%s.%s = %s";
}

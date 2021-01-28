package com.mojitox.mxflutter.framework.executor;

public class TaskName {

    public static final String SETUP = "setup";
    public static final String REG_GLOBAL_OBJECT = "registerGlobalObject#";
    public static final String REG_JAVA_METHOD = "registerJavaMethod#";
    public static final String EXECUTE_SCRIPT_PATH = "executeScriptPath#";
    public static final String EXECUTE_SCRIPT = "executeScript#";
    public static final String CLOSE = "close#";
    public static final String INVOKE_JS_VALUE = "invokeJSValue#";
    public static final String INVOKE_JS_WITH_STRING = "invokeJSValueWithString#";
    public static final String INVOKE_JS_FUNCTION = "invokeJsFunction#";
    public static final String INVOKE_JS_FUNCTION_WITH_STRING = "invokeJsFunctionWithString#";
    public static final String RUN_APP_PAGE_NAME = "runAppWithPageName#";
    public static final String CALL_FLUTTER_EVENT = "callFlutterEventChannelReceiveBroadcastStreamListenInvoke#";
    public static final String CALL_FLUTTER_METHOD_CHANNEL_INVOKE = "callFlutterMethodChannelInvoke#";
    public static final String CALL_FLUTTER_COMMON_CHANNEL = "invokeFlutterCommonChannel#";
    public static final String CALL_FLUTTER_RELOAD_APP = "callFlutterReloadAppWithRouteName#";
    public static final String RUN_MX_DEBUG = "runMxDebug#";
    public static final String REQUIRE = "require#";


    public static String getExecuteScriptName(String script) {
        return TaskName.EXECUTE_SCRIPT + script.substring(0, 20);
    }
}

package com.mojitox.mxflutter.framework.constants;

/**
 * create by ericpsun on 2020/11/3. 常量需要注意与dart以及js看齐
 */
public class MethodChannelConstant {

    //channel name
    public static final String MX_FLUTTER_METHOD_CHANNEL_APP = "js_flutter.js_flutter_app_channel";
    public static final String MX_FLUTTER_METHOD_CHANNEL_APP_REBUILD = "js_flutter.js_flutter_app_channel.rebuild";
    public static final String MX_FLUTTER_METHOD_CHANNEL_APP_NAVIGATOR_PUSH =
            "js_flutter.js_flutter_app_channel.navigator_push";
    public static final String FLUTTER_METHOD_CHANNEL_NAME = "js_flutter.flutter_main_channel";
    public static final String FLUTTER_COMMON_BASIC_CHANNEL_NAME = "mxflutter.mxflutter_common_basic_channel";

    //method name
    public static final String MX_FLUTTER_JS_EXCEPTION_HANDLER = "mxflutterJSExceptionHandler";
    public static final String MX_FLUTTER_JS_ENGINE_INIT_SUCCESS_HANDLER = "mxflutterJSEngineInitSuccessHandler";
    public static final String NATIVE_CALL_METHOD = "nativeCall";
    public static final String CALL_JS = "callJS";
    public static final String REBUILD = "rebuild";
    public static final String NAVIGATOR_PUSH = "navigatorPush";
    public static final String CALL_NATIVE_RUN_JS_APP = "callNativeRunJSApp";
    public static final String CALL_JS_CALLBACK_FUNCTION = "callJsCallbackFunction";
    public static final String MX_LOG = "mxLog";
    public static final String FLUTTER_BRIDGE_METHOD_CHANNEL_INVOKE = "mxflutterBridgeMethodChannelInvoke";
    public static final String FLUTTER_BRIDGE_EVENT_CHANNEL_RECEIVE_BROADCAST_INVOKE
            = "mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke";
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.imatrixteam.jsflutter;

import com.imatrixteam.jsflutter.utils.FileUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import io.flutter.Log;
import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.StringCodec;

import static com.imatrixteam.jsflutter.MXJSFlutterApp.JSFLUTTER_SRC_DIR1;

public class MXJSFlutterEngine {

    public static final String TAG = "MXJSFlutterEngine";

    private String rootPath;
    private MXJSFlutterApp currentApp;

    private FlutterActivity mContext;
    private BinaryMessenger mFlutterEngine;

    private MXJSEngine mJsEngine;

    //Flutter通道
    private static final String FLUTTER_METHED_CHANNEL_NAME = "js_flutter.flutter_main_channel";
    private static final String FLUTTER_COMMON_BASIC_CHANNEL_NAME = "mxflutter.mxflutter_common_basic_channel";
    MethodChannel jsFlutterAppChannel;
    BasicMessageChannel jsFlutterCommonBasicChannel;

    private boolean isFlutterEngineIsDidRender;
    private ArrayList<MethodCall> callFlutterQueue;

    public MXJSFlutterEngine(FlutterActivity context, BinaryMessenger flutterEngine) {
        this.mContext = context;
        this.mFlutterEngine = flutterEngine;
        setup();
    }

    public void setJsEngine(MXJSEngine jsEngine) {
        mJsEngine = jsEngine;
    }

    public void setup() {
        rootPath = JSFLUTTER_SRC_DIR1;
        setupChannel();
//        callFlutterQueue = new ArrayList<>(1);
//        isFlutterEngineIsDidRender = true;
//        for (MethodCall call : callFlutterQueue) {
//            jsFlutterAppChannel.invokeMethod(call.method, call.arguments);
//        }
    }

    public void setupChannel() {
        jsFlutterAppChannel = new MethodChannel(mFlutterEngine, FLUTTER_METHED_CHANNEL_NAME);
        jsFlutterAppChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                if (methodCall.method.equals("callNativeRunJSApp")) {
                    String jsAppName = methodCall.<String>argument("jsAppName");
                    runApp(jsAppName);
                    result.success("success");
                } else if (methodCall.method.equals("callJsCallbackFunction")) {
                    String jsAppName = methodCall.<String>argument("callbackId");
                    Map param = methodCall.<Map>argument("param");
                    mJsEngine.callJSCallbackFunction(jsAppName, param);
                    result.success("success");
                } else if (methodCall.method.equals("mxLog")) {
                    Log.i(TAG, methodCall.arguments.toString());
                }
            }
        });

        jsFlutterCommonBasicChannel =  new BasicMessageChannel<>(mFlutterEngine, FLUTTER_COMMON_BASIC_CHANNEL_NAME, StringCodec.INSTANCE);
    }

    public void destroy() {
        if (currentApp != null) {
            currentApp.close();
        }
    }

    public boolean showPage(String pageName) {
        return true;
    }

    public void runApp(String appName) {
        if (currentApp != null) {
            currentApp.close();
            currentApp = null;
        }

        currentApp = new MXJSFlutterApp();
        currentApp.initWithAppName(mContext, rootPath + "/" + appName, rootPath, this);
        currentApp.runAppWithPageName();
    }

    public void callFlutterReloadAppWithJSWidgetData(String widgetData) {
        callFlutterReloadAppWithRouteName("MXJSWidget", widgetData);
    }

    public void callFlutterReloadAppWithRouteName(String routeName, String widgetData) {
        FileUtils.assertUiThread();

        if (routeName == null || widgetData == null) {
            return;
        }
        Map arg = new HashMap();

        arg.put("routeName", routeName);
        arg.put("widgetData", widgetData);
        MethodCall call = new MethodCall("reloadApp", arg);
//      if (isFlutterEngineIsDidRender) {
//          callFlutterQueue.add(call);
//          return;
//      }
        jsFlutterAppChannel.invokeMethod(call.method, call.arguments);
    }

    //顶层通用通道
    public void invokeFlutterCommonChannel(String callJSONStr, BasicMessageChannel.Reply Reply) {
        FileUtils.assertUiThread();
        jsFlutterCommonBasicChannel.send(callJSONStr, Reply);
    }

    public void callFlutterMethodChannelInvoke(String channelName, String methodName, Map params, MethodChannel.Result callback) {
        FileUtils.assertUiThread();

        Map arg = new HashMap();
        arg.put("channelName", channelName);
        arg.put("params", params);
        arg.put("methodName", methodName);

        MethodCall call = new MethodCall("mxflutterBridgeMethodChannelInvoke", arg);
        jsFlutterAppChannel.invokeMethod(call.method, call.arguments, callback);
    }

    public void callFlutterEventChannelReceiveBroadcastStreamListenInvoke(String channelName, String streamParam, String onDataId, String onErrorId, String onDoneId, boolean cancelOnError) {
        FileUtils.assertUiThread();
        Map arg = new HashMap();
        arg.put("channelName", channelName);
        arg.put("streamParam", streamParam);
        arg.put("onDataId", onDataId);
        arg.put("onErrorId", onErrorId);
        arg.put("onDoneId", onDoneId);
        arg.put("cancelOnError", cancelOnError);

        MethodCall call = new MethodCall("mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke", arg);
        jsFlutterAppChannel.invokeMethod(call.method, call.arguments);
    }
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.imatrixteam.jsflutter;

import android.content.Context;

import com.imatrixteam.jsflutter.utils.FileUtils;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

import io.flutter.Log;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

import static com.imatrixteam.jsflutter.MXJSFlutterApp.JSFLUTTER_SRC_DIR1;

public class MXJSFlutterEngine {

    public static final String TAG = "MXJSFlutterEngine";

    private String rootPath;
    private MXJSFlutterApp currentApp;

    private Context mContext;
    private BinaryMessenger mFlutterEngine;

    private MXJSEngine mJsEngine;

    //Flutter通道
    private static final String FLUTTER_METHED_CHANNEL_NAME = "js_flutter.flutter_main_channel";
    MethodChannel jsFlutterAppChannel;

    private boolean isFlutterEngineIsDidRender;
    private ArrayList<MethodCall> callFlutterQueue;

    public MXJSFlutterEngine(Context context, BinaryMessenger flutterEngine) {
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
                    String param = methodCall.<String>argument("param");
                    callJSCallbackFunction(jsAppName, param);
                    result.success("success");
                } else if (methodCall.method.equals("mxLog")) {
                    Log.i(TAG, methodCall.arguments.toString());
                }
            }
        });
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

        JSModule.clearModuleCache();

        currentApp = new MXJSFlutterApp();
        currentApp.initWithAppName(mContext, rootPath + "/" + appName, rootPath, this);
        currentApp.runAppWithPageName();
    }

    public void callJSCallbackFunction(String callbackId, String params) {
        //todo
    }

    public void callFlutterReloadAppWithJSWidgetData(String widgetData) {
        callFlutterReloadAppWithRouteName("MXJSWidget", widgetData);
    }

    public void callFlutterReloadAppWithRouteName(String routeName, String widgetData) {
        FileUtils.assertUiThread();

        if (routeName == null || widgetData == null) {
            return;
        }
        try {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("routeName", routeName);
            jsonObject.put("widgetData", widgetData);
            MethodCall call = new MethodCall("reloadApp", jsonObject.toString());
//            if (isFlutterEngineIsDidRender) {
//                callFlutterQueue.add(call);
//                return;
//            }
            jsFlutterAppChannel.invokeMethod(call.method, call.arguments);
        } catch (JSONException e) {
            Log.e(TAG, "", e);
        }
    }

    public void callFlutterMethodChannelInvoke(String channelName, String methodName, JSONObject params, MethodChannel.Result callback) {
        FileUtils.assertUiThread();

        try {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("channelName", channelName);
            jsonObject.put("methodName", methodName);
            jsonObject.put("params", params);
            MethodCall call = new MethodCall("mxflutterBridgeMethodChannelInvoke", jsonObject.toString());
            jsFlutterAppChannel.invokeMethod(call.method, call.arguments, callback);
        } catch (JSONException e) {
            Log.e(TAG, "", e);
        }
    }

    public void callFlutterEventChannelReceiveBroadcastStreamListenInvoke() {
        FileUtils.assertUiThread();

        //todo
    }
}

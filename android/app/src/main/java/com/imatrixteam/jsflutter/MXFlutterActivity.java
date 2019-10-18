package com.imatrixteam.jsflutter;

import android.os.Bundle;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MXFlutterActivity extends FlutterActivity {

  MXJSFlutterEngine mMXJSFlutterEngine;

  private boolean isFlutterEngineIsDidRender;
  private ArrayList<MethodCall> callFlutterQueue;

  private String jsAppName = "";

  //Flutter通道
  private static final String FLUTTER_METHED_CHANNEL_NAME = "js_flutter.flutter_main_channel";
  MethodChannel jsFlutterAppChannel;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setup();
    GeneratedPluginRegistrant.registerWith(this);
  }

  @Override
  protected void onDestroy() {
    super.onDestroy();
    mMXJSFlutterEngine.unsetup();
  }

  public void setup(){
    callFlutterQueue = new ArrayList<>(2);
    isFlutterEngineIsDidRender = true;
    for(MethodCall call : callFlutterQueue){
      jsFlutterAppChannel.invokeMethod(call.method,call.arguments);
    }
    MXJSEngine.getInstance(this);
    mMXJSFlutterEngine = MXJSFlutterEngine.getInstance(this);
    setupChannel();
  }

  public void setupChannel(){
    jsFlutterAppChannel = new MethodChannel(this.getFlutterView(),FLUTTER_METHED_CHANNEL_NAME);
    jsFlutterAppChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
      @Override
      public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if(methodCall.method.equals("callNativeRunJSApp")){
          String jsAppName = methodCall.<String>argument("jsAppName");
          String pageName = methodCall.<String>argument("pageName");
          callNativeRunJSApp(jsAppName, pageName);
          result.success("success");
        }
      }
    });
  }

  private void callNativeRunJSApp(String jsAppName, String pageName){
    mMXJSFlutterEngine.runApp(jsAppName, pageName);
  }

  public void callFlutterReloadAppWithJSWidgetData(String widgetData){
    callFlutterReloadAppWithRouteName("MXJSWidget",widgetData);
  }

  public void callFlutterReloadAppWithRouteName(String routeName, String widgetData){
    if(routeName == null || widgetData == null){
      return;
    }
    try {
      JSONObject jsonObject = new JSONObject();
      jsonObject.put("routeName",routeName);
      jsonObject.put("widgetData",widgetData);
      MethodCall call = new MethodCall("reloadApp",jsonObject.toString());
      if(isFlutterEngineIsDidRender){
        callFlutterQueue.add(call);
        return;
      }
      jsFlutterAppChannel.invokeMethod(call.method,call.arguments);
    } catch (JSONException e) {
      e.printStackTrace();
    }
  }



}

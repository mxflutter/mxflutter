//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mx_js_flutter_common.dart';
import 'mx_json_to_dart.dart';
import 'mx_js_mirror_obj_mgr.dart';
import 'mx_js_framework.dart';

///*MXJSFluttr的对外接口类
///简单两步接入MXFlutter，打开JS编写的页面。
///1. 启动运行JS代码 'MXJSFlutter.getInstance().runJSApp();'
///2. Push JS页面
///
/// '''dart
///
///      Navigator.push(
///          context,
///          MaterialPageRoute(
///              builder: (context) => MXJSPageWidget(
///                  jsWidgetName: "MXJSWidgetHomePage")));
///
/// '''
///
abstract class MXJSFlutter {
  static MXJSFlutter _instance;

  ///获取MXJSFlutter
  ///MXFlutter的大部分接口通过MXJSFlutter来暴露
  static MXJSFlutter getInstance() {
    if (_instance == null) {
      _instance = MXJSFlutterLib();
    }

    return _instance;
  }

  ///由Flutter 代码启动JSApp。 可以用在先显示Flutter页面，然后Push路由跳转到JS页面
  ///启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面
  ///
  ///@param jsAppPath jsApp root path ，JS业务代码放置在一个文件夹中，并且有main.js文件。jsAppPath和jsAppAssetsKey根据场景二选一
  ///@param jsAppAssetsKey 使用pubspec.yaml里的AssetsKey配置来设置jsAppPath，默认为flutter工程下，与lib，ios同级目录的mxflutter_js_src/文件夹下
  ///@param jsAppSearchPathList js App require 的搜索路径，一般无需设置，默认jsApp root path
  ///@param jsAppSearchPathWithAssetsKeyList js App require 的搜索路径，使用pubspec.yaml里的AssetsKey配置来设置，一般无需设置，默认jsApp root path
  ///@returns void
  ///@throws Error if Path error
  ///
  runJSApp(
      {String jsAppPath = "",
      String jsAppAssetsKey = "mxflutter_js_src",
      List<String> jsAppSearchPathList,
      List<String> jsAppSearchPathWithAssetsKeyList});

  ///从Flutter Push一个 JS写的页面
  ///@param widgetName: "widgetName",在mxflutter_js_src/main.js  MyApp::createJSWidgetWithName 函数中使用
  ///MyApp::createJSWidgetWithName 通过 widgetName 来创建对应的JSWidget
  /// 通常你应该使用更高层的API MXJSPageWidget 包装类来显示JS Widget 请参考 MXJSPageWidget 的用法
  ///
  /// '''dart
  ///
  ///      Navigator.push(
  ///          context,
  ///          MaterialPageRoute(
  ///              builder: (context) => MXJSPageWidget(
  ///                  jsWidgetName: "MXJSWidgetHomePage")));
  ///
  /// '''
  ///
  dynamic navigatorPushWithName(String widgetName, Key widgetKey,
      {ThemeData themeData,
      MediaQueryData mediaQueryData,
      IconThemeData iconThemeData});

  ///flutter->js  顶层通用调用通道
  dynamic invokeJSCommonChannel(MethodCall jsMethodCall);

  ///注册JS call dart Proxy
  void registerMirrorObjProxy(Map<String, CreateJsonObjProxyFun> string2CreateJsonObjProxyFunMap);
}

typedef Future<dynamic> _MXChannelFun(dynamic arguments);

///供mxflutter库内部使用
///MXJSFlutterLib Native层MXJSFlutterEngine的通讯代理类
///负责配置，运行MXJSFlutterApp，衔接Flutter，Native，JS 三方
class MXJSFlutterLib implements MXJSFlutter {
  ///获取MXJSFlutterLib
  ///供mxflutter库内部使用
  static MXJSFlutterLib getInstance() {
    return MXJSFlutter.getInstance();
  }

  //公开属性
  MXJSFlutterApp currentApp;

  MethodChannel _jsFlutterMainChannel;
  //通用js <===bridge===> flutter 通道
  BasicMessageChannel<String> _jsFlutterCommonBasicChannel;
  Map<String, _MXChannelFun> _jsFlutterMainChannelFunRegMap = {};
  bool _isSetup = false;

  MXJSFlutterLib() {
    setup();
  }

  setup() {
    if (_isSetup) {
      return;
    }
    //需要WidgetsFlutterBinding已调用
    WidgetsFlutterBinding.ensureInitialized();
    setupChannel();

    _isSetup = true;
  }

  setupChannel() {
    //[Native->flutter]
    _jsFlutterMainChannel = MethodChannel("js_flutter.flutter_main_channel");
    _jsFlutterMainChannel.setMethodCallHandler((MethodCall call) async {
      MXJSLog.log("_jsFlutterMainChannel_methodHandler:");
      MXJSLog.log(call);

      Function fun = _jsFlutterMainChannelFunRegMap[call.method];
      return fun(call.arguments);
    });

    _jsFlutterCommonBasicChannel = const BasicMessageChannel(
        'mxflutter.mxflutter_common_basic_channel', StringCodec());
    _jsFlutterCommonBasicChannel
        .setMessageHandler((String message) => Future<String>(() {
              return js2flutterSubCallChannel(message);
            }));

    //Method reg
    _jsFlutterMainChannelFunRegMap["reloadApp"] = reloadApp;

    //------mxflutterBridge [js ->native-> flutter]  subcmd------
    //由js2flutterSubCallChannel调用
    _jsFlutterMainChannelFunRegMap["mxfJSBridgeCreateMirrorObj"] =
        mxfJSBridgeCreateMirrorObj;
    _jsFlutterMainChannelFunRegMap["mxfJSBridgeInvokeMirrorObjWithCallback"] =
        mxfJSBridgeInvokeMirrorObjWithCallback;
    _jsFlutterMainChannelFunRegMap["mxflutterBridgeMethodChannelInvoke"] =
        mxflutterBridgeMethodChannelInvoke;
    _jsFlutterMainChannelFunRegMap[
            "mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke"] =
        mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke;

    _jsFlutterMainChannelFunRegMap["mxfJSBridgeRemoveMirrorObjsRef"] =
        mxfJSBridgeRemoveMirrorObjsRef;

    //------mxflutterBridge------
  }

  ///由Flutter 代码启动JSApp。 可以用在先显示Flutter页面，然后Push路由跳转到JS页面
  ///启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面
  ///
  /// @param jsAppPath jsApp root path ，JS业务代码放置在一个文件夹中，并且有main.js文件。jsAppPath和jsAppAssetsKey根据场景二选一
  /// @param jsAppAssetsKey 使用pubspec.yaml里的AssetsKey配置来设置jsAppPath，默认为flutter工程下，与lib，ios同级目录的mxflutter_js_src/文件夹下
  /// @param jsAppSearchPathList js App require 的搜索路径，一般无需设置，默认jsApp root path
  /// @param jsAppSearchPathWithAssetsKeyList js App require 的搜索路径，使用pubspec.yaml里的AssetsKey配置来设置，一般无需设置，默认jsApp root path
  /// @returns void
  /// @throws Error if Path error
  @override
  runJSApp(
      {String jsAppPath = "",
      String jsAppAssetsKey = "mxflutter_js_src",
      List<String> jsAppSearchPathList,
      List<String> jsAppSearchPathWithAssetsKeyList}) {
    Map<String, dynamic> args = {
      "jsAppAssetsKey": jsAppAssetsKey,
      "jsAppPath": jsAppPath
    };

    if (jsAppSearchPathList != null) {
      args["jsAppSearchPathList"] = jsAppSearchPathList;
    }

    if (jsAppSearchPathWithAssetsKeyList != null) {
      args["jsAppSearchPathWithAssetsKeyList"] =
          jsAppSearchPathWithAssetsKeyList;
    }

    //清理flutter侧的对象映射
    _clearMX();

    _jsFlutterMainChannel.invokeMethod("callNativeRunJSApp", args);

    //暂时只支持一个
    currentApp = MXJSFlutterApp(jsAppAssetsKey);
  }

  ///清理flutter侧的对象映射
  _clearMX() {
    MXJSMirrorObjMgr.getInstance().clearMirrorObjects();
  }

  callJsCallbackFunction(String callbackId, param) {
    var args = {"callbackId": callbackId, "param": param};
    _jsFlutterMainChannel.invokeMethod("callJsCallbackFunction", args);
  }

  ///js->flutter 顶层通用调用通道
  ///args参数为JSON字符串argsJSONStr
  Future<String> js2flutterSubCallChannel(argsJSONStr) async {
    MXJSLog.log("js2flutterSubCallChannel");
    MXJSLog.log(argsJSONStr);

    Map args = json.decode(argsJSONStr);
    String funcName = args["funcName"];
    dynamic funArgs = args["args"];

    Function fun = _jsFlutterMainChannelFunRegMap[funcName];
    return fun(funArgs);
  }

  ///flutter->js  顶层通用调用通道
  dynamic invokeJSCommonChannel(MethodCall jsMethodCall) async {
    MXJSLog.log("invokeJSCommonChannel:${jsMethodCall.method}");

    var callInfo = {
      "method": jsMethodCall.method,
      "arguments": jsMethodCall.arguments,
    };

    String sendStr = json.encode(callInfo);
    return _jsFlutterCommonBasicChannel.send(sendStr);
  }

  //Mirror Sys
  invokeJSMirrorObj(
      {dynamic mirrorID,
      String functionName,
      String callbackID,
      dynamic args}) async {
    Map callInfo = {
      "mirrorID": mirrorID,
      "funcName": functionName,
      "callbackID": callbackID,
      "args": args
    };

    MethodCall jsMethodCall = MethodCall("invokeJSMirrorObj", callInfo);

    invokeJSCommonChannel(jsMethodCall);
  }

  Future<String> mxfJSBridgeCreateMirrorObj(argMap) async {
    MXJsonObjToDartObject.jsonToDartObj(argMap);
    return null;
  }

  Future<String> mxfJSBridgeInvokeMirrorObjWithCallback(args) async {
    if (args == null) {
      return null;
    }

    String mirrorID = args["mirrorID"];
    dynamic mirrorObj =
        MXJSMirrorObjMgr.getInstance().getMirrorObjectFromID(mirrorID);

    if (mirrorObj != null) {
      String className = args["className"];
      String funcName = args["funcName"];
      Map funArgs = args["args"];

      MXJsonObjProxy proxy =
          MXJsonObjToDartObject.getInstance().getJSObjProxy(className);

      if (proxy != null) {
        Completer<String> completer = new Completer<String>();
        proxy.jsInvokeMirrorObjFunction(mirrorID, mirrorObj, funcName, funArgs,
            callback: (result) {
          var returnJSONStr = result;
          if (result != null && !(result is String)) {
            returnJSONStr = json.encode(result);
          }

          //callJsCallbackFunction(onResultId, params);
          completer.complete(returnJSONStr);
        });

        return completer.future;
      }
    }

    return null;
  }

  Future<dynamic> mxfJSBridgeRemoveMirrorObjsRef(dynamic mirrorIDList) {
    MXJSMirrorObjMgr.getInstance().removeMirrorObjects(mirrorIDList);
    return null;
  }

  Future<dynamic> mxflutterBridgeMethodChannelInvoke(args) async {
    var channelName = args["channelName"];
    var methodName = args["methodName"];
    var params = args["params"];

    var flutterChannel = MethodChannel(channelName);

    try {
      dynamic result = await flutterChannel.invokeMethod(methodName, params);
      return result;
    } on PlatformException {}
  }

  Future<dynamic> mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke(
      args) async {
    var channelName = args["channelName"];
    var streamParam = args["streamParam"];
    var onDataId = args["onDataId"];
    var onErrorId = args["onErrorId"];
    var onDoneId = args["onDoneId"];
    var cancelOnError = args["cancelOnError"];

    void onData(Object event) {
      callJsCallbackFunction(onDataId, event);
    }

    void onError(Object event) {
      callJsCallbackFunction(onErrorId, event);
    }

    void onDone() {
      callJsCallbackFunction(onDoneId, {});
    }

    var flutterEventChannel = EventChannel(channelName);
    if (streamParam == "") {
      flutterEventChannel.receiveBroadcastStream().listen(onData,
          onError: onError, onDone: onDone, cancelOnError: cancelOnError);
    } else {
      flutterEventChannel.receiveBroadcastStream(streamParam).listen(onData,
          onError: onError, onDone: onDone, cancelOnError: cancelOnError);
    }
  }

  //js->flutter 显示js页面
  //TODO：此API功能还不完善，不支持MediaQueryData的传递
  Future<dynamic> reloadApp(args) async {
    String routeName = args["routeName"];

    if (routeName == "MXJSWidget") {
      String widgetDataStr = args["widgetData"];
      var widgetData = json.decode(widgetDataStr);

      try {
        var w = currentApp.createJSWidget(widgetData);
        currentApp.runJSApp(w);
      } catch (e) {
        MXJSLog.log("reloadApp error:$e");
        rethrow;
      }
    } else {
      //runApp(MyApp());
    }
  }

  ///API - 由MXJSFlutter类提供的API，是MXJS页面的入口API
  ///从Flutter Dart代码 Push一个 JS写的页面
  ///*重要：此API是从Dart侧打开一个JS页面的入口函数，将创建一个RootWidget，MXFlutter 的RootWidget对外只显示一个
  ///先创建一个空的MXJSStatefulWidget，调用JS，等待JS层widgetData来刷新页面
  dynamic navigatorPushWithName(String widgetName, Key widgetKey,
      {ThemeData themeData,
      MediaQueryData mediaQueryData,
      IconThemeData iconThemeData}) {
    dynamic jsWidget = currentApp?.navigatorPushWithName(widgetName, widgetKey,
        themeData: themeData,
        mediaQueryData: mediaQueryData,
        iconThemeData: iconThemeData);

    return jsWidget;
  }

  ///API- 由MXJSFlutter类提供的API，是MXJS页面的入口API
  ///JS->Flutter
  ///js侧调用Flutter，传递Json Widget Tree，创建JSWidget
  dynamic createJSWidget(Map widgetData) {
    dynamic jsWidget = currentApp?.createJSWidget(widgetData);
    return jsWidget;
  }

  mxLog(String log) {
    _jsFlutterMainChannel?.invokeMethod("mxLog", log);
  }

  void registerMirrorObjProxy(Map<String, CreateJsonObjProxyFun> string2CreateJsonObjProxyFunMap) {
    MXJsonObjToDartObject.getInstance()
        .registerProxy(string2CreateJsonObjProxyFunMap);
  }
}

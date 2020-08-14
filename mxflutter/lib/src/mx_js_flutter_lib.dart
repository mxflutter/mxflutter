//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mx_js_flutter.dart';
import 'mx_js_flutter_common.dart';
import 'mx_json_to_dart.dart';
import 'mx_js_mirror_obj_mgr.dart';
import 'mx_js_flutter_app.dart';
import 'package:mxflutter/src/mirror/mx_mirror.dart';

typedef Future<dynamic> _MXChannelFun(dynamic arguments);

/// 供mxflutter库内部使用
/// MXJSFlutterLib Native层MXJSFlutterEngine的通讯代理类
/// 负责配置，运行MXJSFlutterApp，衔接Flutter，Native，JS 三方
class MXJSFlutterLib implements MXJSFlutter {
  /// 获取MXJSFlutterLib,供mxflutter库内部使用
  static MXJSFlutterLib getInstance() {
    return MXJSFlutter.getInstance();
  }

  MXJSFlutterApp currentApp;

  // _mainChannel 运行JS的通道
  MethodChannel _mainChannel;
  // 业务逻辑通用js <===bridge===> flutter 通道
  BasicMessageChannel<String> _commonBasicChannel;
  Map<String, _MXChannelFun> _name2FunMap = {};
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

    // 注册MXMirrorFrameworkFunc方法
    registerMirrorFrameworkFunc();

    _isSetup = true;
  }

  setupChannel() {
    //[Native->flutter]
    _mainChannel = MethodChannel("js_flutter.flutter_main_channel");
    _mainChannel.setMethodCallHandler((MethodCall call) async {
      MXJSLog.log("_jsFlutterMainChannel_methodHandler:");
      MXJSLog.log(call);

      Function fun = _name2FunMap[call.method];
      return fun(call.arguments);
    });

    _commonBasicChannel = const BasicMessageChannel(
        'mxflutter.mxflutter_common_basic_channel', StringCodec());
    _commonBasicChannel
        .setMessageHandler((String message) => Future<String>(() {
              return js2flutterSubCallChannel(message);
            }));

    // Method reg
    // _name2FunMap["reloadApp"] = reloadApp;

    // ------mxflutterBridge [js ->native-> flutter]  subcmd------
    // 由js2flutterSubCallChannel调用
    _name2FunMap["mxfJSBridgeCreateMirrorObj"] =
        mxfJSBridgeCreateMirrorObj;
    _name2FunMap["mxfJSBridgeInvokeMirrorObjWithCallback"] =
        mxfJSBridgeInvokeMirrorObjWithCallback;
    _name2FunMap["mxflutterBridgeMethodChannelInvoke"] =
        mxflutterBridgeMethodChannelInvoke;
    _name2FunMap[
            "mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke"] =
        mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke;

    _name2FunMap["mxfJSBridgeRemoveMirrorObjsRef"] =
        mxfJSBridgeRemoveMirrorObjsRef;

    // ------mxflutterBridge------
  }

  /// 由Flutter 代码启动JSApp。 可以用在先显示Flutter页面，然后Push路由跳转到JS页面
  /// 启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面
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

    _mainChannel.invokeMethod("callNativeRunJSApp", args);

    //暂时只支持一个
    currentApp = MXJSFlutterApp(jsAppAssetsKey);
  }

  /// 清理flutter侧的对象映射
  _clearMX() {
    MXMirrorObject.getInstance().clearAllMirrorObjects();
  }

  callJsCallbackFunction(String callbackId, param) {
    var args = {"callbackId": callbackId, "param": param};
    _mainChannel.invokeMethod("callJsCallbackFunction", args);
  }

  /// js->flutter 顶层通用调用通道
  /// args参数为Json字符串argsJsonStr
  Future<String> js2flutterSubCallChannel(argsJsonStr) async {
    MXJSLog.log("js2flutterSubCallChannel");
    MXJSLog.log(argsJsonStr);

    Map args = json.decode(argsJsonStr);
    String funcName = args["funcName"];
    dynamic funArgs = args["args"];

    Function fun = _name2FunMap[funcName];
    return fun(funArgs);
  }

  /// flutter->js  顶层通用调用通道
  @override
  dynamic invokeJSCommonChannel(MethodCall jsMethodCall) async {
    MXJSLog.log("invokeJSCommonChannel:${jsMethodCall.method}");

    var callInfo = {
      "method": jsMethodCall.method,
      "arguments": jsMethodCall.arguments,
    };

    String sendStr = json.encode(callInfo);
    return _commonBasicChannel.send(sendStr);
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
        MXMirrorObject.getInstance().mirrorObject(mirrorID);

    // 采用Function方式调用，对象的方法名称，要通过className#funcName拼接
    String funcName = MXMirrorFunc.getInstance().objectFuncName(args);
    if (MXMirrorFunc.getInstance().canInvoke(funcName)) {
      Completer<String> completer = new Completer<String>();
      Map<String, dynamic> newArgs = new Map<String, dynamic>();

      // 添加参数
      newArgs["mirrorObj"] = mirrorObj;
      newArgs["funcName"] = funcName;
      newArgs.addAll(args["args"]);

      MXMirrorFunc.getInstance().invokeWithCallback(newArgs, (result) {
        var returnJsonStr = result;
        if (result != null && !(result is String)) {
          returnJsonStr = json.encode(result);
        }

        completer.complete(returnJsonStr);
      });

      return completer.future;
    } 
    //TODO: 原有方法调用，后续要优化掉
    else {
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
  }

  Future<dynamic> mxfJSBridgeRemoveMirrorObjsRef(dynamic mirrorIDList) {
    MXMirrorObject.getInstance().removeMirrorObjectList(mirrorIDList);
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


  /// API - JS页面的入口API
  /// 从 Flutter Push一个 JS 写的页面
  /// *重要：此API是从Dart侧打开一个JS页面的入口函数，将创建一个RootWidget，MXFlutter 的RootWidget对外只显示一个
  /// 先创建一个空的MXJSStatefulWidget，调用JS，等待JS层widgetData来刷新页面
  @override
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


  mxLog(String log) {
    _mainChannel?.invokeMethod("mxLog", log);
  }

  @override
  void registerMirrorObjProxy(Map<String, CreateJsonObjProxyFun> string2CreateJsonObjProxyFunMap) {
    MXJsonObjToDartObject.getInstance()
        .registerProxy(string2CreateJsonObjProxyFunMap);
  }
}

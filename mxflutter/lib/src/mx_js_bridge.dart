//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';

import 'mx_js_flutter_common.dart';
import 'mx_json_to_dart.dart';
import './mirror/mx_mirror.dart';

typedef Future<dynamic> _MXChannelFun(dynamic arguments);

/// 负责衔接Flutter，Native，JS 三方
class MXJSBridge {
  MXJSBridge() {
    setup();
  }

  static MXJSBridge _instance;

  static MXJSBridge getInstance() {
    if (_instance == null) {
      _instance = MXJSBridge();
    }
    return _instance;
  }

  /// Flutter 和 JS 互调顶层通用通道
  BasicMessageChannel<String> _commonBasicChannel;
  Map<String, _MXChannelFun> _name2FunMap = {};
  bool _isSetup = false;

  setup() {
    if (_isSetup) {
      return;
    }

    _setupChannel();
    // 注册MXMirrorFrameworkFunc方法
    registerMirrorFrameworkFunc();

    _isSetup = true;
  }

  _setupChannel() {
    // Method reg
    _setupName2FunMap();
    _setupCommonBasicChannel();
  }

  /// Flutter 和 JS 互调顶层通用通道
  _setupCommonBasicChannel() {
    _commonBasicChannel = const BasicMessageChannel(
        'mxflutter.mxflutter_common_basic_channel', StringCodec());
    _commonBasicChannel.setMessageHandler(commonBasicChannelHandler);
  }

  /// JS->Flutter 顶层调用通道，处理JS的调用
  /// args参数为Json字符串argsJsonStr
  Future<String> commonBasicChannelHandler(argsJsonStr) async {
    MXJSLog.log("commonBasicChannelHandler:");
    MXJSLog.log(argsJsonStr);

    Map args = json.decode(argsJsonStr);
    String funcName = args["funcName"];
    dynamic funArgs = args["args"];

    Function fun = _name2FunMap[funcName];
    return fun(funArgs);
  }

  /// Flutter->JS  顶层通用调用通道，调用JS的函数
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

  /// JS -> Flutter 开放给JS调用
  _setupName2FunMap() {
    // 由commonBasicChannelHandler调用
    _name2FunMap["mxfJSBridgeCreateMirrorObj"] = mxfJSBridgeCreateMirrorObj;
    _name2FunMap["mxfJSBridgeInvokeMirrorObjWithCallback"] =
        mxfJSBridgeInvokeMirrorObjWithCallback;
    _name2FunMap["mxfJSBridgeRemoveMirrorObjsRef"] =
        mxfJSBridgeRemoveMirrorObjsRef;
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
    dynamic mirrorObj = MXMirrorObject.getInstance().mirrorObject(mirrorID);

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
          proxy.jsInvokeMirrorObjFunction(
              mirrorID, mirrorObj, funcName, funArgs, callback: (result) {
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

}

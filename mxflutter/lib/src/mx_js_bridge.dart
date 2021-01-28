//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

import './mirror/mx_mirror.dart';
import 'mx_common.dart';

typedef _MXChannelFun = Future<String> Function(dynamic arguments);

/// 负责Flutter，Native，JS 三方的衔接
class MXJSBridge {
  static MXJSBridge _instance;

  /// Flutter 和 JS 互调顶层通用通道。
  BasicMessageChannel<String> _commonBasicChannel;
  Map<String, _MXChannelFun> _name2FunMap = {};
  bool _isSetup = false;

  static MXJSBridge getInstance() {
    if (_instance == null) {
      _instance = MXJSBridge();
    }
    return _instance;
  }

  MXJSBridge() {
    _setup();
  }

  /// Flutter->JS。顶层通用调用通道，调用JS的函数。
  Future<String> invokeJSCommonChannel(MethodCall jsMethodCall) async {
    MXJSLog.log("invokeJSCommonChannel:${jsMethodCall.method}");

    var callInfo = {
      "method": jsMethodCall.method,
      "arguments": jsMethodCall.arguments,
    };

    String sendStr = json.encode(callInfo);
    return _commonBasicChannel.send(sendStr);
  }

  /// JS->Flutter 顶层调用通道，处理来自JS的调用。
  /// args参数为Json字符串[argsJsonStr]。
  Future<String> commonBasicChannelHandler(argsJsonStr) async {
    MXJSLog.log("commonBasicChannelHandler: $argsJsonStr");

    Map args = json.decode(argsJsonStr);
    String funcName = args["funcName"];
    dynamic funArgs = args["args"];

    Function fun = _name2FunMap[funcName];
    return fun(funArgs);
  }

  /// JS -> Flutter。调用MirrorObject方法。
  Future<String> mxJSBridgeInvokeMirrorObjWithCallback(args) async {
    if (args == null) {
      return null;
    }

    Completer<String> completer = new Completer<String>();
    MXMirror.getInstance().invokeFunctionWithCallback(args, (result) {
      var returnJsonStr = result;
      if (result != null && !(result is String) && !(result is Future<String>)) {
        // TODO: 此处会要求返回值为string类型，否则会因为encode异常。
        returnJsonStr = json.encode(result);
      }

      completer.complete(returnJsonStr);
    });
    return completer.future;
  }

  /// JS -> Flutter。释放MirrorObject。
  Future<String> mxJSBridgeReleaseMirrorObj(argMap) async {
    if (argMap == null && argMap["mirrorID"] == null) {
      return null;
    }

    MXMirror.getInstance().removeMirrorObject(argMap["mirrorID"]);
    return null;
  }

  /// JS -> Flutter。创建MirrorObject。
  Future<String> mxJSBridgeCreateMirrorObj(argMap) async {
    // 将args字的所有字段都赋值到argMap中。
    Map args = argMap["args"];

    if (args != null && args is Map) {
      argMap.addAll(args);
    }

    MXMirror.getInstance().jsonToDartObj(argMap, buildOwner: null);
    return null;
  }

  // 重新创建channel。
  resetupChannel() {
    _setupCommonBasicChannel();
  }

  /// 初始化创建。
  _setup() {
    if (_isSetup) {
      return;
    }

    _setupChannel();
    _isSetup = true;
  }

  /// 创建通道。
  _setupChannel() {
    // Method reg.
    _setupName2FunMap();
    _setupCommonBasicChannel();
  }

  /// Flutter 和 JS 互调顶层通用通道。
  _setupCommonBasicChannel() {
    _commonBasicChannel = BasicMessageChannel('mxflutter.mxflutter_common_basic_channel', StringCodec());
    _commonBasicChannel.setMessageHandler(commonBasicChannelHandler);
  }

  /// JS -> Flutter 开放给JS调用，由 commonBasicChannelHandler 调用。
  _setupName2FunMap() {
    _name2FunMap["mxJSBridgeInvokeMirrorObjWithCallback"] = mxJSBridgeInvokeMirrorObjWithCallback;
    _name2FunMap["mxJSBridgeReleaseMirrorObj"] = mxJSBridgeReleaseMirrorObj;
    _name2FunMap["mxJSBridgeCreateMirrorObj"] = mxJSBridgeCreateMirrorObj;
  }
}

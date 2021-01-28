//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'dart:async';

import 'package:flutter/services.dart';

import 'mx_common.dart';

typedef _MXChannelFun = dynamic Function(dynamic arguments);

/// Flutter 和 Native iOS/Android Platform 通道。
class MXPlatformChannel {
  static MXPlatformChannel _instance;

  /// Flutter和Native iOS/Android platform 通道。
  MethodChannel _platformChannel;

  /// 方法字典。
  Map<String, _MXChannelFun> _name2FunMap = {};

  /// 获取单例实例。
  static MXPlatformChannel getInstance() {
    if (_instance == null) {
      _instance = MXPlatformChannel();
    }
    return _instance;
  }

  MXPlatformChannel() {
    _setupChannel();
  }

  /// 调用Native，通用通道
  Future<T> invokeMethod<T>(String method, [dynamic arguments]) {
    return _platformChannel.invokeMethod(method, arguments);
  }

  /// 设置JS异常回调。
  void setJSExceptionHandler(_MXChannelFun handler) {
    _name2FunMap["mxflutterJSExceptionHandler"] = handler;
  }

  /// 设置JS引擎初始化完成回调。
  void setJSEngineInitSuccessHandler(_MXChannelFun handler) {
    _name2FunMap["mxflutterJSEngineInitSuccessHandler"] = handler;
  }

  /// 打印log。
  void mxLog(String log) {
    _platformChannel?.invokeMethod("mxLog", log);
  }

  /// 重新创建channel。
  void resetupChannel() {
    _setupPlatformChannel();
  }

  /// 常见channel。
  void _setupChannel() {
    // Method reg.
    _setupName2FunMap();
    _setupPlatformChannel();
  }

  /// JS ->  Flutter 开放给JS调用。
  void _setupName2FunMap() {
    _name2FunMap["mxflutterBridgeMethodChannelInvoke"] = _mxflutterBridgeMethodChannelInvoke;
    _name2FunMap["mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke"] =
        _mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke;
  }

  /// 调用JS方法
  Future<dynamic> _mxflutterBridgeMethodChannelInvoke(dynamic args) async {
    final channelName = args["channelName"];
    final methodName = args["methodName"];
    final params = args["params"];

    final flutterChannel = MethodChannel(channelName);
    try {
      return await flutterChannel.invokeMethod(methodName, params);
    } catch (e) {
      MXJSLog.error(
          "MXPlatformChannel:_mxflutterBridgeMethodChannelInvoke, error:$e, methodName:$methodName, arguments:$params");
      rethrow;
    }
  }

  /// 设置JS侧EventChannel数据回调
  void _mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke(dynamic args) {
    final channelName = args["channelName"];
    final streamParam = args["streamParam"];
    final onDataId = args["onDataId"];
    final onErrorId = args["onErrorId"];
    final onDoneId = args["onDoneId"];
    final cancelOnError = args["cancelOnError"];

    void onData(Object event) {
      _callJsCallbackFunction(onDataId, event);
    }

    void onError(Object event) {
      _callJsCallbackFunction(onErrorId, event);
    }

    void onDone() {
      _callJsCallbackFunction(onDoneId, {});
    }

    var flutterEventChannel = EventChannel(channelName);
    if (streamParam == "") {
      flutterEventChannel
          .receiveBroadcastStream()
          .listen(onData, onError: onError, onDone: onDone, cancelOnError: cancelOnError);
    } else {
      flutterEventChannel
          .receiveBroadcastStream(streamParam)
          .listen(onData, onError: onError, onDone: onDone, cancelOnError: cancelOnError);
    }
  }

  /// Flutter和Native iOS/Android platform 通道。
  void _setupPlatformChannel() {
    _platformChannel = MethodChannel("js_flutter.flutter_main_channel");
    _platformChannel.setMethodCallHandler((MethodCall call) async {
      MXJSLog.log("_jsFlutterMainChannel_methodHandler:");
      MXJSLog.log(call);

      Function fun = _name2FunMap[call.method];
      return fun(call.arguments);
    });
  }

  /// 调用JS回调方法。
  void _callJsCallbackFunction(String callbackId, param) {
    var args = {"callbackId": callbackId, "param": param};
    _platformChannel.invokeMethod("callJsCallbackFunction", args);
  }
}

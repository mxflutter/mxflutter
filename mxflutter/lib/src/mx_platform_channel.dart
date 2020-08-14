//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:async';
import 'package:flutter/services.dart';
import 'mx_js_flutter_common.dart';


typedef Future<dynamic> _MXChannelFun(dynamic arguments);

/// Flutter和Native iOS/Android platform 通道
class MXPlatformChannel  {
  MXPlatformChannel() {
    _setupChannel();
  }

  static MXPlatformChannel _instance;

  static MXPlatformChannel getInstance() {
    if (_instance == null) {
      _instance = MXPlatformChannel();
    }
    return _instance;
  }

  /// Flutter和Native iOS/Android platform 通道
  MethodChannel _platformChannel;
  Map<String, _MXChannelFun> _name2FunMap = {};


  Future<T> invokeMethod<T>(String method, [ dynamic arguments ]) {
    return _platformChannel.invokeMethod(method,arguments);
  }

  _setupChannel() {
    // Method reg
    _setupName2FunMap();
    _setupPlatformChannel();
  }

  /// JS ->  Flutter 开放给JS调用
  _setupName2FunMap() {
    _name2FunMap["mxflutterBridgeMethodChannelInvoke"] =
        mxflutterBridgeMethodChannelInvoke;
    _name2FunMap[
            "mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke"] =
        mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke;
  }

  /// Flutter和Native iOS/Android platform 通道
  _setupPlatformChannel() {
    _platformChannel = MethodChannel("js_flutter.flutter_main_channel");
    _platformChannel.setMethodCallHandler((MethodCall call) async {
      MXJSLog.log("_jsFlutterMainChannel_methodHandler:");
      MXJSLog.log(call);

      Function fun = _name2FunMap[call.method];
      return fun(call.arguments);
    });
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
      flutterEventChannel.receiveBroadcastStream().listen(onData,
          onError: onError, onDone: onDone, cancelOnError: cancelOnError);
    } else {
      flutterEventChannel.receiveBroadcastStream(streamParam).listen(onData,
          onError: onError, onDone: onDone, cancelOnError: cancelOnError);
    }
  }

  _callJsCallbackFunction(String callbackId, param) {
    var args = {"callbackId": callbackId, "param": param};
    _platformChannel.invokeMethod("callJsCallbackFunction", args);
  }

  mxLog(String log) {
    _platformChannel?.invokeMethod("mxLog", log);
  }

}

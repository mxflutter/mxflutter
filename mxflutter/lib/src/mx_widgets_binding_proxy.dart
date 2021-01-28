//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';

import './mirror/mx_mirror.dart';

class MXWidgetsBindingProxy with WidgetsBindingObserver {
  /// 是否已添加observer。
  bool _isAddObserver = false;

  /// mirrorID.
  final String mirrorId;

  MXWidgetsBindingProxy({this.mirrorId});

  /// 添加observer。
  void addObserver() {
    if (_isAddObserver) {
      return;
    }

    WidgetsBinding.instance.addObserver(this);
    _isAddObserver = true;
  }

  /// 移除observer。
  bool removeObserver() {
    return WidgetsBinding.instance.removeObserver(this);
  }

  /// 调用js侧mirrorObj方法。
  dynamic callJS(String functionName, {dynamic args}) {
    Map eventInfo = {"funcName": functionName, "eventArgs": args};

    return MXMirror.getInstance()
        .invokeJSMirrorObj(mirrorID: mirrorId, functionName: "onObserverEvent", args: eventInfo);
  }

  /// 调用didPopRoute方法。
  Future<bool> didPopRoute() => callJS("didPopRoute");

  /// 调用didPushRoute方法。
  Future<bool> didPushRoute(String route) => callJS("didPushRoute");

  /// 调用didChangeMetrics方法。
  void didChangeMetrics() => callJS("didChangeMetrics");

  /// 调用didChangeTextScaleFactor方法。
  void didChangeTextScaleFactor() => callJS("didChangeTextScaleFactor");

  /// 调用didChangePlatformBrightness方法。
  void didChangePlatformBrightness() => callJS("didChangePlatformBrightness");

  /// 调用didChangeTextScaleFactor方法。
  void didChangeLocales(List<Locale> locale) => callJS("didChangeTextScaleFactor");

  /// 调用didChangeAppLifecycleState方法。
  void didChangeAppLifecycleState(AppLifecycleState state) =>
      callJS("didChangeAppLifecycleState", args: AppLifecycleState.values.indexOf(state));

  /// 调用didHaveMemoryPressure方法。
  void didHaveMemoryPressure() => callJS("didHaveMemoryPressure");

  /// 调用didChangeAccessibilityFeatures方法。
  void didChangeAccessibilityFeatures() => callJS("didChangeAccessibilityFeatures");
}

/// MXWidgetsBindingProxy使用WidgetsBinding类名 注册mirror符号。
void mxRegisterMXWidgetsBindingProxy() {
  var invoke = MXFunctionInvoke(
      "WidgetsBinding", ({String mirrorID}) => MXWidgetsBindingProxy(mirrorId: mirrorID), ['mirrorID']);

  var invokeAddObserver = MXFunctionInvoke(
      "WidgetsBinding#addObserver", ({MXWidgetsBindingProxy mirrorObj}) => mirrorObj.addObserver(), ['mirrorObj']);

  var invokeRemoveObserver = MXFunctionInvoke(
    "WidgetsBinding#removeObserver",
    ({MXWidgetsBindingProxy mirrorObj}) => mirrorObj.removeObserver(),
  );

  MXMirror.getInstance().registerFunctions(<String, MXFunctionInvoke>{
    invoke.funName: invoke,
    invokeAddObserver.funName: invokeAddObserver,
    invokeRemoveObserver.funName: invokeRemoveObserver
  });
}

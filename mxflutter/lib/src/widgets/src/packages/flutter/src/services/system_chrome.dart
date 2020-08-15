//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/system_chrome.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/system_channels.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSystemChromeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_deviceOrientation.funName] = _deviceOrientation;
  m[_applicationSwitcherDescription.funName] = _applicationSwitcherDescription;
  m[_systemUiOverlay.funName] = _systemUiOverlay;
  m[_systemUiOverlayStyle.funName] = _systemUiOverlayStyle;
  m[_systemUiOverlayStyle_light.funName] = _systemUiOverlayStyle_light;
  m[_systemUiOverlayStyle_dark.funName] = _systemUiOverlayStyle_dark;
  m[_systemChrome_setSystemUIOverlayStyle.funName] =
      _systemChrome_setSystemUIOverlayStyle;
  return m;
}

var _deviceOrientation = MXFunctionInvoke(
  "DeviceOrientation",
  ({String name, int index}) => MXDeviceOrientation.parse(name, index),
);
var _applicationSwitcherDescription = MXFunctionInvoke(
  "ApplicationSwitcherDescription",
  ({
    String label,
    int primaryColor,
  }) =>
      ApplicationSwitcherDescription(
    label: label,
    primaryColor: primaryColor,
  ),
  [
    "label",
    "primaryColor",
  ],
);
var _systemUiOverlay = MXFunctionInvoke(
  "SystemUiOverlay",
  ({String name, int index}) => MXSystemUiOverlay.parse(name, index),
);
var _systemUiOverlayStyle = MXFunctionInvoke(
  "SystemUiOverlayStyle",
  ({
    Color systemNavigationBarColor,
    Color systemNavigationBarDividerColor,
    Brightness systemNavigationBarIconBrightness,
    Color statusBarColor,
    Brightness statusBarBrightness,
    Brightness statusBarIconBrightness,
  }) =>
      SystemUiOverlayStyle(
    systemNavigationBarColor: systemNavigationBarColor,
    systemNavigationBarDividerColor: systemNavigationBarDividerColor,
    systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
    statusBarColor: statusBarColor,
    statusBarBrightness: statusBarBrightness,
    statusBarIconBrightness: statusBarIconBrightness,
  ),
  [
    "systemNavigationBarColor",
    "systemNavigationBarDividerColor",
    "systemNavigationBarIconBrightness",
    "statusBarColor",
    "statusBarBrightness",
    "statusBarIconBrightness",
  ],
);
var _systemUiOverlayStyle_light = MXFunctionInvoke(
    "SystemUiOverlayStyle.light", () => SystemUiOverlayStyle.light);
var _systemUiOverlayStyle_dark = MXFunctionInvoke(
    "SystemUiOverlayStyle.dark", () => SystemUiOverlayStyle.dark);
var _systemChrome_setSystemUIOverlayStyle = MXFunctionInvoke(
  "SystemChrome.setSystemUIOverlayStyle",
  ({
    SystemUiOverlayStyle style,
  }) =>
      SystemChrome.setSystemUIOverlayStyle(
    style,
  ),
  [
    "style",
  ],
);

class MXDeviceOrientation {
  static DeviceOrientation parse(String name, int index) {
    switch (name) {
      case 'DeviceOrientation.portraitUp':
        return DeviceOrientation.portraitUp;
      case 'DeviceOrientation.landscapeLeft':
        return DeviceOrientation.landscapeLeft;
      case 'DeviceOrientation.portraitDown':
        return DeviceOrientation.portraitDown;
      case 'DeviceOrientation.landscapeRight':
        return DeviceOrientation.landscapeRight;
    }
    return null;
  }
}

class MXSystemUiOverlay {
  static SystemUiOverlay parse(String name, int index) {
    switch (name) {
      case 'SystemUiOverlay.top':
        return SystemUiOverlay.top;
      case 'SystemUiOverlay.bottom':
        return SystemUiOverlay.bottom;
    }
    return null;
  }
}

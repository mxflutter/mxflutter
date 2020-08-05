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
  return m;
}
var _deviceOrientation = MXFunctionInvoke(
    "DeviceOrientation",
    ({Map args}) => MXDeviceOrientation.parse(args),
  );
var _applicationSwitcherDescription = MXFunctionInvoke(
    "ApplicationSwitcherDescription",
    (
      {
      String label,
      int primaryColor,
      }
    ) =>
      ApplicationSwitcherDescription(
      label: label,
      primaryColor: primaryColor,
    ),
);
var _systemUiOverlay = MXFunctionInvoke(
    "SystemUiOverlay",
    ({Map args}) => MXSystemUiOverlay.parse(args),
  );
var _systemUiOverlayStyle = MXFunctionInvoke(
    "SystemUiOverlayStyle",
    (
      {
      Color systemNavigationBarColor,
      Color systemNavigationBarDividerColor,
      Brightness systemNavigationBarIconBrightness,
      Color statusBarColor,
      Brightness statusBarBrightness,
      Brightness statusBarIconBrightness,
      }
    ) =>
      SystemUiOverlayStyle(
      systemNavigationBarColor: systemNavigationBarColor,
      systemNavigationBarDividerColor: systemNavigationBarDividerColor,
      systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
      statusBarColor: statusBarColor,
      statusBarBrightness: statusBarBrightness,
      statusBarIconBrightness: statusBarIconBrightness,
    ),
);
class MXDeviceOrientation {
  static Map str2VMap = {
    'DeviceOrientation.portraitUp': DeviceOrientation.portraitUp,
    'DeviceOrientation.landscapeLeft': DeviceOrientation.landscapeLeft,
    'DeviceOrientation.portraitDown': DeviceOrientation.portraitDown,
    'DeviceOrientation.landscapeRight': DeviceOrientation.landscapeRight,
  };
  static DeviceOrientation parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXSystemUiOverlay {
  static Map str2VMap = {
    'SystemUiOverlay.top': SystemUiOverlay.top,
    'SystemUiOverlay.bottom': SystemUiOverlay.bottom,
  };
  static SystemUiOverlay parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

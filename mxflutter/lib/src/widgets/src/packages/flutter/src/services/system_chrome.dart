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
import 'dart:ui';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSystemChromeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[deviceOrientation.funName] = deviceOrientation;
  m[applicationSwitcherDescription.funName] = applicationSwitcherDescription;
  m[systemUiOverlay.funName] = systemUiOverlay;
  m[systemUiOverlayStyle.funName] = systemUiOverlayStyle;
  return m;
}
var deviceOrientation = MXFunctionInvoke(
    "DeviceOrientation",
    ({Map args}) => MXDeviceOrientation.parse(args),
  );
var applicationSwitcherDescription = MXFunctionInvoke(
    "ApplicationSwitcherDescription",
    ({
      String label,
      int primaryColor,
    }) =>
      ApplicationSwitcherDescription(
      label: label,
      primaryColor: primaryColor,
    ),
);
var systemUiOverlay = MXFunctionInvoke(
    "SystemUiOverlay",
    ({Map args}) => MXSystemUiOverlay.parse(args),
  );
var systemUiOverlayStyle = MXFunctionInvoke(
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

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/banner.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBannerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_bannerLocation.funName] = _bannerLocation;
  m[_bannerPainter.funName] = _bannerPainter;
  m[_banner.funName] = _banner;
  m[_checkedModeBanner.funName] = _checkedModeBanner;
  return m;
}
var _bannerLocation = MXFunctionInvoke(
    "BannerLocation",
    ({String name, int index}) => MXBannerLocation.parse(name, index),
  );
var _bannerPainter = MXFunctionInvoke(
    "BannerPainter",
    (
      {
      String message,
      TextDirection textDirection,
      BannerLocation location,
      TextDirection layoutDirection,
      Color color,
      TextStyle textStyle,
      }
    ) =>
      BannerPainter(
      message: message,
      textDirection: textDirection,
      location: location,
      layoutDirection: layoutDirection,
      color: color,
      textStyle: textStyle,
    ),
);
var _banner = MXFunctionInvoke(
    "Banner",
    (
      {
      Key key,
      Widget child,
      String message,
      TextDirection textDirection,
      BannerLocation location,
      TextDirection layoutDirection,
      Color color,
      TextStyle textStyle,
      }
    ) =>
      Banner(
      key: key,
      child: child,
      message: message,
      textDirection: textDirection,
      location: location,
      layoutDirection: layoutDirection,
      color: color,
      textStyle: textStyle,
    ),
);
var _checkedModeBanner = MXFunctionInvoke(
    "CheckedModeBanner",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      CheckedModeBanner(
      key: key,
      child: child,
    ),
);
class MXBannerLocation {
  static BannerLocation parse(String name, int index) {
    switch(name) {
      case 'BannerLocation.topStart': 
       return BannerLocation.topStart;
      case 'BannerLocation.topEnd': 
       return BannerLocation.topEnd;
      case 'BannerLocation.bottomStart': 
       return BannerLocation.bottomStart;
      case 'BannerLocation.bottomEnd': 
       return BannerLocation.bottomEnd;
    }
    return null;
  }
}

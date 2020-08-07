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
    ({Map args}) => MXBannerLocation.parse(args),
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
  static Map str2VMap = {
    'BannerLocation.topStart': BannerLocation.topStart,
    'BannerLocation.topEnd': BannerLocation.topEnd,
    'BannerLocation.bottomStart': BannerLocation.bottomStart,
    'BannerLocation.bottomEnd': BannerLocation.bottomEnd,
  };
  static BannerLocation parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/flutter_logo.dart';


class MXProxyFlutterLogo {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[flutterLogoStyle.funName] = flutterLogoStyle;
    m[flutterLogoDecoration.funName] = flutterLogoDecoration;
    m[flutterLogoDecoration_.funName] = flutterLogoDecoration_;
    return m;
  }
  static var flutterLogoStyle = MXFunctionInvoke(
      "FlutterLogoStyle",
      ({Map args}) => MXFlutterLogoStyle.parse(args),
  );
  static var flutterLogoDecoration = MXFunctionInvoke(
      "FlutterLogoDecoration",
      ({
        Color lightColor,
        Color darkColor,
        Color textColor,
        FlutterLogoStyle style = FlutterLogoStyle.markOnly,
        EdgeInsets margin,
      }) =>
        FlutterLogoDecoration(
        lightColor: lightColor,
        darkColor: darkColor,
        textColor: textColor,
        style: style,
        margin: margin,
      ),
    );
  static var flutterLogoDecoration_ = MXFunctionInvoke(
    "flutterLogoDecoration.",
      ({
        Color lightColor,
        Color darkColor,
        Color textColor,
        FlutterLogoStyle style,
        EdgeInsets margin,
        double _position,
        double _opacity,
      }) =>
        FlutterLogoDecoration.(
        lightColor,
        darkColor,
        textColor,
        style,
        margin,
        _position,
        _opacity,
      ),
    );
}
class MXFlutterLogoStyle {
  static Map str2VMap = {
    'FlutterLogoStyle.markOnly': FlutterLogoStyle.markOnly,
    'FlutterLogoStyle.horizontal': FlutterLogoStyle.horizontal,
    'FlutterLogoStyle.stacked': FlutterLogoStyle.stacked,
  };
  static FlutterLogoStyle parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

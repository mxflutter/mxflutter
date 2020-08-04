//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/borders.dart';


class MXProxyBorders {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[borderStyle.funName] = borderStyle;
    m[borderSide.funName] = borderSide;
    return m;
  }
  static var borderStyle = MXFunctionInvoke(
      "BorderStyle",
      ({Map args}) => MXBorderStyle.parse(args),
  );
  static var borderSide = MXFunctionInvoke(
      "BorderSide",
      ({
        Color color,
        dynamic width = 1.0,
        BorderStyle style = BorderStyle.solid,
      }) =>
        BorderSide(
        color: color,
        width: width?.toDouble(),
        style: style,
      ),
    );
}
class MXBorderStyle {
  static Map str2VMap = {
    'BorderStyle.none': BorderStyle.none,
    'BorderStyle.solid': BorderStyle.solid,
  };
  static BorderStyle parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

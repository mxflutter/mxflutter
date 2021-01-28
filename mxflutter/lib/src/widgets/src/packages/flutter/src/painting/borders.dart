//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/borders.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/edge_insets.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBordersSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_borderStyle.funName] = _borderStyle;
  m[_borderSide.funName] = _borderSide;
  m[_borderSideNone.funName] = _borderSideNone;
  return m;
}

var _borderStyle =
    MXFunctionInvoke("BorderStyle", ({String name, int index}) => MXBorderStyle.parse(name, index), ["name", "index"]);
var _borderSide = MXFunctionInvoke(
  "BorderSide",
  ({
    ui.Color color = const Color(0xFF000000),
    dynamic width = 1.0,
    BorderStyle style = BorderStyle.solid,
  }) =>
      BorderSide(
    color: color,
    width: width?.toDouble(),
    style: style,
  ),
  [
    "color",
    "width",
    "style",
  ],
);
var _borderSideNone = MXFunctionInvoke("BorderSide.none", () => BorderSide.none);

class MXBorderStyle {
  static BorderStyle parse(String name, int index) {
    switch (name) {
      case 'BorderStyle.none':
        return BorderStyle.none;
      case 'BorderStyle.solid':
        return BorderStyle.solid;
    }
    return null;
  }
}

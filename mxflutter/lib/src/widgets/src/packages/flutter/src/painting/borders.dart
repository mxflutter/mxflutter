//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  return m;
}
var _borderStyle = MXFunctionInvoke(
    "BorderStyle",
    ({String name, int index}) => MXBorderStyle.parse(name, index),
  );
var _borderSide = MXFunctionInvoke(
    "BorderSide",
    (
      {
      ui.Color color,
      dynamic width = 1.0,
      BorderStyle style = BorderStyle.solid,
      }
    ) =>
      BorderSide(
      color: color,
      width: width?.toDouble(),
      style: style,
    ),
);
class MXBorderStyle {
  static BorderStyle parse(String name, int index) {
    switch(name) {
      case 'BorderStyle.none': 
       return BorderStyle.none;
      case 'BorderStyle.solid': 
       return BorderStyle.solid;
    }
    return null;
  }
}

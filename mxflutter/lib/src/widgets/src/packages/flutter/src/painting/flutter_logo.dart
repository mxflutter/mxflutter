//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/flutter_logo.dart';
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/box_fit.dart';
import 'package:flutter/src/painting/decoration.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:flutter/src/painting/text_painter.dart';
import 'package:flutter/src/painting/text_span.dart';
import 'package:flutter/src/painting/text_style.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFlutterLogoSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_flutterLogoStyle.funName] = _flutterLogoStyle;
  m[_flutterLogoDecoration.funName] = _flutterLogoDecoration;
  return m;
}

var _flutterLogoStyle = MXFunctionInvoke(
    "FlutterLogoStyle", ({String name, int index}) => MXFlutterLogoStyle.parse(name, index), ["name", "index"]);
var _flutterLogoDecoration = MXFunctionInvoke(
  "FlutterLogoDecoration",
  ({
    ui.Color lightColor = const Color(0xFF42A5F5),
    ui.Color darkColor = const Color(0xFF0D47A1),
    ui.Color textColor = const Color(0xFF616161),
    FlutterLogoStyle style = FlutterLogoStyle.markOnly,
    EdgeInsets margin = EdgeInsets.zero,
  }) =>
      FlutterLogoDecoration(
    lightColor: lightColor,
    darkColor: darkColor,
    textColor: textColor,
    style: style,
    margin: margin,
  ),
  [
    "lightColor",
    "darkColor",
    "textColor",
    "style",
    "margin",
  ],
);

class MXFlutterLogoStyle {
  static FlutterLogoStyle parse(String name, int index) {
    switch (name) {
      case 'FlutterLogoStyle.markOnly':
        return FlutterLogoStyle.markOnly;
      case 'FlutterLogoStyle.horizontal':
        return FlutterLogoStyle.horizontal;
      case 'FlutterLogoStyle.stacked':
        return FlutterLogoStyle.stacked;
    }
    return null;
  }
}

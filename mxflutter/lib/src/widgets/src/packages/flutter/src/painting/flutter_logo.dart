//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
    "FlutterLogoStyle",
    ({Map args}) => MXFlutterLogoStyle.parse(args),
  );
var _flutterLogoDecoration = MXFunctionInvoke(
    "FlutterLogoDecoration",
    (
      {
      Color lightColor,
      Color darkColor,
      Color textColor,
      FlutterLogoStyle style = FlutterLogoStyle.markOnly,
      EdgeInsets margin,
      }
    ) =>
      FlutterLogoDecoration(
      lightColor: lightColor,
      darkColor: darkColor,
      textColor: textColor,
      style: style,
      margin: margin,
    ),
);
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

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/colors.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerColorsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_hSVColor_fromColor.funName] = _hSVColor_fromColor;
  m[_hSVColor_fromAHSV.funName] = _hSVColor_fromAHSV;
  m[_hSLColor_fromColor.funName] = _hSLColor_fromColor;
  m[_hSLColor_fromAHSL.funName] = _hSLColor_fromAHSL;
  m[_colorSwatch.funName] = _colorSwatch;
  m[_colorProperty.funName] = _colorProperty;
  return m;
}
var _hSVColor_fromColor = MXFunctionInvoke(
  "hSVColor.fromColor",
    (
      {
      Color color,
      }
    ) =>
      HSVColor.fromColor(
      color,
    ),
);
var _hSVColor_fromAHSV = MXFunctionInvoke(
  "hSVColor.fromAHSV",
    (
      {
      double alpha,
      double hue,
      double saturation,
      double value,
      }
    ) =>
      HSVColor.fromAHSV(
      alpha,
      hue,
      saturation,
      value,
    ),
);
var _hSLColor_fromColor = MXFunctionInvoke(
  "hSLColor.fromColor",
    (
      {
      Color color,
      }
    ) =>
      HSLColor.fromColor(
      color,
    ),
);
var _hSLColor_fromAHSL = MXFunctionInvoke(
  "hSLColor.fromAHSL",
    (
      {
      double alpha,
      double hue,
      double saturation,
      double lightness,
      }
    ) =>
      HSLColor.fromAHSL(
      alpha,
      hue,
      saturation,
      lightness,
    ),
);
var _colorSwatch = MXFunctionInvoke(
    "ColorSwatch",
    (
      {
      int primary,
      Map<dynamic, Color> swatch,
      }
    ) =>
      ColorSwatch(
      primary,
      swatch,
    ),
);
var _colorProperty = MXFunctionInvoke(
    "ColorProperty",
    (
      {
      String name,
      Color value,
      bool showName = true,
      Object defaultValue,
      DiagnosticsTreeStyle style = DiagnosticsTreeStyle.singleLine,
      DiagnosticLevel level = DiagnosticLevel.info,
      }
    ) =>
      ColorProperty(
      name,
      value,
      showName: showName,
      defaultValue: defaultValue,
      style: style,
      level: level,
    ),
);

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
  m[hSVColor_fromColor.funName] = hSVColor_fromColor;
  m[hSVColor_fromAHSV.funName] = hSVColor_fromAHSV;
  m[hSLColor_fromColor.funName] = hSLColor_fromColor;
  m[hSLColor_fromAHSL.funName] = hSLColor_fromAHSL;
  m[colorSwatch.funName] = colorSwatch;
  m[colorProperty.funName] = colorProperty;
  return m;
}
var hSVColor_fromColor = MXFunctionInvoke(
  "hSVColor.fromColor",
    ({
      Color color,
    }) =>
      HSVColor.fromColor(
      color,
    ),
);
var hSVColor_fromAHSV = MXFunctionInvoke(
  "hSVColor.fromAHSV",
    ({
      dynamic alpha,
      dynamic hue,
      dynamic saturation,
      dynamic value,
    }) =>
      HSVColor.fromAHSV(
      alpha,
      hue,
      saturation,
      value,
    ),
);
var hSLColor_fromColor = MXFunctionInvoke(
  "hSLColor.fromColor",
    ({
      Color color,
    }) =>
      HSLColor.fromColor(
      color,
    ),
);
var hSLColor_fromAHSL = MXFunctionInvoke(
  "hSLColor.fromAHSL",
    ({
      dynamic alpha,
      dynamic hue,
      dynamic saturation,
      dynamic lightness,
    }) =>
      HSLColor.fromAHSL(
      alpha,
      hue,
      saturation,
      lightness,
    ),
);
var colorSwatch = MXFunctionInvoke(
    "ColorSwatch",
    ({
      int primary,
      dynamic _swatch,
    }) =>
      ColorSwatch(
      primary,
      _swatch,
    ),
);
var colorProperty = MXFunctionInvoke(
    "ColorProperty",
    ({
      String name,
      Color value,
      bool showName = true,
      Object defaultValue,
      DiagnosticsTreeStyle style = DiagnosticsTreeStyle.singleLine,
      DiagnosticLevel level = DiagnosticLevel.info,
    }) =>
      ColorProperty(
      name,
      value,
      showName: showName,
      defaultValue: defaultValue,
      style: style,
      level: level,
    ),
);

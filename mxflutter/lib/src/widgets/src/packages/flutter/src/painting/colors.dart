//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/colors.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerColorsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_hSVColorFromColor.funName] = _hSVColorFromColor;
  m[_hSVColorFromAHSV.funName] = _hSVColorFromAHSV;
  m[_hSLColorFromColor.funName] = _hSLColorFromColor;
  m[_hSLColorFromAHSL.funName] = _hSLColorFromAHSL;
  m[_colorSwatch.funName] = _colorSwatch;
  m[_colorProperty.funName] = _colorProperty;
  return m;
}

var _hSVColorFromColor = MXFunctionInvoke(
  "HSVColor.fromColor",
  ({
    Color color,
  }) =>
      HSVColor.fromColor(
    color,
  ),
  [
    "color",
  ],
);
var _hSVColorFromAHSV = MXFunctionInvoke(
  "HSVColor.fromAHSV",
  ({
    dynamic alpha,
    dynamic hue,
    dynamic saturation,
    dynamic value,
  }) =>
      HSVColor.fromAHSV(
    alpha?.toDouble(),
    hue?.toDouble(),
    saturation?.toDouble(),
    value?.toDouble(),
  ),
  [
    "alpha",
    "hue",
    "saturation",
    "value",
  ],
);
var _hSLColorFromColor = MXFunctionInvoke(
  "HSLColor.fromColor",
  ({
    Color color,
  }) =>
      HSLColor.fromColor(
    color,
  ),
  [
    "color",
  ],
);
var _hSLColorFromAHSL = MXFunctionInvoke(
  "HSLColor.fromAHSL",
  ({
    dynamic alpha,
    dynamic hue,
    dynamic saturation,
    dynamic lightness,
  }) =>
      HSLColor.fromAHSL(
    alpha?.toDouble(),
    hue?.toDouble(),
    saturation?.toDouble(),
    lightness?.toDouble(),
  ),
  [
    "alpha",
    "hue",
    "saturation",
    "lightness",
  ],
);
var _colorSwatch = MXFunctionInvoke(
  "ColorSwatch",
  ({
    int primary,
    dynamic swatch,
  }) =>
      ColorSwatch(
    primary,
    toMapT<dynamic, Color>(swatch),
  ),
  [
    "primary",
    "swatch",
  ],
);
var _colorProperty = MXFunctionInvoke(
  "ColorProperty",
  ({
    String name,
    Color value,
    bool showName = true,
    Object defaultValue = kNoDefaultValue,
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
  [
    "name",
    "value",
    "showName",
    "defaultValue",
    "style",
    "level",
  ],
);

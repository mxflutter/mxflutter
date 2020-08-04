//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/colors.dart';


class MXProxyColors {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[hSVColor_fromColor.funName] = hSVColor_fromColor;
    m[hSVColor_fromAHSV.funName] = hSVColor_fromAHSV;
    m[hSLColor_fromColor.funName] = hSLColor_fromColor;
    m[hSLColor_fromAHSL.funName] = hSLColor_fromAHSL;
    m[colorSwatch.funName] = colorSwatch;
    m[colorProperty.funName] = colorProperty;
    return m;
  }
  static var hSVColor_fromColor = MXFunctionInvoke(
    "hSVColor.fromColor",
      ({
        Color color,
      }) =>
        HSVColor.fromColor(
        color,
      ),
    );
  static var hSVColor_fromAHSV = MXFunctionInvoke(
    "hSVColor.fromAHSV",
      ({
        double alpha,
        double hue,
        double saturation,
        double value,
      }) =>
        HSVColor.fromAHSV(
        alpha,
        hue,
        saturation,
        value,
      ),
    );
  static var hSLColor_fromColor = MXFunctionInvoke(
    "hSLColor.fromColor",
      ({
        Color color,
      }) =>
        HSLColor.fromColor(
        color,
      ),
    );
  static var hSLColor_fromAHSL = MXFunctionInvoke(
    "hSLColor.fromAHSL",
      ({
        double alpha,
        double hue,
        double saturation,
        double lightness,
      }) =>
        HSLColor.fromAHSL(
        alpha,
        hue,
        saturation,
        lightness,
      ),
    );
  static var colorSwatch = MXFunctionInvoke(
      "ColorSwatch",
      ({
        int primary,
        Map<ColorSwatch::T*, Color> _swatch,
      }) =>
        ColorSwatch(
        primary,
        _swatch,
      ),
    );
  static var colorProperty = MXFunctionInvoke(
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
}

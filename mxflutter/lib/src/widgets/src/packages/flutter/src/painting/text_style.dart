//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/colors.dart';
import 'package:flutter/src/painting/strut_style.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextStyleSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textStyle.funName] = _textStyle;
  return m;
}

var _textStyle = MXFunctionInvoke(
  "TextStyle",
  ({
    bool inherit = true,
    ui.Color color,
    ui.Color backgroundColor,
    dynamic fontSize,
    ui.FontWeight fontWeight,
    ui.FontStyle fontStyle,
    dynamic letterSpacing,
    dynamic wordSpacing,
    ui.TextBaseline textBaseline,
    dynamic height,
    ui.Locale locale,
    ui.Paint foreground,
    ui.Paint background,
    dynamic shadows,
    dynamic fontFeatures,
    ui.TextDecoration decoration,
    ui.Color decorationColor,
    ui.TextDecorationStyle decorationStyle,
    dynamic decorationThickness,
    String debugLabel,
    String fontFamily,
    dynamic fontFamilyFallback,
    String package,
  }) =>
      TextStyle(
    inherit: inherit,
    color: color,
    backgroundColor: backgroundColor,
    fontSize: fontSize?.toDouble(),
    fontWeight: fontWeight,
    fontStyle: fontStyle,
    letterSpacing: letterSpacing?.toDouble(),
    wordSpacing: wordSpacing?.toDouble(),
    textBaseline: textBaseline,
    height: height?.toDouble(),
    locale: locale,
    foreground: foreground,
    background: background,
    shadows: toListT<ui.Shadow>(shadows),
    fontFeatures: toListT<ui.FontFeature>(fontFeatures),
    decoration: decoration,
    decorationColor: decorationColor,
    decorationStyle: decorationStyle,
    decorationThickness: decorationThickness?.toDouble(),
    debugLabel: debugLabel,
    fontFamily: fontFamily,
    fontFamilyFallback: toListT<String>(fontFamilyFallback),
    package: package,
  ),
  [
    "inherit",
    "color",
    "backgroundColor",
    "fontSize",
    "fontWeight",
    "fontStyle",
    "letterSpacing",
    "wordSpacing",
    "textBaseline",
    "height",
    "locale",
    "foreground",
    "background",
    "shadows",
    "fontFeatures",
    "decoration",
    "decorationColor",
    "decorationStyle",
    "decorationThickness",
    "debugLabel",
    "fontFamily",
    "fontFamilyFallback",
    "__mx_package",
  ],
);

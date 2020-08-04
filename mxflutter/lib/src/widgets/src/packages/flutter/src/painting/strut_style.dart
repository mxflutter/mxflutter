//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/strut_style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/colors.dart';
import 'package:flutter/src/painting/strut_style.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerStrutStyleSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[strutStyle.funName] = strutStyle;
  m[strutStyle_fromTextStyle.funName] = strutStyle_fromTextStyle;
  m[textStyle.funName] = textStyle;
  return m;
}
var strutStyle = MXFunctionInvoke(
    "StrutStyle",
    ({
      String fontFamily,
      List<String> fontFamilyFallback,
      dynamic fontSize,
      dynamic height,
      dynamic leading,
      FontWeight fontWeight,
      FontStyle fontStyle,
      bool forceStrutHeight,
      String debugLabel,
      String package,
    }) =>
      StrutStyle(
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      fontSize: fontSize,
      height: height,
      leading: leading,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      forceStrutHeight: forceStrutHeight,
      debugLabel: debugLabel,
      package: package,
    ),
);
var strutStyle_fromTextStyle = MXFunctionInvoke(
  "strutStyle.fromTextStyle",
    ({
      TextStyle textStyle,
      String fontFamily,
      List<String> fontFamilyFallback,
      dynamic fontSize,
      dynamic height,
      dynamic leading,
      FontWeight fontWeight,
      FontStyle fontStyle,
      bool forceStrutHeight,
      String debugLabel,
      String package,
    }) =>
      StrutStyle.fromTextStyle(
      textStyle,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      fontSize: fontSize,
      height: height,
      leading: leading,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      forceStrutHeight: forceStrutHeight,
      debugLabel: debugLabel,
      package: package,
    ),
);
var textStyle = MXFunctionInvoke(
    "TextStyle",
    ({
      bool inherit = true,
      Color color,
      Color backgroundColor,
      dynamic fontSize,
      FontWeight fontWeight,
      FontStyle fontStyle,
      dynamic letterSpacing,
      dynamic wordSpacing,
      TextBaseline textBaseline,
      dynamic height,
      Locale locale,
      Paint foreground,
      Paint background,
      List<Shadow> shadows,
      List<FontFeature> fontFeatures,
      TextDecoration decoration,
      Color decorationColor,
      TextDecorationStyle decorationStyle,
      dynamic decorationThickness,
      String debugLabel,
      String fontFamily,
      List<String> fontFamilyFallback,
      String package,
    }) =>
      TextStyle(
      inherit: inherit,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      debugLabel: debugLabel,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      package: package,
    ),
);

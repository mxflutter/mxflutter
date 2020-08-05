//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/text_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/icon_theme_data.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'dart:ui';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/cupertino/interface_level.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoTextThemeData.funName] = _cupertinoTextThemeData;
  m[_cupertinoIconThemeData.funName] = _cupertinoIconThemeData;
  m[_cupertinoTheme.funName] = _cupertinoTheme;
  m[_cupertinoThemeData.funName] = _cupertinoThemeData;
  m[_cupertinoThemeData_raw.funName] = _cupertinoThemeData_raw;
  m[_cupertinoDynamicColor.funName] = _cupertinoDynamicColor;
  m[_cupertinoDynamicColor_withBrightnessAndContrast.funName] = _cupertinoDynamicColor_withBrightnessAndContrast;
  m[_cupertinoDynamicColor_withBrightness.funName] = _cupertinoDynamicColor_withBrightness;
  return m;
}
var _cupertinoTextThemeData = MXFunctionInvoke(
    "CupertinoTextThemeData",
    (
      {
      Color primaryColor,
      Brightness brightness,
      TextStyle textStyle,
      TextStyle actionTextStyle,
      TextStyle tabLabelTextStyle,
      TextStyle navTitleTextStyle,
      TextStyle navLargeTitleTextStyle,
      TextStyle navActionTextStyle,
      TextStyle pickerTextStyle,
      TextStyle dateTimePickerTextStyle,
      }
    ) =>
      CupertinoTextThemeData(
      primaryColor: primaryColor,
      brightness: brightness,
      textStyle: textStyle,
      actionTextStyle: actionTextStyle,
      tabLabelTextStyle: tabLabelTextStyle,
      navTitleTextStyle: navTitleTextStyle,
      navLargeTitleTextStyle: navLargeTitleTextStyle,
      navActionTextStyle: navActionTextStyle,
      pickerTextStyle: pickerTextStyle,
      dateTimePickerTextStyle: dateTimePickerTextStyle,
    ),
);
var _cupertinoIconThemeData = MXFunctionInvoke(
    "CupertinoIconThemeData",
    (
      {
      Color color,
      double opacity,
      double size,
      }
    ) =>
      CupertinoIconThemeData(
      color: color,
      opacity: opacity?.toDouble(),
      size: size?.toDouble(),
    ),
);
var _cupertinoTheme = MXFunctionInvoke(
    "CupertinoTheme",
    (
      {
      Key key,
      CupertinoThemeData data,
      Widget child,
      }
    ) =>
      CupertinoTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var _cupertinoThemeData = MXFunctionInvoke(
    "CupertinoThemeData",
    (
      {
      Brightness brightness,
      Color primaryColor,
      Color primaryContrastingColor,
      CupertinoTextThemeData textTheme,
      Color barBackgroundColor,
      Color scaffoldBackgroundColor,
      }
    ) =>
      CupertinoThemeData(
      brightness: brightness,
      primaryColor: primaryColor,
      primaryContrastingColor: primaryContrastingColor,
      textTheme: textTheme,
      barBackgroundColor: barBackgroundColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
    ),
);
var _cupertinoThemeData_raw = MXFunctionInvoke(
  "cupertinoThemeData.raw",
    (
      {
      Brightness brightness,
      Color primaryColor,
      Color primaryContrastingColor,
      CupertinoTextThemeData textTheme,
      Color barBackgroundColor,
      Color scaffoldBackgroundColor,
      }
    ) =>
      CupertinoThemeData.raw(
      brightness,
      primaryColor,
      primaryContrastingColor,
      textTheme,
      barBackgroundColor,
      scaffoldBackgroundColor,
    ),
);
var _cupertinoDynamicColor = MXFunctionInvoke(
    "CupertinoDynamicColor",
    (
      {
      String debugLabel,
      Color color,
      Color darkColor,
      Color highContrastColor,
      Color darkHighContrastColor,
      Color elevatedColor,
      Color darkElevatedColor,
      Color highContrastElevatedColor,
      Color darkHighContrastElevatedColor,
      }
    ) =>
      CupertinoDynamicColor(
      debugLabel: debugLabel,
      color: color,
      darkColor: darkColor,
      highContrastColor: highContrastColor,
      darkHighContrastColor: darkHighContrastColor,
      elevatedColor: elevatedColor,
      darkElevatedColor: darkElevatedColor,
      highContrastElevatedColor: highContrastElevatedColor,
      darkHighContrastElevatedColor: darkHighContrastElevatedColor,
    ),
);
var _cupertinoDynamicColor_withBrightnessAndContrast = MXFunctionInvoke(
  "cupertinoDynamicColor.withBrightnessAndContrast",
    (
      {
      String debugLabel,
      Color color,
      Color darkColor,
      Color highContrastColor,
      Color darkHighContrastColor,
      }
    ) =>
      CupertinoDynamicColor.withBrightnessAndContrast(
      debugLabel: debugLabel,
      color: color,
      darkColor: darkColor,
      highContrastColor: highContrastColor,
      darkHighContrastColor: darkHighContrastColor,
    ),
);
var _cupertinoDynamicColor_withBrightness = MXFunctionInvoke(
  "cupertinoDynamicColor.withBrightness",
    (
      {
      String debugLabel,
      Color color,
      Color darkColor,
      }
    ) =>
      CupertinoDynamicColor.withBrightness(
      debugLabel: debugLabel,
      color: color,
      darkColor: darkColor,
    ),
);

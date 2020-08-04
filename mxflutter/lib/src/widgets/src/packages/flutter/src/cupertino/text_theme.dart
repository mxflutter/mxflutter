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
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/icon_theme_data.dart';
import 'package:flutter/src/cupertino/text_theme.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/cupertino/interface_level.dart';
import 'package:flutter/src/cupertino/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[cupertinoTextThemeData.funName] = cupertinoTextThemeData;
  m[cupertinoTextThemeData_raw.funName] = cupertinoTextThemeData_raw;
  m[cupertinoIconThemeData.funName] = cupertinoIconThemeData;
  m[cupertinoTheme.funName] = cupertinoTheme;
  m[cupertinoThemeData.funName] = cupertinoThemeData;
  m[cupertinoThemeData_raw.funName] = cupertinoThemeData_raw;
  m[cupertinoThemeData_rawWithDefaults.funName] = cupertinoThemeData_rawWithDefaults;
  m[cupertinoDynamicColor.funName] = cupertinoDynamicColor;
  m[cupertinoDynamicColor_withBrightnessAndContrast.funName] = cupertinoDynamicColor_withBrightnessAndContrast;
  m[cupertinoDynamicColor_withBrightness.funName] = cupertinoDynamicColor_withBrightness;
  return m;
}
var cupertinoTextThemeData = MXFunctionInvoke(
    "CupertinoTextThemeData",
    ({
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
    }) =>
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
var cupertinoTextThemeData_raw = MXFunctionInvoke(
  "cupertinoTextThemeData.raw",
    ({
      _TextThemeDefaultsBuilder _defaults,
      Color _primaryColor,
      TextStyle _textStyle,
      TextStyle _actionTextStyle,
      TextStyle _tabLabelTextStyle,
      TextStyle _navTitleTextStyle,
      TextStyle _navLargeTitleTextStyle,
      TextStyle _navActionTextStyle,
      TextStyle _pickerTextStyle,
      TextStyle _dateTimePickerTextStyle,
    }) =>
      CupertinoTextThemeData.raw(
      _defaults,
      _primaryColor,
      _textStyle,
      _actionTextStyle,
      _tabLabelTextStyle,
      _navTitleTextStyle,
      _navLargeTitleTextStyle,
      _navActionTextStyle,
      _pickerTextStyle,
      _dateTimePickerTextStyle,
    ),
);
var cupertinoIconThemeData = MXFunctionInvoke(
    "CupertinoIconThemeData",
    ({
      Color color,
      dynamic opacity,
      dynamic size,
    }) =>
      CupertinoIconThemeData(
      color: color,
      opacity: opacity,
      size: size,
    ),
);
var cupertinoTheme = MXFunctionInvoke(
    "CupertinoTheme",
    ({
      Key key,
      CupertinoThemeData data,
      Widget child,
    }) =>
      CupertinoTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var cupertinoThemeData = MXFunctionInvoke(
    "CupertinoThemeData",
    ({
      Brightness brightness,
      Color primaryColor,
      Color primaryContrastingColor,
      CupertinoTextThemeData textTheme,
      Color barBackgroundColor,
      Color scaffoldBackgroundColor,
    }) =>
      CupertinoThemeData(
      brightness: brightness,
      primaryColor: primaryColor,
      primaryContrastingColor: primaryContrastingColor,
      textTheme: textTheme,
      barBackgroundColor: barBackgroundColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
    ),
);
var cupertinoThemeData_raw = MXFunctionInvoke(
  "cupertinoThemeData.raw",
    ({
      Brightness brightness,
      Color primaryColor,
      Color primaryContrastingColor,
      CupertinoTextThemeData textTheme,
      Color barBackgroundColor,
      Color scaffoldBackgroundColor,
    }) =>
      CupertinoThemeData.raw(
      brightness,
      primaryColor,
      primaryContrastingColor,
      textTheme,
      barBackgroundColor,
      scaffoldBackgroundColor,
    ),
);
var cupertinoThemeData_rawWithDefaults = MXFunctionInvoke(
  "cupertinoThemeData.rawWithDefaults",
    ({
      Brightness brightness,
      Color _primaryColor,
      Color _primaryContrastingColor,
      CupertinoTextThemeData _textTheme,
      Color _barBackgroundColor,
      Color _scaffoldBackgroundColor,
      _CupertinoThemeDefaults _defaults,
    }) =>
      CupertinoThemeData.rawWithDefaults(
      brightness,
      _primaryColor,
      _primaryContrastingColor,
      _textTheme,
      _barBackgroundColor,
      _scaffoldBackgroundColor,
      _defaults,
    ),
);
var cupertinoDynamicColor = MXFunctionInvoke(
    "CupertinoDynamicColor",
    ({
      String debugLabel,
      Color color,
      Color darkColor,
      Color highContrastColor,
      Color darkHighContrastColor,
      Color elevatedColor,
      Color darkElevatedColor,
      Color highContrastElevatedColor,
      Color darkHighContrastElevatedColor,
    }) =>
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
var cupertinoDynamicColor_withBrightnessAndContrast = MXFunctionInvoke(
  "cupertinoDynamicColor.withBrightnessAndContrast",
    ({
      String debugLabel,
      Color color,
      Color darkColor,
      Color highContrastColor,
      Color darkHighContrastColor,
    }) =>
      CupertinoDynamicColor.withBrightnessAndContrast(
      debugLabel: debugLabel,
      color: color,
      darkColor: darkColor,
      highContrastColor: highContrastColor,
      darkHighContrastColor: darkHighContrastColor,
    ),
);
var cupertinoDynamicColor_withBrightness = MXFunctionInvoke(
  "cupertinoDynamicColor.withBrightness",
    ({
      String debugLabel,
      Color color,
      Color darkColor,
    }) =>
      CupertinoDynamicColor.withBrightness(
      debugLabel: debugLabel,
      color: color,
      darkColor: darkColor,
    ),
);

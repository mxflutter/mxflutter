//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/flat_button.dart';
import 'package:flutter/src/material/material_button.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/outline_button.dart';
import 'package:flutter/src/material/raised_button.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerButtonThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_buttonTextTheme.funName] = _buttonTextTheme;
  m[_buttonBarLayoutBehavior.funName] = _buttonBarLayoutBehavior;
  m[_buttonTheme.funName] = _buttonTheme;
  m[_buttonTheme_fromButtonThemeData.funName] = _buttonTheme_fromButtonThemeData;
  m[_buttonTheme_bar.funName] = _buttonTheme_bar;
  m[_buttonThemeData.funName] = _buttonThemeData;
  return m;
}
var _buttonTextTheme = MXFunctionInvoke(
    "ButtonTextTheme",
    ({Map args}) => MXButtonTextTheme.parse(args),
  );
var _buttonBarLayoutBehavior = MXFunctionInvoke(
    "ButtonBarLayoutBehavior",
    ({Map args}) => MXButtonBarLayoutBehavior.parse(args),
  );
var _buttonTheme = MXFunctionInvoke(
    "ButtonTheme",
    (
      {
      Key key,
      ButtonTextTheme textTheme = ButtonTextTheme.normal,
      ButtonBarLayoutBehavior layoutBehavior = ButtonBarLayoutBehavior.padded,
      dynamic minWidth = 88.0,
      dynamic height = 36.0,
      EdgeInsetsGeometry padding,
      ShapeBorder shape,
      bool alignedDropdown = false,
      Color buttonColor,
      Color disabledColor,
      Color focusColor,
      Color hoverColor,
      Color highlightColor,
      Color splashColor,
      ColorScheme colorScheme,
      MaterialTapTargetSize materialTapTargetSize,
      Widget child,
      }
    ) =>
      ButtonTheme(
      key: key,
      textTheme: textTheme,
      layoutBehavior: layoutBehavior,
      minWidth: minWidth?.toDouble(),
      height: height?.toDouble(),
      padding: padding,
      shape: shape,
      alignedDropdown: alignedDropdown,
      buttonColor: buttonColor,
      disabledColor: disabledColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      colorScheme: colorScheme,
      materialTapTargetSize: materialTapTargetSize,
      child: child,
    ),
);
var _buttonTheme_fromButtonThemeData = MXFunctionInvoke(
  "ButtonTheme.fromButtonThemeData",
    (
      {
      Key key,
      ButtonThemeData data,
      Widget child,
      }
    ) =>
      ButtonTheme.fromButtonThemeData(
      key: key,
      data: data,
      child: child,
    ),
);
var _buttonTheme_bar = MXFunctionInvoke(
  "ButtonTheme.bar",
    (
      {
      Key key,
      ButtonTextTheme textTheme = ButtonTextTheme.accent,
      dynamic minWidth = 64.0,
      dynamic height = 36.0,
      EdgeInsetsGeometry padding,
      ShapeBorder shape,
      bool alignedDropdown = false,
      Color buttonColor,
      Color disabledColor,
      Color focusColor,
      Color hoverColor,
      Color highlightColor,
      Color splashColor,
      ColorScheme colorScheme,
      Widget child,
      ButtonBarLayoutBehavior layoutBehavior = ButtonBarLayoutBehavior.padded,
      }
    ) =>
      ButtonTheme.bar(
      key: key,
      textTheme: textTheme,
      minWidth: minWidth?.toDouble(),
      height: height?.toDouble(),
      padding: padding,
      shape: shape,
      alignedDropdown: alignedDropdown,
      buttonColor: buttonColor,
      disabledColor: disabledColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      colorScheme: colorScheme,
      child: child,
      layoutBehavior: layoutBehavior,
    ),
);
var _buttonThemeData = MXFunctionInvoke(
    "ButtonThemeData",
    (
      {
      ButtonTextTheme textTheme = ButtonTextTheme.normal,
      dynamic minWidth = 88.0,
      dynamic height = 36.0,
      EdgeInsetsGeometry padding,
      ShapeBorder shape,
      ButtonBarLayoutBehavior layoutBehavior = ButtonBarLayoutBehavior.padded,
      bool alignedDropdown = false,
      Color buttonColor,
      Color disabledColor,
      Color focusColor,
      Color hoverColor,
      Color highlightColor,
      Color splashColor,
      ColorScheme colorScheme,
      MaterialTapTargetSize materialTapTargetSize,
      }
    ) =>
      ButtonThemeData(
      textTheme: textTheme,
      minWidth: minWidth?.toDouble(),
      height: height?.toDouble(),
      padding: padding,
      shape: shape,
      layoutBehavior: layoutBehavior,
      alignedDropdown: alignedDropdown,
      buttonColor: buttonColor,
      disabledColor: disabledColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      colorScheme: colorScheme,
      materialTapTargetSize: materialTapTargetSize,
    ),
);
class MXButtonTextTheme {
  static Map str2VMap = {
    'ButtonTextTheme.normal': ButtonTextTheme.normal,
    'ButtonTextTheme.accent': ButtonTextTheme.accent,
    'ButtonTextTheme.primary': ButtonTextTheme.primary,
  };
  static ButtonTextTheme parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXButtonBarLayoutBehavior {
  static Map str2VMap = {
    'ButtonBarLayoutBehavior.constrained': ButtonBarLayoutBehavior.constrained,
    'ButtonBarLayoutBehavior.padded': ButtonBarLayoutBehavior.padded,
  };
  static ButtonBarLayoutBehavior parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

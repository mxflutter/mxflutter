//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_buttonThemeFromButtonThemeData.funName] = _buttonThemeFromButtonThemeData;
  m[_buttonThemeBar.funName] = _buttonThemeBar;
  m[_buttonThemeData.funName] = _buttonThemeData;
  return m;
}

var _buttonTextTheme = MXFunctionInvoke(
    "ButtonTextTheme", ({String name, int index}) => MXButtonTextTheme.parse(name, index), ["name", "index"]);
var _buttonBarLayoutBehavior = MXFunctionInvoke("ButtonBarLayoutBehavior",
    ({String name, int index}) => MXButtonBarLayoutBehavior.parse(name, index), ["name", "index"]);
var _buttonTheme = MXFunctionInvoke(
  "ButtonTheme",
  ({
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
  }) =>
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
  [
    "key",
    "textTheme",
    "layoutBehavior",
    "minWidth",
    "height",
    "padding",
    "shape",
    "alignedDropdown",
    "buttonColor",
    "disabledColor",
    "focusColor",
    "hoverColor",
    "highlightColor",
    "splashColor",
    "colorScheme",
    "materialTapTargetSize",
    "child",
  ],
);
var _buttonThemeFromButtonThemeData = MXFunctionInvoke(
  "ButtonTheme.fromButtonThemeData",
  ({
    Key key,
    ButtonThemeData data,
    Widget child,
  }) =>
      ButtonTheme.fromButtonThemeData(
    key: key,
    data: data,
    child: child,
  ),
  [
    "key",
    "data",
    "child",
  ],
);
var _buttonThemeBar = MXFunctionInvoke(
  "ButtonTheme.bar",
  ({
    Key key,
    ButtonTextTheme textTheme = ButtonTextTheme.accent,
    dynamic minWidth = 64.0,
    dynamic height = 36.0,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(horizontal: 8.0),
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
  }) =>
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
  [
    "key",
    "textTheme",
    "minWidth",
    "height",
    "padding",
    "shape",
    "alignedDropdown",
    "buttonColor",
    "disabledColor",
    "focusColor",
    "hoverColor",
    "highlightColor",
    "splashColor",
    "colorScheme",
    "child",
    "layoutBehavior",
  ],
);
var _buttonThemeData = MXFunctionInvoke(
  "ButtonThemeData",
  ({
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
  }) =>
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
  [
    "textTheme",
    "minWidth",
    "height",
    "padding",
    "shape",
    "layoutBehavior",
    "alignedDropdown",
    "buttonColor",
    "disabledColor",
    "focusColor",
    "hoverColor",
    "highlightColor",
    "splashColor",
    "colorScheme",
    "materialTapTargetSize",
  ],
);

class MXButtonTextTheme {
  static ButtonTextTheme parse(String name, int index) {
    switch (name) {
      case 'ButtonTextTheme.normal':
        return ButtonTextTheme.normal;
      case 'ButtonTextTheme.accent':
        return ButtonTextTheme.accent;
      case 'ButtonTextTheme.primary':
        return ButtonTextTheme.primary;
    }
    return null;
  }
}

class MXButtonBarLayoutBehavior {
  static ButtonBarLayoutBehavior parse(String name, int index) {
    switch (name) {
      case 'ButtonBarLayoutBehavior.constrained':
        return ButtonBarLayoutBehavior.constrained;
      case 'ButtonBarLayoutBehavior.padded':
        return ButtonBarLayoutBehavior.padded;
    }
    return null;
  }
}

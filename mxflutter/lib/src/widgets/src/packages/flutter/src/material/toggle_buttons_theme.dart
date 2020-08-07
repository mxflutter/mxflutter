//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/toggle_buttons_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerToggleButtonsThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_toggleButtonsThemeData.funName] = _toggleButtonsThemeData;
  m[_toggleButtonsTheme.funName] = _toggleButtonsTheme;
  return m;
}
var _toggleButtonsThemeData = MXFunctionInvoke(
    "ToggleButtonsThemeData",
    (
      {
      TextStyle textStyle,
      BoxConstraints constraints,
      Color color,
      Color selectedColor,
      Color disabledColor,
      Color fillColor,
      Color focusColor,
      Color highlightColor,
      Color hoverColor,
      Color splashColor,
      Color borderColor,
      Color selectedBorderColor,
      Color disabledBorderColor,
      BorderRadius borderRadius,
      dynamic borderWidth,
      }
    ) =>
      ToggleButtonsThemeData(
      textStyle: textStyle,
      constraints: constraints,
      color: color,
      selectedColor: selectedColor,
      disabledColor: disabledColor,
      fillColor: fillColor,
      focusColor: focusColor,
      highlightColor: highlightColor,
      hoverColor: hoverColor,
      splashColor: splashColor,
      borderColor: borderColor,
      selectedBorderColor: selectedBorderColor,
      disabledBorderColor: disabledBorderColor,
      borderRadius: borderRadius,
      borderWidth: borderWidth?.toDouble(),
    ),
);
var _toggleButtonsTheme = MXFunctionInvoke(
    "ToggleButtonsTheme",
    (
      {
      Key key,
      ToggleButtonsThemeData data,
      Widget child,
      }
    ) =>
      ToggleButtonsTheme(
      key: key,
      data: data,
      child: child,
    ),
);

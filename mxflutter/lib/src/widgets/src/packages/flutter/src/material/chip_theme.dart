//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/chip_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerChipThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_chipTheme.funName] = _chipTheme;
  m[_chipThemeData.funName] = _chipThemeData;
  m[_chipThemeDataFromDefaults.funName] = _chipThemeDataFromDefaults;
  return m;
}

var _chipTheme = MXFunctionInvoke(
  "ChipTheme",
  ({
    Key key,
    ChipThemeData data,
    Widget child,
  }) =>
      ChipTheme(
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
var _chipThemeData = MXFunctionInvoke(
  "ChipThemeData",
  ({
    Color backgroundColor,
    Color deleteIconColor,
    Color disabledColor,
    Color selectedColor,
    Color secondarySelectedColor,
    Color shadowColor,
    Color selectedShadowColor,
    bool showCheckmark,
    Color checkmarkColor,
    EdgeInsetsGeometry labelPadding,
    EdgeInsetsGeometry padding,
    ShapeBorder shape,
    TextStyle labelStyle,
    TextStyle secondaryLabelStyle,
    Brightness brightness,
    dynamic elevation,
    dynamic pressElevation,
  }) =>
      ChipThemeData(
    backgroundColor: backgroundColor,
    deleteIconColor: deleteIconColor,
    disabledColor: disabledColor,
    selectedColor: selectedColor,
    secondarySelectedColor: secondarySelectedColor,
    shadowColor: shadowColor,
    selectedShadowColor: selectedShadowColor,
    showCheckmark: showCheckmark,
    checkmarkColor: checkmarkColor,
    labelPadding: labelPadding,
    padding: padding,
    shape: shape,
    labelStyle: labelStyle,
    secondaryLabelStyle: secondaryLabelStyle,
    brightness: brightness,
    elevation: elevation?.toDouble(),
    pressElevation: pressElevation?.toDouble(),
  ),
  [
    "backgroundColor",
    "deleteIconColor",
    "disabledColor",
    "selectedColor",
    "secondarySelectedColor",
    "shadowColor",
    "selectedShadowColor",
    "showCheckmark",
    "checkmarkColor",
    "labelPadding",
    "padding",
    "shape",
    "labelStyle",
    "secondaryLabelStyle",
    "brightness",
    "elevation",
    "pressElevation",
  ],
);
var _chipThemeDataFromDefaults = MXFunctionInvoke(
  "ChipThemeData.fromDefaults",
  ({
    Brightness brightness,
    Color primaryColor,
    Color secondaryColor,
    TextStyle labelStyle,
  }) =>
      ChipThemeData.fromDefaults(
    brightness: brightness,
    primaryColor: primaryColor,
    secondaryColor: secondaryColor,
    labelStyle: labelStyle,
  ),
  [
    "brightness",
    "primaryColor",
    "secondaryColor",
    "labelStyle",
  ],
);

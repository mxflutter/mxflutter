//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/snack_bar_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSnackBarThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_snackBarBehavior.funName] = _snackBarBehavior;
  m[_snackBarThemeData.funName] = _snackBarThemeData;
  return m;
}

var _snackBarBehavior = MXFunctionInvoke(
    "SnackBarBehavior", ({String name, int index}) => MXSnackBarBehavior.parse(name, index), ["name", "index"]);
var _snackBarThemeData = MXFunctionInvoke(
  "SnackBarThemeData",
  ({
    Color backgroundColor,
    Color actionTextColor,
    Color disabledActionTextColor,
    TextStyle contentTextStyle,
    dynamic elevation,
    ShapeBorder shape,
    SnackBarBehavior behavior,
  }) =>
      SnackBarThemeData(
    backgroundColor: backgroundColor,
    actionTextColor: actionTextColor,
    disabledActionTextColor: disabledActionTextColor,
    contentTextStyle: contentTextStyle,
    elevation: elevation?.toDouble(),
    shape: shape,
    behavior: behavior,
  ),
  [
    "backgroundColor",
    "actionTextColor",
    "disabledActionTextColor",
    "contentTextStyle",
    "elevation",
    "shape",
    "behavior",
  ],
);

class MXSnackBarBehavior {
  static SnackBarBehavior parse(String name, int index) {
    switch (name) {
      case 'SnackBarBehavior.fixed':
        return SnackBarBehavior.fixed;
      case 'SnackBarBehavior.floating':
        return SnackBarBehavior.floating;
    }
    return null;
  }
}

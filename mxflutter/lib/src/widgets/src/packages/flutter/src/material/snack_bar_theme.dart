//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
    "SnackBarBehavior",
    ({Map args}) => MXSnackBarBehavior.parse(args),
  );
var _snackBarThemeData = MXFunctionInvoke(
    "SnackBarThemeData",
    (
      {
      Color backgroundColor,
      Color actionTextColor,
      Color disabledActionTextColor,
      TextStyle contentTextStyle,
      dynamic elevation,
      ShapeBorder shape,
      SnackBarBehavior behavior,
      }
    ) =>
      SnackBarThemeData(
      backgroundColor: backgroundColor,
      actionTextColor: actionTextColor,
      disabledActionTextColor: disabledActionTextColor,
      contentTextStyle: contentTextStyle,
      elevation: elevation?.toDouble(),
      shape: shape,
      behavior: behavior,
    ),
);
class MXSnackBarBehavior {
  static Map str2VMap = {
    'SnackBarBehavior.fixed': SnackBarBehavior.fixed,
    'SnackBarBehavior.floating': SnackBarBehavior.floating,
  };
  static SnackBarBehavior parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

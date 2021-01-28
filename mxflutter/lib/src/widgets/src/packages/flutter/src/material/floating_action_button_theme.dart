//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/floating_action_button_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFloatingActionButtonThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_floatingActionButtonThemeData.funName] = _floatingActionButtonThemeData;
  return m;
}

var _floatingActionButtonThemeData = MXFunctionInvoke(
  "FloatingActionButtonThemeData",
  ({
    Color foregroundColor,
    Color backgroundColor,
    Color focusColor,
    Color hoverColor,
    Color splashColor,
    dynamic elevation,
    dynamic focusElevation,
    dynamic hoverElevation,
    dynamic disabledElevation,
    dynamic highlightElevation,
    ShapeBorder shape,
  }) =>
      FloatingActionButtonThemeData(
    foregroundColor: foregroundColor,
    backgroundColor: backgroundColor,
    focusColor: focusColor,
    hoverColor: hoverColor,
    splashColor: splashColor,
    elevation: elevation?.toDouble(),
    focusElevation: focusElevation?.toDouble(),
    hoverElevation: hoverElevation?.toDouble(),
    disabledElevation: disabledElevation?.toDouble(),
    highlightElevation: highlightElevation?.toDouble(),
    shape: shape,
  ),
  [
    "foregroundColor",
    "backgroundColor",
    "focusColor",
    "hoverColor",
    "splashColor",
    "elevation",
    "focusElevation",
    "hoverElevation",
    "disabledElevation",
    "highlightElevation",
    "shape",
  ],
);

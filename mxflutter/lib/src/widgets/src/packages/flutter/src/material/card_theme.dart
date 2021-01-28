//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/card_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCardThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cardTheme.funName] = _cardTheme;
  return m;
}

var _cardTheme = MXFunctionInvoke(
  "CardTheme",
  ({
    Clip clipBehavior,
    Color color,
    Color shadowColor,
    dynamic elevation,
    EdgeInsetsGeometry margin,
    ShapeBorder shape,
  }) =>
      CardTheme(
    clipBehavior: clipBehavior,
    color: color,
    shadowColor: shadowColor,
    elevation: elevation?.toDouble(),
    margin: margin,
    shape: shape,
  ),
  [
    "clipBehavior",
    "color",
    "shadowColor",
    "elevation",
    "margin",
    "shape",
  ],
);

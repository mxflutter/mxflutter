//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/divider_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDividerThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dividerThemeData.funName] = _dividerThemeData;
  m[_dividerTheme.funName] = _dividerTheme;
  return m;
}
var _dividerThemeData = MXFunctionInvoke(
    "DividerThemeData",
    (
      {
      Color color,
      dynamic space,
      dynamic thickness,
      dynamic indent,
      dynamic endIndent,
      }
    ) =>
      DividerThemeData(
      color: color,
      space: space?.toDouble(),
      thickness: thickness?.toDouble(),
      indent: indent?.toDouble(),
      endIndent: endIndent?.toDouble(),
    ),
);
var _dividerTheme = MXFunctionInvoke(
    "DividerTheme",
    (
      {
      Key key,
      DividerThemeData data,
      Widget child,
      }
    ) =>
      DividerTheme(
      key: key,
      data: data,
      child: child,
    ),
);

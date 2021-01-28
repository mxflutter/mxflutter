//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/app_bar_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAppBarThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_appBarTheme.funName] = _appBarTheme;
  return m;
}

var _appBarTheme = MXFunctionInvoke(
  "AppBarTheme",
  ({
    Brightness brightness,
    Color color,
    dynamic elevation,
    Color shadowColor,
    IconThemeData iconTheme,
    IconThemeData actionsIconTheme,
    TextTheme textTheme,
    bool centerTitle,
  }) =>
      AppBarTheme(
    brightness: brightness,
    color: color,
    elevation: elevation?.toDouble(),
    shadowColor: shadowColor,
    iconTheme: iconTheme,
    actionsIconTheme: actionsIconTheme,
    textTheme: textTheme,
    centerTitle: centerTitle,
  ),
  [
    "brightness",
    "color",
    "elevation",
    "shadowColor",
    "iconTheme",
    "actionsIconTheme",
    "textTheme",
    "centerTitle",
  ],
);

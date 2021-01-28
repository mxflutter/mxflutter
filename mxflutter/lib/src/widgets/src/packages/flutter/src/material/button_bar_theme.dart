//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/button_bar_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerButtonBarThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_buttonBarThemeData.funName] = _buttonBarThemeData;
  m[_buttonBarTheme.funName] = _buttonBarTheme;
  return m;
}

var _buttonBarThemeData = MXFunctionInvoke(
  "ButtonBarThemeData",
  ({
    MainAxisAlignment alignment,
    MainAxisSize mainAxisSize,
    ButtonTextTheme buttonTextTheme,
    dynamic buttonMinWidth,
    dynamic buttonHeight,
    EdgeInsetsGeometry buttonPadding,
    bool buttonAlignedDropdown,
    ButtonBarLayoutBehavior layoutBehavior,
    VerticalDirection overflowDirection,
  }) =>
      ButtonBarThemeData(
    alignment: alignment,
    mainAxisSize: mainAxisSize,
    buttonTextTheme: buttonTextTheme,
    buttonMinWidth: buttonMinWidth?.toDouble(),
    buttonHeight: buttonHeight?.toDouble(),
    buttonPadding: buttonPadding,
    buttonAlignedDropdown: buttonAlignedDropdown,
    layoutBehavior: layoutBehavior,
    overflowDirection: overflowDirection,
  ),
  [
    "alignment",
    "mainAxisSize",
    "buttonTextTheme",
    "buttonMinWidth",
    "buttonHeight",
    "buttonPadding",
    "buttonAlignedDropdown",
    "layoutBehavior",
    "overflowDirection",
  ],
);
var _buttonBarTheme = MXFunctionInvoke(
  "ButtonBarTheme",
  ({
    Key key,
    ButtonBarThemeData data,
    Widget child,
  }) =>
      ButtonBarTheme(
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

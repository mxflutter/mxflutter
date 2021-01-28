//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/bottom_navigation_bar_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBottomNavigationBarThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_bottomNavigationBarThemeData.funName] = _bottomNavigationBarThemeData;
  m[_bottomNavigationBarTheme.funName] = _bottomNavigationBarTheme;
  return m;
}

var _bottomNavigationBarThemeData = MXFunctionInvoke(
  "BottomNavigationBarThemeData",
  ({
    Color backgroundColor,
    dynamic elevation,
    IconThemeData selectedIconTheme,
    IconThemeData unselectedIconTheme,
    Color selectedItemColor,
    Color unselectedItemColor,
    TextStyle selectedLabelStyle,
    TextStyle unselectedLabelStyle,
    bool showSelectedLabels,
    bool showUnselectedLabels,
    BottomNavigationBarType type,
  }) =>
      BottomNavigationBarThemeData(
    backgroundColor: backgroundColor,
    elevation: elevation?.toDouble(),
    selectedIconTheme: selectedIconTheme,
    unselectedIconTheme: unselectedIconTheme,
    selectedItemColor: selectedItemColor,
    unselectedItemColor: unselectedItemColor,
    selectedLabelStyle: selectedLabelStyle,
    unselectedLabelStyle: unselectedLabelStyle,
    showSelectedLabels: showSelectedLabels,
    showUnselectedLabels: showUnselectedLabels,
    type: type,
  ),
  [
    "backgroundColor",
    "elevation",
    "selectedIconTheme",
    "unselectedIconTheme",
    "selectedItemColor",
    "unselectedItemColor",
    "selectedLabelStyle",
    "unselectedLabelStyle",
    "showSelectedLabels",
    "showUnselectedLabels",
    "type",
  ],
);
var _bottomNavigationBarTheme = MXFunctionInvoke(
  "BottomNavigationBarTheme",
  ({
    Key key,
    BottomNavigationBarThemeData data,
    Widget child,
  }) =>
      BottomNavigationBarTheme(
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

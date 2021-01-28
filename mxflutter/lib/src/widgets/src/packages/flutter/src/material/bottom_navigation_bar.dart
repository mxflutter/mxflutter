//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'dart:collection';
import 'dart:math' as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/material/bottom_navigation_bar_theme.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBottomNavigationBarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_bottomNavigationBarType.funName] = _bottomNavigationBarType;
  m[_bottomNavigationBar.funName] = _bottomNavigationBar;
  return m;
}

var _bottomNavigationBarType = MXFunctionInvoke("BottomNavigationBarType",
    ({String name, int index}) => MXBottomNavigationBarType.parse(name, index), ["name", "index"]);
var _bottomNavigationBar = MXFunctionInvoke(
  "BottomNavigationBar",
  ({
    Key key,
    dynamic items,
    dynamic onTap,
    int currentIndex = 0,
    dynamic elevation,
    BottomNavigationBarType type,
    Color fixedColor,
    Color backgroundColor,
    dynamic iconSize = 24.0,
    Color selectedItemColor,
    Color unselectedItemColor,
    IconThemeData selectedIconTheme,
    IconThemeData unselectedIconTheme,
    dynamic selectedFontSize = 14.0,
    dynamic unselectedFontSize = 12.0,
    TextStyle selectedLabelStyle,
    TextStyle unselectedLabelStyle,
    bool showSelectedLabels = true,
    bool showUnselectedLabels,
    MouseCursor mouseCursor,
  }) =>
      BottomNavigationBar(
    key: key,
    items: toListT<BottomNavigationBarItem>(items),
    onTap: createValueChangedGenericClosure<int>(_bottomNavigationBar.buildOwner, onTap),
    currentIndex: currentIndex,
    elevation: elevation?.toDouble(),
    type: type,
    fixedColor: fixedColor,
    backgroundColor: backgroundColor,
    iconSize: iconSize?.toDouble(),
    selectedItemColor: selectedItemColor,
    unselectedItemColor: unselectedItemColor,
    selectedIconTheme: selectedIconTheme,
    unselectedIconTheme: unselectedIconTheme,
    selectedFontSize: selectedFontSize?.toDouble(),
    unselectedFontSize: unselectedFontSize?.toDouble(),
    selectedLabelStyle: selectedLabelStyle,
    unselectedLabelStyle: unselectedLabelStyle,
    showSelectedLabels: showSelectedLabels,
    showUnselectedLabels: showUnselectedLabels,
    mouseCursor: mouseCursor,
  ),
  [
    "key",
    "items",
    "onTap",
    "currentIndex",
    "elevation",
    "type",
    "fixedColor",
    "backgroundColor",
    "iconSize",
    "selectedItemColor",
    "unselectedItemColor",
    "selectedIconTheme",
    "unselectedIconTheme",
    "selectedFontSize",
    "unselectedFontSize",
    "selectedLabelStyle",
    "unselectedLabelStyle",
    "showSelectedLabels",
    "showUnselectedLabels",
    "mouseCursor",
  ],
);

class MXBottomNavigationBarType {
  static BottomNavigationBarType parse(String name, int index) {
    switch (name) {
      case 'BottomNavigationBarType.fixed':
        return BottomNavigationBarType.fixed;
      case 'BottomNavigationBarType.shifting':
        return BottomNavigationBarType.shifting;
    }
    return null;
  }
}

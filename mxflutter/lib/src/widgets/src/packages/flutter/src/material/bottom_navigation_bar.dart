//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'dart:collection';
import 'dart:math' as math;
import 'package:flutter/widgets.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/material/colors.dart';
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
var _bottomNavigationBarType = MXFunctionInvoke(
    "BottomNavigationBarType",
    ({Map args}) => MXBottomNavigationBarType.parse(args),
  );
var _bottomNavigationBar = MXFunctionInvoke(
    "BottomNavigationBar",
    (
      {
      Key key,
      List<BottomNavigationBarItem> items,
      dynamic onTap,
      int currentIndex = 0,
      dynamic elevation = 8.0,
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
      }
    ) =>
      BottomNavigationBar(
      key: key,
      items: items,
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
    ),
);
class MXBottomNavigationBarType {
  static Map str2VMap = {
    'BottomNavigationBarType.fixed': BottomNavigationBarType.fixed,
    'BottomNavigationBarType.shifting': BottomNavigationBarType.shifting,
  };
  static BottomNavigationBarType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/navigation_rail_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/navigation_rail.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerNavigationRailThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_navigationRailThemeData.funName] = _navigationRailThemeData;
  m[_navigationRailTheme.funName] = _navigationRailTheme;
  return m;
}

var _navigationRailThemeData = MXFunctionInvoke(
  "NavigationRailThemeData",
  ({
    Color backgroundColor,
    dynamic elevation,
    TextStyle unselectedLabelTextStyle,
    TextStyle selectedLabelTextStyle,
    IconThemeData unselectedIconTheme,
    IconThemeData selectedIconTheme,
    dynamic groupAlignment,
    NavigationRailLabelType labelType,
  }) =>
      NavigationRailThemeData(
    backgroundColor: backgroundColor,
    elevation: elevation?.toDouble(),
    unselectedLabelTextStyle: unselectedLabelTextStyle,
    selectedLabelTextStyle: selectedLabelTextStyle,
    unselectedIconTheme: unselectedIconTheme,
    selectedIconTheme: selectedIconTheme,
    groupAlignment: groupAlignment?.toDouble(),
    labelType: labelType,
  ),
  [
    "backgroundColor",
    "elevation",
    "unselectedLabelTextStyle",
    "selectedLabelTextStyle",
    "unselectedIconTheme",
    "selectedIconTheme",
    "groupAlignment",
    "labelType",
  ],
);
var _navigationRailTheme = MXFunctionInvoke(
  "NavigationRailTheme",
  ({
    Key key,
    NavigationRailThemeData data,
    Widget child,
  }) =>
      NavigationRailTheme(
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

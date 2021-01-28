//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/navigation_rail.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/navigation_rail_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerNavigationRailSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_navigationRail.funName] = _navigationRail;
  m[_navigationRailLabelType.funName] = _navigationRailLabelType;
  m[_navigationRailDestination.funName] = _navigationRailDestination;
  return m;
}

var _navigationRail = MXFunctionInvoke(
  "NavigationRail",
  ({
    Color backgroundColor,
    bool extended = false,
    Widget leading,
    Widget trailing,
    dynamic destinations,
    int selectedIndex,
    dynamic onDestinationSelected,
    dynamic elevation,
    dynamic groupAlignment,
    NavigationRailLabelType labelType,
    TextStyle unselectedLabelTextStyle,
    TextStyle selectedLabelTextStyle,
    IconThemeData unselectedIconTheme,
    IconThemeData selectedIconTheme,
    dynamic minWidth,
    dynamic minExtendedWidth,
  }) =>
      NavigationRail(
    backgroundColor: backgroundColor,
    extended: extended,
    leading: leading,
    trailing: trailing,
    destinations: toListT<NavigationRailDestination>(destinations),
    selectedIndex: selectedIndex,
    onDestinationSelected: createValueChangedGenericClosure<int>(_navigationRail.buildOwner, onDestinationSelected),
    elevation: elevation?.toDouble(),
    groupAlignment: groupAlignment?.toDouble(),
    labelType: labelType,
    unselectedLabelTextStyle: unselectedLabelTextStyle,
    selectedLabelTextStyle: selectedLabelTextStyle,
    unselectedIconTheme: unselectedIconTheme,
    selectedIconTheme: selectedIconTheme,
    minWidth: minWidth?.toDouble(),
    minExtendedWidth: minExtendedWidth?.toDouble(),
  ),
  [
    "backgroundColor",
    "extended",
    "leading",
    "trailing",
    "destinations",
    "selectedIndex",
    "onDestinationSelected",
    "elevation",
    "groupAlignment",
    "labelType",
    "unselectedLabelTextStyle",
    "selectedLabelTextStyle",
    "unselectedIconTheme",
    "selectedIconTheme",
    "minWidth",
    "minExtendedWidth",
  ],
);
var _navigationRailLabelType = MXFunctionInvoke("NavigationRailLabelType",
    ({String name, int index}) => MXNavigationRailLabelType.parse(name, index), ["name", "index"]);
var _navigationRailDestination = MXFunctionInvoke(
  "NavigationRailDestination",
  ({
    Widget icon,
    Widget selectedIcon,
    Widget label,
  }) =>
      NavigationRailDestination(
    icon: icon,
    selectedIcon: selectedIcon,
    label: label,
  ),
  [
    "icon",
    "selectedIcon",
    "label",
  ],
);

class MXNavigationRailLabelType {
  static NavigationRailLabelType parse(String name, int index) {
    switch (name) {
      case 'NavigationRailLabelType.none':
        return NavigationRailLabelType.none;
      case 'NavigationRailLabelType.selected':
        return NavigationRailLabelType.selected;
      case 'NavigationRailLabelType.all':
        return NavigationRailLabelType.all;
    }
    return null;
  }
}

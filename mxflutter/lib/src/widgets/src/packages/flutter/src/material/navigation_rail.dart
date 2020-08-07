//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
    (
      {
      Color backgroundColor,
      bool extended = false,
      Widget leading,
      Widget trailing,
      List<NavigationRailDestination> destinations,
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
      }
    ) =>
      NavigationRail(
      backgroundColor: backgroundColor,
      extended: extended,
      leading: leading,
      trailing: trailing,
      destinations: destinations,
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
);
var _navigationRailLabelType = MXFunctionInvoke(
    "NavigationRailLabelType",
    ({Map args}) => MXNavigationRailLabelType.parse(args),
  );
var _navigationRailDestination = MXFunctionInvoke(
    "NavigationRailDestination",
    (
      {
      Widget icon,
      Widget selectedIcon,
      Widget label,
      }
    ) =>
      NavigationRailDestination(
      icon: icon,
      selectedIcon: selectedIcon,
      label: label,
    ),
);
class MXNavigationRailLabelType {
  static Map str2VMap = {
    'NavigationRailLabelType.none': NavigationRailLabelType.none,
    'NavigationRailLabelType.selected': NavigationRailLabelType.selected,
    'NavigationRailLabelType.all': NavigationRailLabelType.all,
  };
  static NavigationRailLabelType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

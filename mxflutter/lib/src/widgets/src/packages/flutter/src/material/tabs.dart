//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/tabs.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/tab_bar_theme.dart';
import 'package:flutter/src/material/tab_controller.dart';
import 'package:flutter/src/material/tab_indicator.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTabsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tabBarIndicatorSize.funName] = _tabBarIndicatorSize;
  m[_tab.funName] = _tab;
  m[_tabBar.funName] = _tabBar;
  m[_tabBarView.funName] = _tabBarView;
  m[_tabPageSelectorIndicator.funName] = _tabPageSelectorIndicator;
  m[_tabPageSelector.funName] = _tabPageSelector;
  return m;
}

var _tabBarIndicatorSize = MXFunctionInvoke(
    "TabBarIndicatorSize", ({String name, int index}) => MXTabBarIndicatorSize.parse(name, index), ["name", "index"]);
var _tab = MXFunctionInvoke(
  "Tab",
  ({
    Key key,
    String text,
    Widget icon,
    EdgeInsetsGeometry iconMargin = const EdgeInsets.only(bottom: 10.0),
    Widget child,
  }) =>
      Tab(
    key: key,
    text: text,
    icon: icon,
    iconMargin: iconMargin,
    child: child,
  ),
  [
    "key",
    "text",
    "icon",
    "iconMargin",
    "child",
  ],
);
var _tabBar = MXFunctionInvoke(
  "TabBar",
  ({
    Key key,
    dynamic tabs,
    TabController controller,
    bool isScrollable = false,
    Color indicatorColor,
    dynamic indicatorWeight = 2.0,
    EdgeInsetsGeometry indicatorPadding = EdgeInsets.zero,
    Decoration indicator,
    TabBarIndicatorSize indicatorSize,
    Color labelColor,
    TextStyle labelStyle,
    EdgeInsetsGeometry labelPadding,
    Color unselectedLabelColor,
    TextStyle unselectedLabelStyle,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    MouseCursor mouseCursor,
    dynamic onTap,
    ScrollPhysics physics,
  }) =>
      TabBar(
    key: key,
    tabs: toListT<Widget>(tabs),
    controller: controller,
    isScrollable: isScrollable,
    indicatorColor: indicatorColor,
    indicatorWeight: indicatorWeight?.toDouble(),
    indicatorPadding: indicatorPadding,
    indicator: indicator,
    indicatorSize: indicatorSize,
    labelColor: labelColor,
    labelStyle: labelStyle,
    labelPadding: labelPadding,
    unselectedLabelColor: unselectedLabelColor,
    unselectedLabelStyle: unselectedLabelStyle,
    dragStartBehavior: dragStartBehavior,
    mouseCursor: mouseCursor,
    onTap: createValueChangedGenericClosure<int>(_tabBar.buildOwner, onTap),
    physics: physics,
  ),
  [
    "key",
    "tabs",
    "controller",
    "isScrollable",
    "indicatorColor",
    "indicatorWeight",
    "indicatorPadding",
    "indicator",
    "indicatorSize",
    "labelColor",
    "labelStyle",
    "labelPadding",
    "unselectedLabelColor",
    "unselectedLabelStyle",
    "dragStartBehavior",
    "mouseCursor",
    "onTap",
    "physics",
  ],
);
var _tabBarView = MXFunctionInvoke(
  "TabBarView",
  ({
    Key key,
    dynamic children,
    TabController controller,
    ScrollPhysics physics,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      TabBarView(
    key: key,
    children: toListT<Widget>(children),
    controller: controller,
    physics: physics,
    dragStartBehavior: dragStartBehavior,
  ),
  [
    "key",
    "children",
    "controller",
    "physics",
    "dragStartBehavior",
  ],
);
var _tabPageSelectorIndicator = MXFunctionInvoke(
  "TabPageSelectorIndicator",
  ({
    Key key,
    Color backgroundColor,
    Color borderColor,
    dynamic size,
  }) =>
      TabPageSelectorIndicator(
    key: key,
    backgroundColor: backgroundColor,
    borderColor: borderColor,
    size: size?.toDouble(),
  ),
  [
    "key",
    "backgroundColor",
    "borderColor",
    "size",
  ],
);
var _tabPageSelector = MXFunctionInvoke(
  "TabPageSelector",
  ({
    Key key,
    TabController controller,
    dynamic indicatorSize = 12.0,
    Color color,
    Color selectedColor,
  }) =>
      TabPageSelector(
    key: key,
    controller: controller,
    indicatorSize: indicatorSize?.toDouble(),
    color: color,
    selectedColor: selectedColor,
  ),
  [
    "key",
    "controller",
    "indicatorSize",
    "color",
    "selectedColor",
  ],
);

class MXTabBarIndicatorSize {
  static TabBarIndicatorSize parse(String name, int index) {
    switch (name) {
      case 'TabBarIndicatorSize.tab':
        return TabBarIndicatorSize.tab;
      case 'TabBarIndicatorSize.label':
        return TabBarIndicatorSize.label;
    }
    return null;
  }
}

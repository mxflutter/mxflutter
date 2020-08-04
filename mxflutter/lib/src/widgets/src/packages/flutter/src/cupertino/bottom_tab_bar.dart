//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/bottom_tab_bar.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBottomTabBarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[cupertinoTabBar.funName] = cupertinoTabBar;
  return m;
}
var cupertinoTabBar = MXFunctionInvoke(
    "CupertinoTabBar",
    ({
      Key key,
      List<BottomNavigationBarItem> items,
      dynamic onTap,
      int currentIndex = 0,
      Color backgroundColor,
      Color activeColor,
      Color inactiveColor,
      dynamic iconSize = 30.0,
      Border border,
    }) =>
      CupertinoTabBar(
      key: key,
      items: items,
      onTap: createValueChangedGenericClosure<int>(cupertinoTabBar.buildOwner, onTap),
      currentIndex: currentIndex,
      backgroundColor: backgroundColor,
      activeColor: activeColor,
      inactiveColor: inactiveColor,
      iconSize: iconSize,
      border: border,
    ),
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/bottom_navigation_bar_item.dart';
import 'dart:ui';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBottomNavigationBarItemSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_bottomNavigationBarItem.funName] = _bottomNavigationBarItem;
  return m;
}

var _bottomNavigationBarItem = MXFunctionInvoke(
  "BottomNavigationBarItem",
  ({
    Widget icon,
    Widget title,
    Widget activeIcon,
    Color backgroundColor,
  }) =>
      BottomNavigationBarItem(
    icon: icon,
    title: title,
    activeIcon: activeIcon,
    backgroundColor: backgroundColor,
  ),
  [
    "icon",
    "title",
    "activeIcon",
    "backgroundColor",
  ],
);

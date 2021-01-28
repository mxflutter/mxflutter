//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/bottom_tab_bar.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:flutter/src/cupertino/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBottomTabBarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoTabBar.funName] = _cupertinoTabBar;
  return m;
}

var _cupertinoTabBar = MXFunctionInvoke(
  "CupertinoTabBar",
  ({
    Key key,
    dynamic items,
    dynamic onTap,
    int currentIndex = 0,
    Color backgroundColor,
    Color activeColor,
    Color inactiveColor = CupertinoColors.inactiveGray,
    dynamic iconSize = 30.0,
    Border border = const Border(
        top: const BorderSide(
            color: CupertinoDynamicColor.withBrightness(color: Color(0x4C000000), darkColor: Color(0x29000000)),
            width: 0.0,
            style: BorderStyle.solid)),
  }) =>
      CupertinoTabBar(
    key: key,
    items: toListT<BottomNavigationBarItem>(items),
    onTap: createValueChangedGenericClosure<int>(_cupertinoTabBar.buildOwner, onTap),
    currentIndex: currentIndex,
    backgroundColor: backgroundColor,
    activeColor: activeColor,
    inactiveColor: inactiveColor,
    iconSize: iconSize?.toDouble(),
    border: border,
  ),
  [
    "key",
    "items",
    "onTap",
    "currentIndex",
    "backgroundColor",
    "activeColor",
    "inactiveColor",
    "iconSize",
    "border",
  ],
);

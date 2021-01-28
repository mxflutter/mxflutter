//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/tab_bar_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/tabs.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTabBarThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tabBarTheme.funName] = _tabBarTheme;
  return m;
}

var _tabBarTheme = MXFunctionInvoke(
  "TabBarTheme",
  ({
    Decoration indicator,
    TabBarIndicatorSize indicatorSize,
    Color labelColor,
    EdgeInsetsGeometry labelPadding,
    TextStyle labelStyle,
    Color unselectedLabelColor,
    TextStyle unselectedLabelStyle,
  }) =>
      TabBarTheme(
    indicator: indicator,
    indicatorSize: indicatorSize,
    labelColor: labelColor,
    labelPadding: labelPadding,
    labelStyle: labelStyle,
    unselectedLabelColor: unselectedLabelColor,
    unselectedLabelStyle: unselectedLabelStyle,
  ),
  [
    "indicator",
    "indicatorSize",
    "labelColor",
    "labelPadding",
    "labelStyle",
    "unselectedLabelColor",
    "unselectedLabelStyle",
  ],
);

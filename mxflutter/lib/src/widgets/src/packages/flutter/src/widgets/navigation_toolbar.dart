//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/navigation_toolbar.dart';
import 'dart:math' as math;
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerNavigationToolbarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_navigationToolbar.funName] = _navigationToolbar;
  m[_navigationToolbarKMiddleSpacing.funName] = _navigationToolbarKMiddleSpacing;
  return m;
}

var _navigationToolbar = MXFunctionInvoke(
  "NavigationToolbar",
  ({
    Key key,
    Widget leading,
    Widget middle,
    Widget trailing,
    bool centerMiddle = true,
    dynamic middleSpacing = 16.0,
  }) =>
      NavigationToolbar(
    key: key,
    leading: leading,
    middle: middle,
    trailing: trailing,
    centerMiddle: centerMiddle,
    middleSpacing: middleSpacing?.toDouble(),
  ),
  [
    "key",
    "leading",
    "middle",
    "trailing",
    "centerMiddle",
    "middleSpacing",
  ],
);
var _navigationToolbarKMiddleSpacing =
    MXFunctionInvoke("NavigationToolbar.kMiddleSpacing", () => NavigationToolbar.kMiddleSpacing);

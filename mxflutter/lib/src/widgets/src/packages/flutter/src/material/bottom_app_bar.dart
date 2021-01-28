//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/bottom_app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/bottom_app_bar_theme.dart';
import 'package:flutter/src/material/elevation_overlay.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBottomAppBarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_bottomAppBar.funName] = _bottomAppBar;
  return m;
}

var _bottomAppBar = MXFunctionInvoke(
  "BottomAppBar",
  ({
    Key key,
    Color color,
    dynamic elevation,
    NotchedShape shape,
    Clip clipBehavior = Clip.none,
    dynamic notchMargin = 4.0,
    Widget child,
  }) =>
      BottomAppBar(
    key: key,
    color: color,
    elevation: elevation?.toDouble(),
    shape: shape,
    clipBehavior: clipBehavior,
    notchMargin: notchMargin?.toDouble(),
    child: child,
  ),
  [
    "key",
    "color",
    "elevation",
    "shape",
    "clipBehavior",
    "notchMargin",
    "child",
  ],
);

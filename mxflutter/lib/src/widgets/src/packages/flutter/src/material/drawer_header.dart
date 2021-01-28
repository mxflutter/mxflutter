//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/drawer_header.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDrawerHeaderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_drawerHeader.funName] = _drawerHeader;
  return m;
}

var _drawerHeader = MXFunctionInvoke(
  "DrawerHeader",
  ({
    Key key,
    Decoration decoration,
    EdgeInsetsGeometry margin = const EdgeInsets.only(bottom: 8.0),
    EdgeInsetsGeometry padding = const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
    Duration duration = const Duration(milliseconds: 250),
    Curve curve = Curves.fastOutSlowIn,
    Widget child,
  }) =>
      DrawerHeader(
    key: key,
    decoration: decoration,
    margin: margin,
    padding: padding,
    duration: duration,
    curve: curve,
    child: child,
  ),
  [
    "key",
    "decoration",
    "margin",
    "padding",
    "duration",
    "curve",
    "child",
  ],
);

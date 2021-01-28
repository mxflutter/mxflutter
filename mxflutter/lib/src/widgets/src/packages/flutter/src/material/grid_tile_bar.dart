//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/grid_tile_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerGridTileBarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_gridTileBar.funName] = _gridTileBar;
  return m;
}

var _gridTileBar = MXFunctionInvoke(
  "GridTileBar",
  ({
    Key key,
    Color backgroundColor,
    Widget leading,
    Widget title,
    Widget subtitle,
    Widget trailing,
  }) =>
      GridTileBar(
    key: key,
    backgroundColor: backgroundColor,
    leading: leading,
    title: title,
    subtitle: subtitle,
    trailing: trailing,
  ),
  [
    "key",
    "backgroundColor",
    "leading",
    "title",
    "subtitle",
    "trailing",
  ],
);

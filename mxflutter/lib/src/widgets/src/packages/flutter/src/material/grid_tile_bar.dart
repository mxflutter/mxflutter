//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/grid_tile_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerGridTileBarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[gridTileBar.funName] = gridTileBar;
  return m;
}
var gridTileBar = MXFunctionInvoke(
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
);

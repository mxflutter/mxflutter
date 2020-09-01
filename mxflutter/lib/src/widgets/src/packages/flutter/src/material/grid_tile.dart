//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/grid_tile.dart';
import 'package:flutter/widgets.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerGridTileSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_gridTile.funName] = _gridTile;
  return m;
}

var _gridTile = MXFunctionInvoke(
  "GridTile",
  ({
    Key key,
    Widget header,
    Widget footer,
    Widget child,
  }) =>
      GridTile(
    key: key,
    header: header,
    footer: footer,
    child: child,
  ),
  [
    "key",
    "header",
    "footer",
    "child",
  ],
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/grid_paper.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerGridPaperSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_gridPaper.funName] = _gridPaper;
  return m;
}

var _gridPaper = MXFunctionInvoke(
  "GridPaper",
  ({
    Key key,
    Color color = const Color(0x7FC3E8F3),
    dynamic interval = 100.0,
    int divisions = 2,
    int subdivisions = 5,
    Widget child,
  }) =>
      GridPaper(
    key: key,
    color: color,
    interval: interval?.toDouble(),
    divisions: divisions,
    subdivisions: subdivisions,
    child: child,
  ),
  [
    "key",
    "color",
    "interval",
    "divisions",
    "subdivisions",
    "child",
  ],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/grid_paper.dart';


class MXProxyGridPaper {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[gridPaper.funName] = gridPaper;
    return m;
  }
  static var gridPaper = MXFunctionInvoke(
      "GridPaper",
      ({
        Key key,
        Color color,
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
    );
}

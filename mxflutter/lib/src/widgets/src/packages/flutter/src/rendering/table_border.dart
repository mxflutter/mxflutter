//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/table_border.dart';


class MXProxyTableBorder {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[tableBorder.funName] = tableBorder;
    m[tableBorder_all.funName] = tableBorder_all;
    m[tableBorder_symmetric.funName] = tableBorder_symmetric;
    return m;
  }
  static var tableBorder = MXFunctionInvoke(
      "TableBorder",
      ({
        BorderSide top,
        BorderSide right,
        BorderSide bottom,
        BorderSide left,
        BorderSide horizontalInside,
        BorderSide verticalInside,
      }) =>
        TableBorder(
        top: top,
        right: right,
        bottom: bottom,
        left: left,
        horizontalInside: horizontalInside,
        verticalInside: verticalInside,
      ),
    );
  static var tableBorder_all = MXFunctionInvoke(
    "tableBorder.all",
      ({
        Color color,
        dynamic width = 1.0,
        BorderStyle style = BorderStyle.solid,
      }) =>
        TableBorder.all(
        color: color,
        width: width?.toDouble(),
        style: style,
      ),
    );
  static var tableBorder_symmetric = MXFunctionInvoke(
    "tableBorder.symmetric",
      ({
        BorderSide inside,
        BorderSide outside,
      }) =>
        TableBorder.symmetric(
        inside: inside,
        outside: outside,
      ),
    );
}

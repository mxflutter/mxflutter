//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/table_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTableBorderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tableBorder.funName] = _tableBorder;
  m[_tableBorder_all.funName] = _tableBorder_all;
  m[_tableBorder_symmetric.funName] = _tableBorder_symmetric;
  return m;
}
var _tableBorder = MXFunctionInvoke(
    "TableBorder",
    (
      {
      BorderSide top = BorderSide.none,
      BorderSide right = BorderSide.none,
      BorderSide bottom = BorderSide.none,
      BorderSide left = BorderSide.none,
      BorderSide horizontalInside = BorderSide.none,
      BorderSide verticalInside = BorderSide.none,
      }
    ) =>
      TableBorder(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
      horizontalInside: horizontalInside,
      verticalInside: verticalInside,
    ),
);
var _tableBorder_all = MXFunctionInvoke(
  "TableBorder.all",
    (
      {
      Color color = const Color(0xFF000000),
      dynamic width = 1.0,
      BorderStyle style = BorderStyle.solid,
      }
    ) =>
      TableBorder.all(
      color: color,
      width: width?.toDouble(),
      style: style,
    ),
);
var _tableBorder_symmetric = MXFunctionInvoke(
  "TableBorder.symmetric",
    (
      {
      BorderSide inside = BorderSide.none,
      BorderSide outside = BorderSide.none,
      }
    ) =>
      TableBorder.symmetric(
      inside: inside,
      outside: outside,
    ),
);

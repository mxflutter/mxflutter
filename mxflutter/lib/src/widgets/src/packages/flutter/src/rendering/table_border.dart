//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/table_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTableBorderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tableBorder.funName] = _tableBorder;
  m[_tableBorderAll.funName] = _tableBorderAll;
  m[_tableBorderSymmetric.funName] = _tableBorderSymmetric;
  return m;
}

var _tableBorder = MXFunctionInvoke(
  "TableBorder",
  ({
    BorderSide top = BorderSide.none,
    BorderSide right = BorderSide.none,
    BorderSide bottom = BorderSide.none,
    BorderSide left = BorderSide.none,
    BorderSide horizontalInside = BorderSide.none,
    BorderSide verticalInside = BorderSide.none,
  }) =>
      TableBorder(
    top: top,
    right: right,
    bottom: bottom,
    left: left,
    horizontalInside: horizontalInside,
    verticalInside: verticalInside,
  ),
  [
    "top",
    "right",
    "bottom",
    "left",
    "horizontalInside",
    "verticalInside",
  ],
);
var _tableBorderAll = MXFunctionInvoke(
  "TableBorder.all",
  ({
    Color color = const Color(0xFF000000),
    dynamic width = 1.0,
    BorderStyle style = BorderStyle.solid,
  }) =>
      TableBorder.all(
    color: color,
    width: width?.toDouble(),
    style: style,
  ),
  [
    "color",
    "width",
    "style",
  ],
);
var _tableBorderSymmetric = MXFunctionInvoke(
  "TableBorder.symmetric",
  ({
    BorderSide inside = BorderSide.none,
    BorderSide outside = BorderSide.none,
  }) =>
      TableBorder.symmetric(
    inside: inside,
    outside: outside,
  ),
  [
    "inside",
    "outside",
  ],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/input_border.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/widgets.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInputBorderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[underlineInputBorder.funName] = underlineInputBorder;
  m[outlineInputBorder.funName] = outlineInputBorder;
  return m;
}
var underlineInputBorder = MXFunctionInvoke(
    "UnderlineInputBorder",
    ({
      BorderSide borderSide,
      BorderRadius borderRadius,
    }) =>
      UnderlineInputBorder(
      borderSide: borderSide,
      borderRadius: borderRadius,
    ),
);
var outlineInputBorder = MXFunctionInvoke(
    "OutlineInputBorder",
    ({
      BorderSide borderSide,
      BorderRadius borderRadius,
      dynamic gapPadding = 4.0,
    }) =>
      OutlineInputBorder(
      borderSide: borderSide,
      borderRadius: borderRadius,
      gapPadding: gapPadding,
    ),
);

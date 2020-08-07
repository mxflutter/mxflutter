//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/input_border.dart';
import 'dart:math' as math;
import 'dart:ui' ;
import 'package:flutter/widgets.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInputBorderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_inputBorder.funName] = _inputBorder;
  m[_underlineInputBorder.funName] = _underlineInputBorder;
  m[_outlineInputBorder.funName] = _outlineInputBorder;
  return m;
}
var _inputBorder = MXFunctionInvoke(
    "InputBorder",
    (
      {
      BorderSide borderSide,
      }
    ) =>
      InputBorder(
      borderSide: borderSide,
    ),
);
var _underlineInputBorder = MXFunctionInvoke(
    "UnderlineInputBorder",
    (
      {
      BorderSide borderSide,
      BorderRadius borderRadius,
      }
    ) =>
      UnderlineInputBorder(
      borderSide: borderSide,
      borderRadius: borderRadius,
    ),
);
var _outlineInputBorder = MXFunctionInvoke(
    "OutlineInputBorder",
    (
      {
      BorderSide borderSide,
      BorderRadius borderRadius,
      dynamic gapPadding = 4.0,
      }
    ) =>
      OutlineInputBorder(
      borderSide: borderSide,
      borderRadius: borderRadius,
      gapPadding: gapPadding?.toDouble(),
    ),
);

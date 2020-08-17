//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/notched_shapes.dart';
import 'dart:math' as math;
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/borders.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerNotchedShapesSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_circularNotchedRectangle.funName] = _circularNotchedRectangle;
  m[_automaticNotchedShape.funName] = _automaticNotchedShape;
  return m;
}

var _circularNotchedRectangle = MXFunctionInvoke(
  "CircularNotchedRectangle",
  () => CircularNotchedRectangle(),
  [],
);
var _automaticNotchedShape = MXFunctionInvoke(
  "AutomaticNotchedShape",
  ({
    ShapeBorder host,
    ShapeBorder guest,
  }) =>
      AutomaticNotchedShape(
    host,
    guest,
  ),
  [
    "host",
    "guest",
  ],
);

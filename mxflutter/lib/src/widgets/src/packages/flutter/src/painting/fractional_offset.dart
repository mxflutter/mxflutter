//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/fractional_offset.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/painting/basic_types.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFractionalOffsetSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_fractionalOffset.funName] = _fractionalOffset;
  m[_fractionalOffset_fromOffsetAndSize.funName] = _fractionalOffset_fromOffsetAndSize;
  m[_fractionalOffset_fromOffsetAndRect.funName] = _fractionalOffset_fromOffsetAndRect;
  return m;
}
var _fractionalOffset = MXFunctionInvoke(
    "FractionalOffset",
    (
      {
      double dx,
      double dy,
      }
    ) =>
      FractionalOffset(
      dx,
      dy,
    ),
);
var _fractionalOffset_fromOffsetAndSize = MXFunctionInvoke(
  "fractionalOffset.fromOffsetAndSize",
    (
      {
      Offset offset,
      Size size,
      }
    ) =>
      FractionalOffset.fromOffsetAndSize(
      offset,
      size,
    ),
);
var _fractionalOffset_fromOffsetAndRect = MXFunctionInvoke(
  "fractionalOffset.fromOffsetAndRect",
    (
      {
      Offset offset,
      Rect rect,
      }
    ) =>
      FractionalOffset.fromOffsetAndRect(
      offset,
      rect,
    ),
);

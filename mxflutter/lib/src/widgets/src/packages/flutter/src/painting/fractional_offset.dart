//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/fractional_offset.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/painting/basic_types.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFractionalOffsetSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_fractionalOffset.funName] = _fractionalOffset;
  m[_fractionalOffset_topLeft.funName] = _fractionalOffset_topLeft;
  m[_fractionalOffset_topCenter.funName] = _fractionalOffset_topCenter;
  m[_fractionalOffset_topRight.funName] = _fractionalOffset_topRight;
  m[_fractionalOffset_centerLeft.funName] = _fractionalOffset_centerLeft;
  m[_fractionalOffset_center.funName] = _fractionalOffset_center;
  m[_fractionalOffset_centerRight.funName] = _fractionalOffset_centerRight;
  m[_fractionalOffset_bottomLeft.funName] = _fractionalOffset_bottomLeft;
  m[_fractionalOffset_bottomCenter.funName] = _fractionalOffset_bottomCenter;
  m[_fractionalOffset_bottomRight.funName] = _fractionalOffset_bottomRight;
  m[_fractionalOffset_fromOffsetAndSize.funName] = _fractionalOffset_fromOffsetAndSize;
  m[_fractionalOffset_fromOffsetAndRect.funName] = _fractionalOffset_fromOffsetAndRect;
  return m;
}
var _fractionalOffset = MXFunctionInvoke(
    "FractionalOffset",
    (
      {
      dynamic dx,
      dynamic dy,
      }
    ) =>
      FractionalOffset(
      dx?.toDouble(),
      dy?.toDouble(),
    ),
);
var _fractionalOffset_topLeft = MXFunctionInvoke(
  "FractionalOffset.topLeft",
    (
    ) =>
      FractionalOffset.topLeft
);
var _fractionalOffset_topCenter = MXFunctionInvoke(
  "FractionalOffset.topCenter",
    (
    ) =>
      FractionalOffset.topCenter
);
var _fractionalOffset_topRight = MXFunctionInvoke(
  "FractionalOffset.topRight",
    (
    ) =>
      FractionalOffset.topRight
);
var _fractionalOffset_centerLeft = MXFunctionInvoke(
  "FractionalOffset.centerLeft",
    (
    ) =>
      FractionalOffset.centerLeft
);
var _fractionalOffset_center = MXFunctionInvoke(
  "FractionalOffset.center",
    (
    ) =>
      FractionalOffset.center
);
var _fractionalOffset_centerRight = MXFunctionInvoke(
  "FractionalOffset.centerRight",
    (
    ) =>
      FractionalOffset.centerRight
);
var _fractionalOffset_bottomLeft = MXFunctionInvoke(
  "FractionalOffset.bottomLeft",
    (
    ) =>
      FractionalOffset.bottomLeft
);
var _fractionalOffset_bottomCenter = MXFunctionInvoke(
  "FractionalOffset.bottomCenter",
    (
    ) =>
      FractionalOffset.bottomCenter
);
var _fractionalOffset_bottomRight = MXFunctionInvoke(
  "FractionalOffset.bottomRight",
    (
    ) =>
      FractionalOffset.bottomRight
);
var _fractionalOffset_fromOffsetAndSize = MXFunctionInvoke(
  "FractionalOffset.fromOffsetAndSize",
    (
      {
      ui.Offset offset,
      ui.Size size,
      }
    ) =>
      FractionalOffset.fromOffsetAndSize(
      offset,
      size,
    ),
);
var _fractionalOffset_fromOffsetAndRect = MXFunctionInvoke(
  "FractionalOffset.fromOffsetAndRect",
    (
      {
      ui.Offset offset,
      ui.Rect rect,
      }
    ) =>
      FractionalOffset.fromOffsetAndRect(
      offset,
      rect,
    ),
);

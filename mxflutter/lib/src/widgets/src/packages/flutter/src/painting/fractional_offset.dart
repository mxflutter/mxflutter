//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_fractionalOffsetTopLeft.funName] = _fractionalOffsetTopLeft;
  m[_fractionalOffsetTopCenter.funName] = _fractionalOffsetTopCenter;
  m[_fractionalOffsetTopRight.funName] = _fractionalOffsetTopRight;
  m[_fractionalOffsetCenterLeft.funName] = _fractionalOffsetCenterLeft;
  m[_fractionalOffsetCenter.funName] = _fractionalOffsetCenter;
  m[_fractionalOffsetCenterRight.funName] = _fractionalOffsetCenterRight;
  m[_fractionalOffsetBottomLeft.funName] = _fractionalOffsetBottomLeft;
  m[_fractionalOffsetBottomCenter.funName] = _fractionalOffsetBottomCenter;
  m[_fractionalOffsetBottomRight.funName] = _fractionalOffsetBottomRight;
  m[_fractionalOffsetFromOffsetAndSize.funName] = _fractionalOffsetFromOffsetAndSize;
  m[_fractionalOffsetFromOffsetAndRect.funName] = _fractionalOffsetFromOffsetAndRect;
  return m;
}

var _fractionalOffset = MXFunctionInvoke(
  "FractionalOffset",
  ({
    dynamic dx,
    dynamic dy,
  }) =>
      FractionalOffset(
    dx?.toDouble(),
    dy?.toDouble(),
  ),
  [
    "dx",
    "dy",
  ],
);
var _fractionalOffsetTopLeft = MXFunctionInvoke("FractionalOffset.topLeft", () => FractionalOffset.topLeft);
var _fractionalOffsetTopCenter = MXFunctionInvoke("FractionalOffset.topCenter", () => FractionalOffset.topCenter);
var _fractionalOffsetTopRight = MXFunctionInvoke("FractionalOffset.topRight", () => FractionalOffset.topRight);
var _fractionalOffsetCenterLeft = MXFunctionInvoke("FractionalOffset.centerLeft", () => FractionalOffset.centerLeft);
var _fractionalOffsetCenter = MXFunctionInvoke("FractionalOffset.center", () => FractionalOffset.center);
var _fractionalOffsetCenterRight = MXFunctionInvoke("FractionalOffset.centerRight", () => FractionalOffset.centerRight);
var _fractionalOffsetBottomLeft = MXFunctionInvoke("FractionalOffset.bottomLeft", () => FractionalOffset.bottomLeft);
var _fractionalOffsetBottomCenter =
    MXFunctionInvoke("FractionalOffset.bottomCenter", () => FractionalOffset.bottomCenter);
var _fractionalOffsetBottomRight = MXFunctionInvoke("FractionalOffset.bottomRight", () => FractionalOffset.bottomRight);
var _fractionalOffsetFromOffsetAndSize = MXFunctionInvoke(
  "FractionalOffset.fromOffsetAndSize",
  ({
    ui.Offset offset,
    ui.Size size,
  }) =>
      FractionalOffset.fromOffsetAndSize(
    offset,
    size,
  ),
  [
    "offset",
    "size",
  ],
);
var _fractionalOffsetFromOffsetAndRect = MXFunctionInvoke(
  "FractionalOffset.fromOffsetAndRect",
  ({
    ui.Offset offset,
    ui.Rect rect,
  }) =>
      FractionalOffset.fromOffsetAndRect(
    offset,
    rect,
  ),
  [
    "offset",
    "rect",
  ],
);

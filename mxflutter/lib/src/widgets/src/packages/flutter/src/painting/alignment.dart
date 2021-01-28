//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAlignmentSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_alignment.funName] = _alignment;
  m[_alignmentTopLeft.funName] = _alignmentTopLeft;
  m[_alignmentTopCenter.funName] = _alignmentTopCenter;
  m[_alignmentTopRight.funName] = _alignmentTopRight;
  m[_alignmentCenterLeft.funName] = _alignmentCenterLeft;
  m[_alignmentCenter.funName] = _alignmentCenter;
  m[_alignmentCenterRight.funName] = _alignmentCenterRight;
  m[_alignmentBottomLeft.funName] = _alignmentBottomLeft;
  m[_alignmentBottomCenter.funName] = _alignmentBottomCenter;
  m[_alignmentBottomRight.funName] = _alignmentBottomRight;
  m[_alignmentDirectional.funName] = _alignmentDirectional;
  m[_alignmentDirectionalTopStart.funName] = _alignmentDirectionalTopStart;
  m[_alignmentDirectionalTopCenter.funName] = _alignmentDirectionalTopCenter;
  m[_alignmentDirectionalTopEnd.funName] = _alignmentDirectionalTopEnd;
  m[_alignmentDirectionalCenterStart.funName] = _alignmentDirectionalCenterStart;
  m[_alignmentDirectionalCenter.funName] = _alignmentDirectionalCenter;
  m[_alignmentDirectionalCenterEnd.funName] = _alignmentDirectionalCenterEnd;
  m[_alignmentDirectionalBottomStart.funName] = _alignmentDirectionalBottomStart;
  m[_alignmentDirectionalBottomCenter.funName] = _alignmentDirectionalBottomCenter;
  m[_alignmentDirectionalBottomEnd.funName] = _alignmentDirectionalBottomEnd;
  m[_textAlignVertical.funName] = _textAlignVertical;
  m[_textAlignVerticalTop.funName] = _textAlignVerticalTop;
  m[_textAlignVerticalCenter.funName] = _textAlignVerticalCenter;
  m[_textAlignVerticalBottom.funName] = _textAlignVerticalBottom;
  return m;
}

var _alignment = MXFunctionInvoke(
  "Alignment",
  ({
    dynamic x,
    dynamic y,
  }) =>
      Alignment(
    x?.toDouble(),
    y?.toDouble(),
  ),
  [
    "x",
    "y",
  ],
);
var _alignmentTopLeft = MXFunctionInvoke("Alignment.topLeft", () => Alignment.topLeft);
var _alignmentTopCenter = MXFunctionInvoke("Alignment.topCenter", () => Alignment.topCenter);
var _alignmentTopRight = MXFunctionInvoke("Alignment.topRight", () => Alignment.topRight);
var _alignmentCenterLeft = MXFunctionInvoke("Alignment.centerLeft", () => Alignment.centerLeft);
var _alignmentCenter = MXFunctionInvoke("Alignment.center", () => Alignment.center);
var _alignmentCenterRight = MXFunctionInvoke("Alignment.centerRight", () => Alignment.centerRight);
var _alignmentBottomLeft = MXFunctionInvoke("Alignment.bottomLeft", () => Alignment.bottomLeft);
var _alignmentBottomCenter = MXFunctionInvoke("Alignment.bottomCenter", () => Alignment.bottomCenter);
var _alignmentBottomRight = MXFunctionInvoke("Alignment.bottomRight", () => Alignment.bottomRight);
var _alignmentDirectional = MXFunctionInvoke(
  "AlignmentDirectional",
  ({
    dynamic start,
    dynamic y,
  }) =>
      AlignmentDirectional(
    start?.toDouble(),
    y?.toDouble(),
  ),
  [
    "start",
    "y",
  ],
);
var _alignmentDirectionalTopStart =
    MXFunctionInvoke("AlignmentDirectional.topStart", () => AlignmentDirectional.topStart);
var _alignmentDirectionalTopCenter =
    MXFunctionInvoke("AlignmentDirectional.topCenter", () => AlignmentDirectional.topCenter);
var _alignmentDirectionalTopEnd = MXFunctionInvoke("AlignmentDirectional.topEnd", () => AlignmentDirectional.topEnd);
var _alignmentDirectionalCenterStart =
    MXFunctionInvoke("AlignmentDirectional.centerStart", () => AlignmentDirectional.centerStart);
var _alignmentDirectionalCenter = MXFunctionInvoke("AlignmentDirectional.center", () => AlignmentDirectional.center);
var _alignmentDirectionalCenterEnd =
    MXFunctionInvoke("AlignmentDirectional.centerEnd", () => AlignmentDirectional.centerEnd);
var _alignmentDirectionalBottomStart =
    MXFunctionInvoke("AlignmentDirectional.bottomStart", () => AlignmentDirectional.bottomStart);
var _alignmentDirectionalBottomCenter =
    MXFunctionInvoke("AlignmentDirectional.bottomCenter", () => AlignmentDirectional.bottomCenter);
var _alignmentDirectionalBottomEnd =
    MXFunctionInvoke("AlignmentDirectional.bottomEnd", () => AlignmentDirectional.bottomEnd);
var _textAlignVertical = MXFunctionInvoke(
  "TextAlignVertical",
  ({
    dynamic y,
  }) =>
      TextAlignVertical(
    y: y?.toDouble(),
  ),
  [
    "y",
  ],
);
var _textAlignVerticalTop = MXFunctionInvoke("TextAlignVertical.top", () => TextAlignVertical.top);
var _textAlignVerticalCenter = MXFunctionInvoke("TextAlignVertical.center", () => TextAlignVertical.center);
var _textAlignVerticalBottom = MXFunctionInvoke("TextAlignVertical.bottom", () => TextAlignVertical.bottom);

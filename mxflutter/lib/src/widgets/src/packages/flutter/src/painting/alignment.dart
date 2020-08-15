//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_alignment_topLeft.funName] = _alignment_topLeft;
  m[_alignment_topCenter.funName] = _alignment_topCenter;
  m[_alignment_topRight.funName] = _alignment_topRight;
  m[_alignment_centerLeft.funName] = _alignment_centerLeft;
  m[_alignment_center.funName] = _alignment_center;
  m[_alignment_centerRight.funName] = _alignment_centerRight;
  m[_alignment_bottomLeft.funName] = _alignment_bottomLeft;
  m[_alignment_bottomCenter.funName] = _alignment_bottomCenter;
  m[_alignment_bottomRight.funName] = _alignment_bottomRight;
  m[_alignmentDirectional.funName] = _alignmentDirectional;
  m[_alignmentDirectional_topStart.funName] = _alignmentDirectional_topStart;
  m[_alignmentDirectional_topCenter.funName] = _alignmentDirectional_topCenter;
  m[_alignmentDirectional_topEnd.funName] = _alignmentDirectional_topEnd;
  m[_alignmentDirectional_centerStart.funName] =
      _alignmentDirectional_centerStart;
  m[_alignmentDirectional_center.funName] = _alignmentDirectional_center;
  m[_alignmentDirectional_centerEnd.funName] = _alignmentDirectional_centerEnd;
  m[_alignmentDirectional_bottomStart.funName] =
      _alignmentDirectional_bottomStart;
  m[_alignmentDirectional_bottomCenter.funName] =
      _alignmentDirectional_bottomCenter;
  m[_alignmentDirectional_bottomEnd.funName] = _alignmentDirectional_bottomEnd;
  m[_textAlignVertical.funName] = _textAlignVertical;
  m[_textAlignVertical_top.funName] = _textAlignVertical_top;
  m[_textAlignVertical_center.funName] = _textAlignVertical_center;
  m[_textAlignVertical_bottom.funName] = _textAlignVertical_bottom;
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
var _alignment_topLeft =
    MXFunctionInvoke("Alignment.topLeft", () => Alignment.topLeft);
var _alignment_topCenter =
    MXFunctionInvoke("Alignment.topCenter", () => Alignment.topCenter);
var _alignment_topRight =
    MXFunctionInvoke("Alignment.topRight", () => Alignment.topRight);
var _alignment_centerLeft =
    MXFunctionInvoke("Alignment.centerLeft", () => Alignment.centerLeft);
var _alignment_center =
    MXFunctionInvoke("Alignment.center", () => Alignment.center);
var _alignment_centerRight =
    MXFunctionInvoke("Alignment.centerRight", () => Alignment.centerRight);
var _alignment_bottomLeft =
    MXFunctionInvoke("Alignment.bottomLeft", () => Alignment.bottomLeft);
var _alignment_bottomCenter =
    MXFunctionInvoke("Alignment.bottomCenter", () => Alignment.bottomCenter);
var _alignment_bottomRight =
    MXFunctionInvoke("Alignment.bottomRight", () => Alignment.bottomRight);
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
var _alignmentDirectional_topStart = MXFunctionInvoke(
    "AlignmentDirectional.topStart", () => AlignmentDirectional.topStart);
var _alignmentDirectional_topCenter = MXFunctionInvoke(
    "AlignmentDirectional.topCenter", () => AlignmentDirectional.topCenter);
var _alignmentDirectional_topEnd = MXFunctionInvoke(
    "AlignmentDirectional.topEnd", () => AlignmentDirectional.topEnd);
var _alignmentDirectional_centerStart = MXFunctionInvoke(
    "AlignmentDirectional.centerStart", () => AlignmentDirectional.centerStart);
var _alignmentDirectional_center = MXFunctionInvoke(
    "AlignmentDirectional.center", () => AlignmentDirectional.center);
var _alignmentDirectional_centerEnd = MXFunctionInvoke(
    "AlignmentDirectional.centerEnd", () => AlignmentDirectional.centerEnd);
var _alignmentDirectional_bottomStart = MXFunctionInvoke(
    "AlignmentDirectional.bottomStart", () => AlignmentDirectional.bottomStart);
var _alignmentDirectional_bottomCenter = MXFunctionInvoke(
    "AlignmentDirectional.bottomCenter",
    () => AlignmentDirectional.bottomCenter);
var _alignmentDirectional_bottomEnd = MXFunctionInvoke(
    "AlignmentDirectional.bottomEnd", () => AlignmentDirectional.bottomEnd);
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
var _textAlignVertical_top =
    MXFunctionInvoke("TextAlignVertical.top", () => TextAlignVertical.top);
var _textAlignVertical_center = MXFunctionInvoke(
    "TextAlignVertical.center", () => TextAlignVertical.center);
var _textAlignVertical_bottom = MXFunctionInvoke(
    "TextAlignVertical.bottom", () => TextAlignVertical.bottom);

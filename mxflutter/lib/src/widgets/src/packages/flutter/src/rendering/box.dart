//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/box.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBoxSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_boxConstraints.funName] = _boxConstraints;
  m[_boxConstraintsTight.funName] = _boxConstraintsTight;
  m[_boxConstraintsTightFor.funName] = _boxConstraintsTightFor;
  m[_boxConstraintsTightForFinite.funName] = _boxConstraintsTightForFinite;
  m[_boxConstraintsLoose.funName] = _boxConstraintsLoose;
  m[_boxConstraintsExpand.funName] = _boxConstraintsExpand;
  m[_boxHitTestResult.funName] = _boxHitTestResult;
  m[_boxHitTestResultWrap.funName] = _boxHitTestResultWrap;
  m[_boxHitTestEntry.funName] = _boxHitTestEntry;
  m[_boxParentData.funName] = _boxParentData;
  return m;
}

var _boxConstraints = MXFunctionInvoke(
  "BoxConstraints",
  ({
    dynamic minWidth = 0.0,
    dynamic maxWidth = double.infinity,
    dynamic minHeight = 0.0,
    dynamic maxHeight = double.infinity,
  }) =>
      BoxConstraints(
    minWidth: minWidth?.toDouble(),
    maxWidth: maxWidth?.toDouble(),
    minHeight: minHeight?.toDouble(),
    maxHeight: maxHeight?.toDouble(),
  ),
  [
    "minWidth",
    "maxWidth",
    "minHeight",
    "maxHeight",
  ],
);
var _boxConstraintsTight = MXFunctionInvoke(
  "BoxConstraints.tight",
  ({
    ui.Size size,
  }) =>
      BoxConstraints.tight(
    size,
  ),
  [
    "size",
  ],
);
var _boxConstraintsTightFor = MXFunctionInvoke(
  "BoxConstraints.tightFor",
  ({
    dynamic width,
    dynamic height,
  }) =>
      BoxConstraints.tightFor(
    width: width?.toDouble(),
    height: height?.toDouble(),
  ),
  [
    "width",
    "height",
  ],
);
var _boxConstraintsTightForFinite = MXFunctionInvoke(
  "BoxConstraints.tightForFinite",
  ({
    dynamic width = double.infinity,
    dynamic height = double.infinity,
  }) =>
      BoxConstraints.tightForFinite(
    width: width?.toDouble(),
    height: height?.toDouble(),
  ),
  [
    "width",
    "height",
  ],
);
var _boxConstraintsLoose = MXFunctionInvoke(
  "BoxConstraints.loose",
  ({
    ui.Size size,
  }) =>
      BoxConstraints.loose(
    size,
  ),
  [
    "size",
  ],
);
var _boxConstraintsExpand = MXFunctionInvoke(
  "BoxConstraints.expand",
  ({
    dynamic width,
    dynamic height,
  }) =>
      BoxConstraints.expand(
    width: width?.toDouble(),
    height: height?.toDouble(),
  ),
  [
    "width",
    "height",
  ],
);
var _boxHitTestResult = MXFunctionInvoke(
  "BoxHitTestResult",
  () => BoxHitTestResult(),
  [],
);
var _boxHitTestResultWrap = MXFunctionInvoke(
  "BoxHitTestResult.wrap",
  ({
    HitTestResult result,
  }) =>
      BoxHitTestResult.wrap(
    result,
  ),
  [
    "result",
  ],
);
var _boxHitTestEntry = MXFunctionInvoke(
  "BoxHitTestEntry",
  ({
    RenderBox target,
    ui.Offset localPosition,
  }) =>
      BoxHitTestEntry(
    target,
    localPosition,
  ),
  [
    "__mx_target",
    "localPosition",
  ],
);
var _boxParentData = MXFunctionInvoke(
  "BoxParentData",
  () => BoxParentData(),
  [],
);

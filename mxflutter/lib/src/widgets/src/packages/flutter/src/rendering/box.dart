//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_boxConstraints_tight.funName] = _boxConstraints_tight;
  m[_boxConstraints_tightFor.funName] = _boxConstraints_tightFor;
  m[_boxConstraints_tightForFinite.funName] = _boxConstraints_tightForFinite;
  m[_boxConstraints_loose.funName] = _boxConstraints_loose;
  m[_boxConstraints_expand.funName] = _boxConstraints_expand;
  m[_boxHitTestResult.funName] = _boxHitTestResult;
  m[_boxHitTestResult_wrap.funName] = _boxHitTestResult_wrap;
  m[_boxHitTestEntry.funName] = _boxHitTestEntry;
  m[_boxParentData.funName] = _boxParentData;
  return m;
}
var _boxConstraints = MXFunctionInvoke(
    "BoxConstraints",
    (
      {
      dynamic minWidth = 0.0,
      dynamic maxWidth = double.infinity,
      dynamic minHeight = 0.0,
      dynamic maxHeight = double.infinity,
      }
    ) =>
      BoxConstraints(
      minWidth: minWidth?.toDouble(),
      maxWidth: maxWidth?.toDouble(),
      minHeight: minHeight?.toDouble(),
      maxHeight: maxHeight?.toDouble(),
    ),
);
var _boxConstraints_tight = MXFunctionInvoke(
  "BoxConstraints.tight",
    (
      {
      ui.Size size,
      }
    ) =>
      BoxConstraints.tight(
      size,
    ),
);
var _boxConstraints_tightFor = MXFunctionInvoke(
  "BoxConstraints.tightFor",
    (
      {
      dynamic width,
      dynamic height,
      }
    ) =>
      BoxConstraints.tightFor(
      width: width?.toDouble(),
      height: height?.toDouble(),
    ),
);
var _boxConstraints_tightForFinite = MXFunctionInvoke(
  "BoxConstraints.tightForFinite",
    (
      {
      dynamic width = double.infinity,
      dynamic height = double.infinity,
      }
    ) =>
      BoxConstraints.tightForFinite(
      width: width?.toDouble(),
      height: height?.toDouble(),
    ),
);
var _boxConstraints_loose = MXFunctionInvoke(
  "BoxConstraints.loose",
    (
      {
      ui.Size size,
      }
    ) =>
      BoxConstraints.loose(
      size,
    ),
);
var _boxConstraints_expand = MXFunctionInvoke(
  "BoxConstraints.expand",
    (
      {
      dynamic width,
      dynamic height,
      }
    ) =>
      BoxConstraints.expand(
      width: width?.toDouble(),
      height: height?.toDouble(),
    ),
);
var _boxHitTestResult = MXFunctionInvoke(
    "BoxHitTestResult",
    (
    ) =>
      BoxHitTestResult(
    ),
);
var _boxHitTestResult_wrap = MXFunctionInvoke(
  "BoxHitTestResult.wrap",
    (
      {
      HitTestResult result,
      }
    ) =>
      BoxHitTestResult.wrap(
      result,
    ),
);
var _boxHitTestEntry = MXFunctionInvoke(
    "BoxHitTestEntry",
    (
      {
      RenderBox target,
      ui.Offset localPosition,
      }
    ) =>
      BoxHitTestEntry(
      target,
      localPosition,
    ),
);
var _boxParentData = MXFunctionInvoke(
    "BoxParentData",
    (
    ) =>
      BoxParentData(
    ),
);

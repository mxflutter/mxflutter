//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/gradient.dart';
import 'dart:collection';
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/painting/basic_types.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerGradientSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_gradientRotation.funName] = _gradientRotation;
  m[_linearGradient.funName] = _linearGradient;
  m[_radialGradient.funName] = _radialGradient;
  m[_sweepGradient.funName] = _sweepGradient;
  return m;
}

var _gradientRotation = MXFunctionInvoke(
  "GradientRotation",
  ({
    dynamic radians,
  }) =>
      GradientRotation(
    radians?.toDouble(),
  ),
  [
    "radians",
  ],
);
var _linearGradient = MXFunctionInvoke(
  "LinearGradient",
  ({
    AlignmentGeometry begin = Alignment.centerLeft,
    AlignmentGeometry end = Alignment.centerRight,
    dynamic colors,
    dynamic stops,
    ui.TileMode tileMode = TileMode.clamp,
    GradientTransform transform,
  }) =>
      LinearGradient(
    begin: begin,
    end: end,
    colors: toListT<ui.Color>(colors),
    stops: toListT<double>(stops),
    tileMode: tileMode,
    transform: transform,
  ),
  [
    "begin",
    "end",
    "colors",
    "stops",
    "tileMode",
    "transform",
  ],
);
var _radialGradient = MXFunctionInvoke(
  "RadialGradient",
  ({
    AlignmentGeometry center = Alignment.center,
    dynamic radius = 0.5,
    dynamic colors,
    dynamic stops,
    ui.TileMode tileMode = TileMode.clamp,
    AlignmentGeometry focal,
    dynamic focalRadius = 0.0,
    GradientTransform transform,
  }) =>
      RadialGradient(
    center: center,
    radius: radius?.toDouble(),
    colors: toListT<ui.Color>(colors),
    stops: toListT<double>(stops),
    tileMode: tileMode,
    focal: focal,
    focalRadius: focalRadius?.toDouble(),
    transform: transform,
  ),
  [
    "center",
    "radius",
    "colors",
    "stops",
    "tileMode",
    "focal",
    "focalRadius",
    "transform",
  ],
);
var _sweepGradient = MXFunctionInvoke(
  "SweepGradient",
  ({
    AlignmentGeometry center = Alignment.center,
    dynamic startAngle = 0.0,
    dynamic endAngle = 6.283185307179586,
    dynamic colors,
    dynamic stops,
    ui.TileMode tileMode = TileMode.clamp,
    GradientTransform transform,
  }) =>
      SweepGradient(
    center: center,
    startAngle: startAngle?.toDouble(),
    endAngle: endAngle?.toDouble(),
    colors: toListT<ui.Color>(colors),
    stops: toListT<double>(stops),
    tileMode: tileMode,
    transform: transform,
  ),
  [
    "center",
    "startAngle",
    "endAngle",
    "colors",
    "stops",
    "tileMode",
    "transform",
  ],
);

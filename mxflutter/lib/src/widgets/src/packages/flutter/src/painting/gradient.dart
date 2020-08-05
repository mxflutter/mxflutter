//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/gradient.dart';
import 'dart:collection';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
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
    (
      {
      double radians,
      }
    ) =>
      GradientRotation(
      radians,
    ),
);
var _linearGradient = MXFunctionInvoke(
    "LinearGradient",
    (
      {
      AlignmentGeometry begin,
      AlignmentGeometry end,
      List<Color> colors,
      List<double> stops,
      TileMode tileMode = TileMode.clamp,
      GradientTransform transform,
      }
    ) =>
      LinearGradient(
      begin: begin,
      end: end,
      colors: colors,
      stops: stops,
      tileMode: tileMode,
      transform: transform,
    ),
);
var _radialGradient = MXFunctionInvoke(
    "RadialGradient",
    (
      {
      AlignmentGeometry center,
      double radius = 0.5,
      List<Color> colors,
      List<double> stops,
      TileMode tileMode = TileMode.clamp,
      AlignmentGeometry focal,
      double focalRadius = 0.0,
      GradientTransform transform,
      }
    ) =>
      RadialGradient(
      center: center,
      radius: radius?.toDouble(),
      colors: colors,
      stops: stops,
      tileMode: tileMode,
      focal: focal,
      focalRadius: focalRadius?.toDouble(),
      transform: transform,
    ),
);
var _sweepGradient = MXFunctionInvoke(
    "SweepGradient",
    (
      {
      AlignmentGeometry center,
      double startAngle = 0.0,
      double endAngle = 6.283185307179586,
      List<Color> colors,
      List<double> stops,
      TileMode tileMode = TileMode.clamp,
      GradientTransform transform,
      }
    ) =>
      SweepGradient(
      center: center,
      startAngle: startAngle?.toDouble(),
      endAngle: endAngle?.toDouble(),
      colors: colors,
      stops: stops,
      tileMode: tileMode,
      transform: transform,
    ),
);

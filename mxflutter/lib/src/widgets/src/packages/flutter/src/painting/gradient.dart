//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/gradient.dart';


class MXProxyGradient {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[gradientRotation.funName] = gradientRotation;
    m[linearGradient.funName] = linearGradient;
    m[radialGradient.funName] = radialGradient;
    m[sweepGradient.funName] = sweepGradient;
    return m;
  }
  static var gradientRotation = MXFunctionInvoke(
      "GradientRotation",
      ({
        double radians,
      }) =>
        GradientRotation(
        radians,
      ),
    );
  static var linearGradient = MXFunctionInvoke(
      "LinearGradient",
      ({
        AlignmentGeometry begin,
        AlignmentGeometry end,
        List<Color> colors,
        List<double> stops,
        TileMode tileMode = TileMode.clamp,
        GradientTransform transform,
      }) =>
        LinearGradient(
        begin: begin,
        end: end,
        colors: colors,
        stops: stops,
        tileMode: tileMode,
        transform: transform,
      ),
    );
  static var radialGradient = MXFunctionInvoke(
      "RadialGradient",
      ({
        AlignmentGeometry center,
        dynamic radius = 0.5,
        List<Color> colors,
        List<double> stops,
        TileMode tileMode = TileMode.clamp,
        AlignmentGeometry focal,
        dynamic focalRadius = 0.0,
        GradientTransform transform,
      }) =>
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
  static var sweepGradient = MXFunctionInvoke(
      "SweepGradient",
      ({
        AlignmentGeometry center,
        dynamic startAngle = 0.0,
        dynamic endAngle = 6.283185307179586,
        List<Color> colors,
        List<double> stops,
        TileMode tileMode = TileMode.clamp,
        GradientTransform transform,
      }) =>
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
}

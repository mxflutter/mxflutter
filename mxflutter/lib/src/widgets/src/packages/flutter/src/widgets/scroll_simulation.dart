//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_simulation.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/physics.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollSimulationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_bouncingScrollSimulation.funName] = _bouncingScrollSimulation;
  m[_clampingScrollSimulation.funName] = _clampingScrollSimulation;
  return m;
}
var _bouncingScrollSimulation = MXFunctionInvoke(
    "BouncingScrollSimulation",
    (
      {
      double position,
      double velocity,
      double leadingExtent,
      double trailingExtent,
      SpringDescription spring,
      Tolerance tolerance,
      }
    ) =>
      BouncingScrollSimulation(
      position: position?.toDouble(),
      velocity: velocity?.toDouble(),
      leadingExtent: leadingExtent?.toDouble(),
      trailingExtent: trailingExtent?.toDouble(),
      spring: spring,
      tolerance: tolerance,
    ),
);
var _clampingScrollSimulation = MXFunctionInvoke(
    "ClampingScrollSimulation",
    (
      {
      double position,
      double velocity,
      double friction = 0.015,
      Tolerance tolerance,
      }
    ) =>
      ClampingScrollSimulation(
      position: position?.toDouble(),
      velocity: velocity?.toDouble(),
      friction: friction?.toDouble(),
      tolerance: tolerance,
    ),
);

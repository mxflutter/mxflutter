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
  m[bouncingScrollSimulation.funName] = bouncingScrollSimulation;
  m[clampingScrollSimulation.funName] = clampingScrollSimulation;
  return m;
}
var bouncingScrollSimulation = MXFunctionInvoke(
    "BouncingScrollSimulation",
    ({
      dynamic position,
      dynamic velocity,
      dynamic leadingExtent,
      dynamic trailingExtent,
      SpringDescription spring,
      Tolerance tolerance,
    }) =>
      BouncingScrollSimulation(
      position: position,
      velocity: velocity,
      leadingExtent: leadingExtent,
      trailingExtent: trailingExtent,
      spring: spring,
      tolerance: tolerance,
    ),
);
var clampingScrollSimulation = MXFunctionInvoke(
    "ClampingScrollSimulation",
    ({
      dynamic position,
      dynamic velocity,
      dynamic friction = 0.015,
      Tolerance tolerance,
    }) =>
      ClampingScrollSimulation(
      position: position,
      velocity: velocity,
      friction: friction,
      tolerance: tolerance,
    ),
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_simulation.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/physics.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollSimulationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_bouncingScrollSimulation.funName] = _bouncingScrollSimulation;
  m[_bouncingScrollSimulationMaxSpringTransferVelocity.funName] = _bouncingScrollSimulationMaxSpringTransferVelocity;
  m[_clampingScrollSimulation.funName] = _clampingScrollSimulation;
  return m;
}

var _bouncingScrollSimulation = MXFunctionInvoke(
  "BouncingScrollSimulation",
  ({
    dynamic position,
    dynamic velocity,
    dynamic leadingExtent,
    dynamic trailingExtent,
    SpringDescription spring,
    Tolerance tolerance = Tolerance.defaultTolerance,
  }) =>
      BouncingScrollSimulation(
    position: position?.toDouble(),
    velocity: velocity?.toDouble(),
    leadingExtent: leadingExtent?.toDouble(),
    trailingExtent: trailingExtent?.toDouble(),
    spring: spring,
    tolerance: tolerance,
  ),
  [
    "position",
    "velocity",
    "leadingExtent",
    "trailingExtent",
    "spring",
    "tolerance",
  ],
);
var _bouncingScrollSimulationMaxSpringTransferVelocity = MXFunctionInvoke(
    "BouncingScrollSimulation.maxSpringTransferVelocity", () => BouncingScrollSimulation.maxSpringTransferVelocity);
var _clampingScrollSimulation = MXFunctionInvoke(
  "ClampingScrollSimulation",
  ({
    dynamic position,
    dynamic velocity,
    dynamic friction = 0.015,
    Tolerance tolerance = Tolerance.defaultTolerance,
  }) =>
      ClampingScrollSimulation(
    position: position?.toDouble(),
    velocity: velocity?.toDouble(),
    friction: friction?.toDouble(),
    tolerance: tolerance,
  ),
  [
    "position",
    "velocity",
    "friction",
    "tolerance",
  ],
);

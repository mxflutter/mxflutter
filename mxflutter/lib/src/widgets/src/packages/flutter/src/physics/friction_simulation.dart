//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/physics/friction_simulation.dart';
import 'dart:math' as math;
import 'package:flutter/src/physics/simulation.dart';
import 'package:flutter/src/physics/tolerance.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFrictionSimulationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_frictionSimulation.funName] = _frictionSimulation;
  m[_frictionSimulationThrough.funName] = _frictionSimulationThrough;
  m[_boundedFrictionSimulation.funName] = _boundedFrictionSimulation;
  return m;
}

var _frictionSimulation = MXFunctionInvoke(
  "FrictionSimulation",
  ({
    dynamic drag,
    dynamic position,
    dynamic velocity,
    Tolerance tolerance = Tolerance.defaultTolerance,
  }) =>
      FrictionSimulation(
    drag?.toDouble(),
    position?.toDouble(),
    velocity?.toDouble(),
    tolerance: tolerance,
  ),
  [
    "drag",
    "position",
    "velocity",
    "tolerance",
  ],
);
var _frictionSimulationThrough = MXFunctionInvoke(
  "FrictionSimulation.through",
  ({
    dynamic startPosition,
    dynamic endPosition,
    dynamic startVelocity,
    dynamic endVelocity,
  }) =>
      FrictionSimulation.through(
    startPosition?.toDouble(),
    endPosition?.toDouble(),
    startVelocity?.toDouble(),
    endVelocity?.toDouble(),
  ),
  [
    "startPosition",
    "endPosition",
    "startVelocity",
    "endVelocity",
  ],
);
var _boundedFrictionSimulation = MXFunctionInvoke(
  "BoundedFrictionSimulation",
  ({
    dynamic drag,
    dynamic position,
    dynamic velocity,
    dynamic minX,
    dynamic maxX,
  }) =>
      BoundedFrictionSimulation(
    drag?.toDouble(),
    position?.toDouble(),
    velocity?.toDouble(),
    minX?.toDouble(),
    maxX?.toDouble(),
  ),
  [
    "drag",
    "position",
    "velocity",
    "minX",
    "maxX",
  ],
);

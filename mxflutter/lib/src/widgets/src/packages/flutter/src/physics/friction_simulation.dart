//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/physics/friction_simulation.dart';
import 'dart:math';
import 'package:flutter/src/physics/simulation.dart';
import 'package:flutter/src/physics/tolerance.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFrictionSimulationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_frictionSimulation.funName] = _frictionSimulation;
  m[_frictionSimulation_through.funName] = _frictionSimulation_through;
  m[_boundedFrictionSimulation.funName] = _boundedFrictionSimulation;
  return m;
}
var _frictionSimulation = MXFunctionInvoke(
    "FrictionSimulation",
    (
      {
      double drag,
      double position,
      double velocity,
      Tolerance tolerance,
      }
    ) =>
      FrictionSimulation(
      drag,
      position,
      velocity,
      tolerance: tolerance,
    ),
);
var _frictionSimulation_through = MXFunctionInvoke(
  "frictionSimulation.through",
    (
      {
      double startPosition,
      double endPosition,
      double startVelocity,
      double endVelocity,
      }
    ) =>
      FrictionSimulation.through(
      startPosition,
      endPosition,
      startVelocity,
      endVelocity,
    ),
);
var _boundedFrictionSimulation = MXFunctionInvoke(
    "BoundedFrictionSimulation",
    (
      {
      double drag,
      double position,
      double velocity,
      double minX,
      double maxX,
      }
    ) =>
      BoundedFrictionSimulation(
      drag,
      position,
      velocity,
      minX,
      maxX,
    ),
);

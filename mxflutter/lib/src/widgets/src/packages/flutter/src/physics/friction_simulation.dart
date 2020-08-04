//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/physics/friction_simulation.dart';


class MXProxyFrictionSimulation {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[frictionSimulation.funName] = frictionSimulation;
    m[frictionSimulation_through.funName] = frictionSimulation_through;
    m[boundedFrictionSimulation.funName] = boundedFrictionSimulation;
    return m;
  }
  static var frictionSimulation = MXFunctionInvoke(
      "FrictionSimulation",
      ({
        double drag,
        double position,
        double velocity,
        Tolerance tolerance,
      }) =>
        FrictionSimulation(
        drag,
        position,
        velocity,
        tolerance: tolerance,
      ),
    );
  static var frictionSimulation_through = MXFunctionInvoke(
    "frictionSimulation.through",
      ({
        double startPosition,
        double endPosition,
        double startVelocity,
        double endVelocity,
      }) =>
        FrictionSimulation.through(
        startPosition,
        endPosition,
        startVelocity,
        endVelocity,
      ),
    );
  static var boundedFrictionSimulation = MXFunctionInvoke(
      "BoundedFrictionSimulation",
      ({
        double drag,
        double position,
        double velocity,
        double _minX,
        double _maxX,
      }) =>
        BoundedFrictionSimulation(
        drag,
        position,
        velocity,
        _minX,
        _maxX,
      ),
    );
}

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/physics/gravity_simulation.dart';
import 'package:flutter/src/physics/simulation.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerGravitySimulationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_gravitySimulation.funName] = _gravitySimulation;
  return m;
}

var _gravitySimulation = MXFunctionInvoke(
  "GravitySimulation",
  ({
    dynamic acceleration,
    dynamic distance,
    dynamic endDistance,
    dynamic velocity,
  }) =>
      GravitySimulation(
    acceleration?.toDouble(),
    distance?.toDouble(),
    endDistance?.toDouble(),
    velocity?.toDouble(),
  ),
  [
    "acceleration",
    "distance",
    "endDistance",
    "velocity",
  ],
);

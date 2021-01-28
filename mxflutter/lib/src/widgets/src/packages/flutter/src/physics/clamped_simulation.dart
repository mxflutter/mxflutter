//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/physics/clamped_simulation.dart';
import 'package:flutter/src/physics/simulation.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerClampedSimulationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_clampedSimulation.funName] = _clampedSimulation;
  return m;
}

var _clampedSimulation = MXFunctionInvoke(
  "ClampedSimulation",
  ({
    Simulation simulation,
    dynamic xMin = double.negativeInfinity,
    dynamic xMax = double.infinity,
    dynamic dxMin = double.negativeInfinity,
    dynamic dxMax = double.infinity,
  }) =>
      ClampedSimulation(
    simulation,
    xMin: xMin?.toDouble(),
    xMax: xMax?.toDouble(),
    dxMin: dxMin?.toDouble(),
    dxMax: dxMax?.toDouble(),
  ),
  [
    "simulation",
    "xMin",
    "xMax",
    "dxMin",
    "dxMax",
  ],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/physics/clamped_simulation.dart';
import 'package:flutter/src/physics/simulation.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerClampedSimulationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[clampedSimulation.funName] = clampedSimulation;
  return m;
}
var clampedSimulation = MXFunctionInvoke(
    "ClampedSimulation",
    ({
      Simulation simulation,
      dynamic xMin = -Infinity,
      dynamic xMax = Infinity,
      dynamic dxMin = -Infinity,
      dynamic dxMax = Infinity,
    }) =>
      ClampedSimulation(
      simulation,
      xMin: xMin,
      xMax: xMax,
      dxMin: dxMin,
      dxMax: dxMax,
    ),
);

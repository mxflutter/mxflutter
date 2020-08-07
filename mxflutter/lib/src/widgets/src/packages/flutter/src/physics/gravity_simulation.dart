//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/physics/gravity_simulation.dart';
import 'package:flutter/src/physics/simulation.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerGravitySimulationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_gravitySimulation.funName] = _gravitySimulation;
  return m;
}
var _gravitySimulation = MXFunctionInvoke(
    "GravitySimulation",
    (
      {
      dynamic acceleration,
      dynamic distance,
      dynamic endDistance,
      dynamic velocity,
      }
    ) =>
      GravitySimulation(
      acceleration,
      distance,
      endDistance,
      velocity,
    ),
);

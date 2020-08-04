//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'src/physics/clamped_simulation.dart';
import 'src/physics/friction_simulation.dart';
import 'src/physics/gravity_simulation.dart';
import 'src/physics/simulation.dart';
import 'src/physics/spring_simulation.dart';
import 'src/physics/tolerance.dart';
import 'src/physics/utils.dart';


class MXProxyPhysics {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};
    m.addAll(MXProxyClampedSimulation.registerSeries());
    m.addAll(MXProxyFrictionSimulation.registerSeries());
    m.addAll(MXProxyGravitySimulation.registerSeries());
    m.addAll(MXProxySimulation.registerSeries());
    m.addAll(MXProxySpringSimulation.registerSeries());
    m.addAll(MXProxyTolerance.registerSeries());
    m.addAll(MXProxyUtils.registerSeries());
    return m;
  }
}

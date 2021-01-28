//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import './src/physics/clamped_simulation.dart';
import './src/physics/friction_simulation.dart';
import './src/physics/gravity_simulation.dart';
import './src/physics/simulation.dart';
import './src/physics/spring_simulation.dart';
import './src/physics/tolerance.dart';
import './src/physics/utils.dart';

Map<String, MXFunctionInvoke> registerPhysicsLibrarySeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerClampedSimulationSeries());
  m.addAll(registerFrictionSimulationSeries());
  m.addAll(registerGravitySimulationSeries());
  m.addAll(registerSimulationSeries());
  m.addAll(registerSpringSimulationSeries());
  m.addAll(registerToleranceSeries());
  m.addAll(registerUtilsSeries());
  return m;
}

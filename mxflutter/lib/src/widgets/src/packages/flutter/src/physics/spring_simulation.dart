//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/physics/spring_simulation.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/physics/simulation.dart';
import 'package:flutter/src/physics/tolerance.dart';
import 'package:flutter/src/physics/utils.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSpringSimulationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_springDescription.funName] = _springDescription;
  m[_springDescriptionWithDampingRatio.funName] = _springDescriptionWithDampingRatio;
  m[_springType.funName] = _springType;
  m[_springSimulation.funName] = _springSimulation;
  m[_scrollSpringSimulation.funName] = _scrollSpringSimulation;
  return m;
}

var _springDescription = MXFunctionInvoke(
  "SpringDescription",
  ({
    dynamic mass,
    dynamic stiffness,
    dynamic damping,
  }) =>
      SpringDescription(
    mass: mass?.toDouble(),
    stiffness: stiffness?.toDouble(),
    damping: damping?.toDouble(),
  ),
  [
    "mass",
    "stiffness",
    "damping",
  ],
);
var _springDescriptionWithDampingRatio = MXFunctionInvoke(
  "SpringDescription.withDampingRatio",
  ({
    dynamic mass,
    dynamic stiffness,
    dynamic ratio = 1.0,
  }) =>
      SpringDescription.withDampingRatio(
    mass: mass?.toDouble(),
    stiffness: stiffness?.toDouble(),
    ratio: ratio?.toDouble(),
  ),
  [
    "mass",
    "stiffness",
    "ratio",
  ],
);
var _springType =
    MXFunctionInvoke("SpringType", ({String name, int index}) => MXSpringType.parse(name, index), ["name", "index"]);
var _springSimulation = MXFunctionInvoke(
  "SpringSimulation",
  ({
    SpringDescription spring,
    dynamic start,
    dynamic end,
    dynamic velocity,
    Tolerance tolerance = Tolerance.defaultTolerance,
  }) =>
      SpringSimulation(
    spring,
    start?.toDouble(),
    end?.toDouble(),
    velocity?.toDouble(),
    tolerance: tolerance,
  ),
  [
    "spring",
    "start",
    "end",
    "velocity",
    "tolerance",
  ],
);
var _scrollSpringSimulation = MXFunctionInvoke(
  "ScrollSpringSimulation",
  ({
    SpringDescription spring,
    dynamic start,
    dynamic end,
    dynamic velocity,
    Tolerance tolerance = Tolerance.defaultTolerance,
  }) =>
      ScrollSpringSimulation(
    spring,
    start?.toDouble(),
    end?.toDouble(),
    velocity?.toDouble(),
    tolerance: tolerance,
  ),
  [
    "spring",
    "start",
    "end",
    "velocity",
    "tolerance",
  ],
);

class MXSpringType {
  static SpringType parse(String name, int index) {
    switch (name) {
      case 'SpringType.criticallyDamped':
        return SpringType.criticallyDamped;
      case 'SpringType.underDamped':
        return SpringType.underDamped;
      case 'SpringType.overDamped':
        return SpringType.overDamped;
    }
    return null;
  }
}

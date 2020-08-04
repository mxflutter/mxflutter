//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/physics/spring_simulation.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/physics/simulation.dart';
import 'package:flutter/src/physics/tolerance.dart';
import 'package:flutter/src/physics/utils.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSpringSimulationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[springDescription.funName] = springDescription;
  m[springDescription_withDampingRatio.funName] = springDescription_withDampingRatio;
  m[springType.funName] = springType;
  m[springSimulation.funName] = springSimulation;
  m[scrollSpringSimulation.funName] = scrollSpringSimulation;
  return m;
}
var springDescription = MXFunctionInvoke(
    "SpringDescription",
    ({
      dynamic mass,
      dynamic stiffness,
      dynamic damping,
    }) =>
      SpringDescription(
      mass: mass,
      stiffness: stiffness,
      damping: damping,
    ),
);
var springDescription_withDampingRatio = MXFunctionInvoke(
  "springDescription.withDampingRatio",
    ({
      dynamic mass,
      dynamic stiffness,
      dynamic ratio = 1.0,
    }) =>
      SpringDescription.withDampingRatio(
      mass: mass,
      stiffness: stiffness,
      ratio: ratio,
    ),
);
var springType = MXFunctionInvoke(
    "SpringType",
    ({Map args}) => MXSpringType.parse(args),
  );
var springSimulation = MXFunctionInvoke(
    "SpringSimulation",
    ({
      SpringDescription spring,
      dynamic start,
      dynamic end,
      dynamic velocity,
      Tolerance tolerance,
    }) =>
      SpringSimulation(
      spring,
      start,
      end,
      velocity,
      tolerance: tolerance,
    ),
);
var scrollSpringSimulation = MXFunctionInvoke(
    "ScrollSpringSimulation",
    ({
      SpringDescription spring,
      dynamic start,
      dynamic end,
      dynamic velocity,
      Tolerance tolerance,
    }) =>
      ScrollSpringSimulation(
      spring,
      start,
      end,
      velocity,
      tolerance: tolerance,
    ),
);
class MXSpringType {
  static Map str2VMap = {
    'SpringType.criticallyDamped': SpringType.criticallyDamped,
    'SpringType.underDamped': SpringType.underDamped,
    'SpringType.overDamped': SpringType.overDamped,
  };
  static SpringType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

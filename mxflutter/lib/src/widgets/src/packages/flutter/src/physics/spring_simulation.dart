//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/physics/spring_simulation.dart';


class MXProxySpringSimulation {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[springDescription.funName] = springDescription;
    m[springDescription_withDampingRatio.funName] = springDescription_withDampingRatio;
    m[springType.funName] = springType;
    m[springSimulation.funName] = springSimulation;
    m[scrollSpringSimulation.funName] = scrollSpringSimulation;
    return m;
  }
  static var springDescription = MXFunctionInvoke(
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
    );
  static var springDescription_withDampingRatio = MXFunctionInvoke(
    "springDescription.withDampingRatio",
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
    );
  static var springType = MXFunctionInvoke(
      "SpringType",
      ({Map args}) => MXSpringType.parse(args),
  );
  static var springSimulation = MXFunctionInvoke(
      "SpringSimulation",
      ({
        SpringDescription spring,
        double start,
        double end,
        double velocity,
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
  static var scrollSpringSimulation = MXFunctionInvoke(
      "ScrollSpringSimulation",
      ({
        SpringDescription spring,
        double start,
        double end,
        double velocity,
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
}
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

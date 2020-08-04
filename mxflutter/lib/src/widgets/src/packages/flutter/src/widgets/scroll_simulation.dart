//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/scroll_simulation.dart';


class MXProxyScrollSimulation {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[bouncingScrollSimulation.funName] = bouncingScrollSimulation;
    m[clampingScrollSimulation.funName] = clampingScrollSimulation;
    return m;
  }
  static var bouncingScrollSimulation = MXFunctionInvoke(
      "BouncingScrollSimulation",
      ({
        dynamic position,
        dynamic velocity,
        dynamic leadingExtent,
        dynamic trailingExtent,
        SpringDescription spring,
        Tolerance tolerance,
      }) =>
        BouncingScrollSimulation(
        position: position?.toDouble(),
        velocity: velocity?.toDouble(),
        leadingExtent: leadingExtent?.toDouble(),
        trailingExtent: trailingExtent?.toDouble(),
        spring: spring,
        tolerance: tolerance,
      ),
    );
  static var clampingScrollSimulation = MXFunctionInvoke(
      "ClampingScrollSimulation",
      ({
        dynamic position,
        dynamic velocity,
        dynamic friction = 0.015,
        Tolerance tolerance,
      }) =>
        ClampingScrollSimulation(
        position: position?.toDouble(),
        velocity: velocity?.toDouble(),
        friction: friction?.toDouble(),
        tolerance: tolerance,
      ),
    );
}

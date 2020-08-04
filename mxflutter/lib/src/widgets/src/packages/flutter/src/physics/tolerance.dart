//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/physics/tolerance.dart';


class MXProxyTolerance {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[tolerance.funName] = tolerance;
    return m;
  }
  static var tolerance = MXFunctionInvoke(
      "Tolerance",
      ({
        dynamic distance = 0.001,
        dynamic time = 0.001,
        dynamic velocity = 0.001,
      }) =>
        Tolerance(
        distance: distance?.toDouble(),
        time: time?.toDouble(),
        velocity: velocity?.toDouble(),
      ),
    );
}

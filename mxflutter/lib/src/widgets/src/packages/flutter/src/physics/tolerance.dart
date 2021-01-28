//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/physics/tolerance.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerToleranceSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tolerance.funName] = _tolerance;
  m[_toleranceDefaultTolerance.funName] = _toleranceDefaultTolerance;
  return m;
}

var _tolerance = MXFunctionInvoke(
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
  [
    "distance",
    "time",
    "velocity",
  ],
);
var _toleranceDefaultTolerance = MXFunctionInvoke("Tolerance.defaultTolerance", () => Tolerance.defaultTolerance);

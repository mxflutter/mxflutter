//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/lsq_solver.dart';
import 'dart:math' as math;
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerLsqSolverSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_polynomialFit.funName] = _polynomialFit;
  m[_leastSquaresSolver.funName] = _leastSquaresSolver;
  return m;
}

var _polynomialFit = MXFunctionInvoke(
  "PolynomialFit",
  ({
    int degree,
  }) =>
      PolynomialFit(
    degree,
  ),
  [
    "degree",
  ],
);
var _leastSquaresSolver = MXFunctionInvoke(
  "LeastSquaresSolver",
  ({
    dynamic x,
    dynamic y,
    dynamic w,
  }) =>
      LeastSquaresSolver(
    toListT<double>(x),
    toListT<double>(y),
    toListT<double>(w),
  ),
  [
    "x",
    "y",
    "w",
  ],
);

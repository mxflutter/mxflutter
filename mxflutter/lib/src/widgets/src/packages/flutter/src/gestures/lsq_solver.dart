//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/lsq_solver.dart';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerLsqSolverSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[polynomialFit.funName] = polynomialFit;
  m[leastSquaresSolver.funName] = leastSquaresSolver;
  return m;
}
var polynomialFit = MXFunctionInvoke(
    "PolynomialFit",
    ({
      int degree,
    }) =>
      PolynomialFit(
      degree,
    ),
);
var leastSquaresSolver = MXFunctionInvoke(
    "LeastSquaresSolver",
    ({
      List<double> x,
      List<double> y,
      List<double> w,
    }) =>
      LeastSquaresSolver(
      x,
      y,
      w,
    ),
);

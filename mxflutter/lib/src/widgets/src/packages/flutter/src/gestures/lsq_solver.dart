//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/lsq_solver.dart';


class MXProxyLsqSolver {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[polynomialFit.funName] = polynomialFit;
    m[leastSquaresSolver.funName] = leastSquaresSolver;
    return m;
  }
  static var polynomialFit = MXFunctionInvoke(
      "PolynomialFit",
      ({
        int degree,
      }) =>
        PolynomialFit(
        degree,
      ),
    );
  static var leastSquaresSolver = MXFunctionInvoke(
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
}

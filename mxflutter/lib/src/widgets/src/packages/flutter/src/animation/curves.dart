//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/curves.dart';


class MXProxyCurves {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[sawTooth.funName] = sawTooth;
    m[interval.funName] = interval;
    m[threshold.funName] = threshold;
    m[cubic.funName] = cubic;
    m[curve2DSample.funName] = curve2DSample;
    m[catmullRomSpline.funName] = catmullRomSpline;
    m[catmullRomSpline_precompute.funName] = catmullRomSpline_precompute;
    m[catmullRomCurve.funName] = catmullRomCurve;
    m[catmullRomCurve_precompute.funName] = catmullRomCurve_precompute;
    m[flippedCurve.funName] = flippedCurve;
    m[elasticInCurve.funName] = elasticInCurve;
    m[elasticOutCurve.funName] = elasticOutCurve;
    m[elasticInOutCurve.funName] = elasticInOutCurve;
    m[curves_.funName] = curves_;
    return m;
  }
  static var sawTooth = MXFunctionInvoke(
      "SawTooth",
      ({
        int count,
      }) =>
        SawTooth(
        count,
      ),
    );
  static var interval = MXFunctionInvoke(
      "Interval",
      ({
        double begin,
        double end,
        Curve curve,
      }) =>
        Interval(
        begin,
        end,
        curve: curve,
      ),
    );
  static var threshold = MXFunctionInvoke(
      "Threshold",
      ({
        double threshold,
      }) =>
        Threshold(
        threshold,
      ),
    );
  static var cubic = MXFunctionInvoke(
      "Cubic",
      ({
        double a,
        double b,
        double c,
        double d,
      }) =>
        Cubic(
        a,
        b,
        c,
        d,
      ),
    );
  static var curve2DSample = MXFunctionInvoke(
      "Curve2DSample",
      ({
        double t,
        Offset value,
      }) =>
        Curve2DSample(
        t,
        value,
      ),
    );
  static var catmullRomSpline = MXFunctionInvoke(
      "CatmullRomSpline",
      ({
        List<Offset> controlPoints,
        dynamic tension = 0.0,
        Offset startHandle,
        Offset endHandle,
      }) =>
        CatmullRomSpline(
        controlPoints,
        tension: tension?.toDouble(),
        startHandle: startHandle,
        endHandle: endHandle,
      ),
    );
  static var catmullRomSpline_precompute = MXFunctionInvoke(
    "catmullRomSpline.precompute",
      ({
        List<Offset> controlPoints,
        dynamic tension = 0.0,
        Offset startHandle,
        Offset endHandle,
      }) =>
        CatmullRomSpline.precompute(
        controlPoints,
        tension: tension?.toDouble(),
        startHandle: startHandle,
        endHandle: endHandle,
      ),
    );
  static var catmullRomCurve = MXFunctionInvoke(
      "CatmullRomCurve",
      ({
        List<Offset> controlPoints,
        dynamic tension = 0.0,
      }) =>
        CatmullRomCurve(
        controlPoints,
        tension: tension?.toDouble(),
      ),
    );
  static var catmullRomCurve_precompute = MXFunctionInvoke(
    "catmullRomCurve.precompute",
      ({
        List<Offset> controlPoints,
        dynamic tension = 0.0,
      }) =>
        CatmullRomCurve.precompute(
        controlPoints,
        tension: tension?.toDouble(),
      ),
    );
  static var flippedCurve = MXFunctionInvoke(
      "FlippedCurve",
      ({
        Curve curve,
      }) =>
        FlippedCurve(
        curve,
      ),
    );
  static var elasticInCurve = MXFunctionInvoke(
      "ElasticInCurve",
      ({
        double period,
      }) =>
        ElasticInCurve(
        period,
      ),
    );
  static var elasticOutCurve = MXFunctionInvoke(
      "ElasticOutCurve",
      ({
        double period,
      }) =>
        ElasticOutCurve(
        period,
      ),
    );
  static var elasticInOutCurve = MXFunctionInvoke(
      "ElasticInOutCurve",
      ({
        double period,
      }) =>
        ElasticInOutCurve(
        period,
      ),
    );
  static var curves_ = MXFunctionInvoke(
    "curves.",
      ({
      }) =>
        Curves.(
      ),
    );
}

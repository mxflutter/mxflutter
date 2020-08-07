//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/curves.dart';
import 'dart:math' as math;
import 'dart:ui' ;
import 'package:flutter/foundation.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCurvesSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_parametricCurve.funName] = _parametricCurve;
  m[_curve.funName] = _curve;
  m[_sawTooth.funName] = _sawTooth;
  m[_interval.funName] = _interval;
  m[_threshold.funName] = _threshold;
  m[_cubic.funName] = _cubic;
  m[_curve2D.funName] = _curve2D;
  m[_curve2DSample.funName] = _curve2DSample;
  m[_catmullRomSpline.funName] = _catmullRomSpline;
  m[_catmullRomSpline_precompute.funName] = _catmullRomSpline_precompute;
  m[_catmullRomCurve.funName] = _catmullRomCurve;
  m[_catmullRomCurve_precompute.funName] = _catmullRomCurve_precompute;
  m[_flippedCurve.funName] = _flippedCurve;
  m[_elasticInCurve.funName] = _elasticInCurve;
  m[_elasticOutCurve.funName] = _elasticOutCurve;
  m[_elasticInOutCurve.funName] = _elasticInOutCurve;
  return m;
}
var _parametricCurve = MXFunctionInvoke(
    "ParametricCurve",
    (
    ) =>
      ParametricCurve(
    ),
);
var _curve = MXFunctionInvoke(
    "Curve",
    (
    ) =>
      Curve(
    ),
);
var _sawTooth = MXFunctionInvoke(
    "SawTooth",
    (
      {
      int count,
      }
    ) =>
      SawTooth(
      count,
    ),
);
var _interval = MXFunctionInvoke(
    "Interval",
    (
      {
      dynamic begin,
      dynamic end,
      Curve curve,
      }
    ) =>
      Interval(
      begin?.toDouble(),
      end?.toDouble(),
      curve: curve,
    ),
);
var _threshold = MXFunctionInvoke(
    "Threshold",
    (
      {
      dynamic threshold,
      }
    ) =>
      Threshold(
      threshold?.toDouble(),
    ),
);
var _cubic = MXFunctionInvoke(
    "Cubic",
    (
      {
      dynamic a,
      dynamic b,
      dynamic c,
      dynamic d,
      }
    ) =>
      Cubic(
      a?.toDouble(),
      b?.toDouble(),
      c?.toDouble(),
      d?.toDouble(),
    ),
);
var _curve2D = MXFunctionInvoke(
    "Curve2D",
    (
    ) =>
      Curve2D(
    ),
);
var _curve2DSample = MXFunctionInvoke(
    "Curve2DSample",
    (
      {
      dynamic t,
      Offset value,
      }
    ) =>
      Curve2DSample(
      t?.toDouble(),
      value,
    ),
);
var _catmullRomSpline = MXFunctionInvoke(
    "CatmullRomSpline",
    (
      {
      List<Offset> controlPoints,
      dynamic tension = 0.0,
      Offset startHandle,
      Offset endHandle,
      }
    ) =>
      CatmullRomSpline(
      controlPoints,
      tension: tension?.toDouble(),
      startHandle: startHandle,
      endHandle: endHandle,
    ),
);
var _catmullRomSpline_precompute = MXFunctionInvoke(
  "CatmullRomSpline.precompute",
    (
      {
      List<Offset> controlPoints,
      dynamic tension = 0.0,
      Offset startHandle,
      Offset endHandle,
      }
    ) =>
      CatmullRomSpline.precompute(
      controlPoints,
      tension: tension?.toDouble(),
      startHandle: startHandle,
      endHandle: endHandle,
    ),
);
var _catmullRomCurve = MXFunctionInvoke(
    "CatmullRomCurve",
    (
      {
      List<Offset> controlPoints,
      dynamic tension = 0.0,
      }
    ) =>
      CatmullRomCurve(
      controlPoints,
      tension: tension?.toDouble(),
    ),
);
var _catmullRomCurve_precompute = MXFunctionInvoke(
  "CatmullRomCurve.precompute",
    (
      {
      List<Offset> controlPoints,
      dynamic tension = 0.0,
      }
    ) =>
      CatmullRomCurve.precompute(
      controlPoints,
      tension: tension?.toDouble(),
    ),
);
var _flippedCurve = MXFunctionInvoke(
    "FlippedCurve",
    (
      {
      Curve curve,
      }
    ) =>
      FlippedCurve(
      curve,
    ),
);
var _elasticInCurve = MXFunctionInvoke(
    "ElasticInCurve",
    (
      {
      dynamic period,
      }
    ) =>
      ElasticInCurve(
      period?.toDouble(),
    ),
);
var _elasticOutCurve = MXFunctionInvoke(
    "ElasticOutCurve",
    (
      {
      dynamic period,
      }
    ) =>
      ElasticOutCurve(
      period?.toDouble(),
    ),
);
var _elasticInOutCurve = MXFunctionInvoke(
    "ElasticInOutCurve",
    (
      {
      dynamic period,
      }
    ) =>
      ElasticInOutCurve(
      period?.toDouble(),
    ),
);

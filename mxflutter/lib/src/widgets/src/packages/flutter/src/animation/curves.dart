//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/curves.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCurvesSeries() {
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
  return m;
}
var sawTooth = MXFunctionInvoke(
    "SawTooth",
    ({
      int count,
    }) =>
      SawTooth(
      count,
    ),
);
var interval = MXFunctionInvoke(
    "Interval",
    ({
      dynamic begin,
      dynamic end,
      Curve curve,
    }) =>
      Interval(
      begin,
      end,
      curve: curve,
    ),
);
var threshold = MXFunctionInvoke(
    "Threshold",
    ({
      dynamic threshold,
    }) =>
      Threshold(
      threshold,
    ),
);
var cubic = MXFunctionInvoke(
    "Cubic",
    ({
      dynamic a,
      dynamic b,
      dynamic c,
      dynamic d,
    }) =>
      Cubic(
      a,
      b,
      c,
      d,
    ),
);
var curve2DSample = MXFunctionInvoke(
    "Curve2DSample",
    ({
      dynamic t,
      Offset value,
    }) =>
      Curve2DSample(
      t,
      value,
    ),
);
var catmullRomSpline = MXFunctionInvoke(
    "CatmullRomSpline",
    ({
      List<Offset> controlPoints,
      dynamic tension = 0.0,
      Offset startHandle,
      Offset endHandle,
    }) =>
      CatmullRomSpline(
      controlPoints,
      tension: tension,
      startHandle: startHandle,
      endHandle: endHandle,
    ),
);
var catmullRomSpline_precompute = MXFunctionInvoke(
  "catmullRomSpline.precompute",
    ({
      List<Offset> controlPoints,
      dynamic tension = 0.0,
      Offset startHandle,
      Offset endHandle,
    }) =>
      CatmullRomSpline.precompute(
      controlPoints,
      tension: tension,
      startHandle: startHandle,
      endHandle: endHandle,
    ),
);
var catmullRomCurve = MXFunctionInvoke(
    "CatmullRomCurve",
    ({
      List<Offset> controlPoints,
      dynamic tension = 0.0,
    }) =>
      CatmullRomCurve(
      controlPoints,
      tension: tension,
    ),
);
var catmullRomCurve_precompute = MXFunctionInvoke(
  "catmullRomCurve.precompute",
    ({
      List<Offset> controlPoints,
      dynamic tension = 0.0,
    }) =>
      CatmullRomCurve.precompute(
      controlPoints,
      tension: tension,
    ),
);
var flippedCurve = MXFunctionInvoke(
    "FlippedCurve",
    ({
      Curve curve,
    }) =>
      FlippedCurve(
      curve,
    ),
);
var elasticInCurve = MXFunctionInvoke(
    "ElasticInCurve",
    ({
      dynamic period,
    }) =>
      ElasticInCurve(
      period,
    ),
);
var elasticOutCurve = MXFunctionInvoke(
    "ElasticOutCurve",
    ({
      dynamic period,
    }) =>
      ElasticOutCurve(
      period,
    ),
);
var elasticInOutCurve = MXFunctionInvoke(
    "ElasticInOutCurve",
    ({
      dynamic period,
    }) =>
      ElasticInOutCurve(
      period,
    ),
);

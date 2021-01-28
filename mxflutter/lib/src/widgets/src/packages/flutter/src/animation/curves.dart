//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/curves.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCurvesSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_sawTooth.funName] = _sawTooth;
  m[_interval.funName] = _interval;
  m[_threshold.funName] = _threshold;
  m[_cubic.funName] = _cubic;
  m[_curve2DSample.funName] = _curve2DSample;
  m[_catmullRomSpline.funName] = _catmullRomSpline;
  m[_catmullRomSplinePrecompute.funName] = _catmullRomSplinePrecompute;
  m[_catmullRomCurve.funName] = _catmullRomCurve;
  m[_catmullRomCurvePrecompute.funName] = _catmullRomCurvePrecompute;
  m[_flippedCurve.funName] = _flippedCurve;
  m[_elasticInCurve.funName] = _elasticInCurve;
  m[_elasticOutCurve.funName] = _elasticOutCurve;
  m[_elasticInOutCurve.funName] = _elasticInOutCurve;
  m[_curvesLinear.funName] = _curvesLinear;
  m[_curvesDecelerate.funName] = _curvesDecelerate;
  m[_curvesFastLinearToSlowEaseIn.funName] = _curvesFastLinearToSlowEaseIn;
  m[_curvesEase.funName] = _curvesEase;
  m[_curvesEaseIn.funName] = _curvesEaseIn;
  m[_curvesEaseInToLinear.funName] = _curvesEaseInToLinear;
  m[_curvesEaseInSine.funName] = _curvesEaseInSine;
  m[_curvesEaseInQuad.funName] = _curvesEaseInQuad;
  m[_curvesEaseInCubic.funName] = _curvesEaseInCubic;
  m[_curvesEaseInQuart.funName] = _curvesEaseInQuart;
  m[_curvesEaseInQuint.funName] = _curvesEaseInQuint;
  m[_curvesEaseInExpo.funName] = _curvesEaseInExpo;
  m[_curvesEaseInCirc.funName] = _curvesEaseInCirc;
  m[_curvesEaseInBack.funName] = _curvesEaseInBack;
  m[_curvesEaseOut.funName] = _curvesEaseOut;
  m[_curvesLinearToEaseOut.funName] = _curvesLinearToEaseOut;
  m[_curvesEaseOutSine.funName] = _curvesEaseOutSine;
  m[_curvesEaseOutQuad.funName] = _curvesEaseOutQuad;
  m[_curvesEaseOutCubic.funName] = _curvesEaseOutCubic;
  m[_curvesEaseOutQuart.funName] = _curvesEaseOutQuart;
  m[_curvesEaseOutQuint.funName] = _curvesEaseOutQuint;
  m[_curvesEaseOutExpo.funName] = _curvesEaseOutExpo;
  m[_curvesEaseOutCirc.funName] = _curvesEaseOutCirc;
  m[_curvesEaseOutBack.funName] = _curvesEaseOutBack;
  m[_curvesEaseInOut.funName] = _curvesEaseInOut;
  m[_curvesEaseInOutSine.funName] = _curvesEaseInOutSine;
  m[_curvesEaseInOutQuad.funName] = _curvesEaseInOutQuad;
  m[_curvesEaseInOutCubic.funName] = _curvesEaseInOutCubic;
  m[_curvesEaseInOutQuart.funName] = _curvesEaseInOutQuart;
  m[_curvesEaseInOutQuint.funName] = _curvesEaseInOutQuint;
  m[_curvesEaseInOutExpo.funName] = _curvesEaseInOutExpo;
  m[_curvesEaseInOutCirc.funName] = _curvesEaseInOutCirc;
  m[_curvesEaseInOutBack.funName] = _curvesEaseInOutBack;
  m[_curvesFastOutSlowIn.funName] = _curvesFastOutSlowIn;
  m[_curvesSlowMiddle.funName] = _curvesSlowMiddle;
  m[_curvesBounceIn.funName] = _curvesBounceIn;
  m[_curvesBounceOut.funName] = _curvesBounceOut;
  m[_curvesBounceInOut.funName] = _curvesBounceInOut;
  m[_curvesElasticIn.funName] = _curvesElasticIn;
  m[_curvesElasticOut.funName] = _curvesElasticOut;
  m[_curvesElasticInOut.funName] = _curvesElasticInOut;
  return m;
}

var _sawTooth = MXFunctionInvoke(
  "SawTooth",
  ({
    int count,
  }) =>
      SawTooth(
    count,
  ),
  [
    "count",
  ],
);
var _interval = MXFunctionInvoke(
  "Interval",
  ({
    dynamic begin,
    dynamic end,
    Curve curve = Curves.linear,
  }) =>
      Interval(
    begin?.toDouble(),
    end?.toDouble(),
    curve: curve,
  ),
  [
    "begin",
    "end",
    "curve",
  ],
);
var _threshold = MXFunctionInvoke(
  "Threshold",
  ({
    dynamic threshold,
  }) =>
      Threshold(
    threshold?.toDouble(),
  ),
  [
    "threshold",
  ],
);
var _cubic = MXFunctionInvoke(
  "Cubic",
  ({
    dynamic a,
    dynamic b,
    dynamic c,
    dynamic d,
  }) =>
      Cubic(
    a?.toDouble(),
    b?.toDouble(),
    c?.toDouble(),
    d?.toDouble(),
  ),
  [
    "a",
    "b",
    "c",
    "d",
  ],
);
var _curve2DSample = MXFunctionInvoke(
  "Curve2DSample",
  ({
    dynamic t,
    Offset value,
  }) =>
      Curve2DSample(
    t?.toDouble(),
    value,
  ),
  [
    "t",
    "value",
  ],
);
var _catmullRomSpline = MXFunctionInvoke(
  "CatmullRomSpline",
  ({
    dynamic controlPoints,
    dynamic tension = 0.0,
    Offset startHandle,
    Offset endHandle,
  }) =>
      CatmullRomSpline(
    toListT<Offset>(controlPoints),
    tension: tension?.toDouble(),
    startHandle: startHandle,
    endHandle: endHandle,
  ),
  [
    "controlPoints",
    "tension",
    "startHandle",
    "endHandle",
  ],
);
var _catmullRomSplinePrecompute = MXFunctionInvoke(
  "CatmullRomSpline.precompute",
  ({
    dynamic controlPoints,
    dynamic tension = 0.0,
    Offset startHandle,
    Offset endHandle,
  }) =>
      CatmullRomSpline.precompute(
    toListT<Offset>(controlPoints),
    tension: tension?.toDouble(),
    startHandle: startHandle,
    endHandle: endHandle,
  ),
  [
    "controlPoints",
    "tension",
    "startHandle",
    "endHandle",
  ],
);
var _catmullRomCurve = MXFunctionInvoke(
  "CatmullRomCurve",
  ({
    dynamic controlPoints,
    dynamic tension = 0.0,
  }) =>
      CatmullRomCurve(
    toListT<Offset>(controlPoints),
    tension: tension?.toDouble(),
  ),
  [
    "controlPoints",
    "tension",
  ],
);
var _catmullRomCurvePrecompute = MXFunctionInvoke(
  "CatmullRomCurve.precompute",
  ({
    dynamic controlPoints,
    dynamic tension = 0.0,
  }) =>
      CatmullRomCurve.precompute(
    toListT<Offset>(controlPoints),
    tension: tension?.toDouble(),
  ),
  [
    "controlPoints",
    "tension",
  ],
);
var _flippedCurve = MXFunctionInvoke(
  "FlippedCurve",
  ({
    Curve curve,
  }) =>
      FlippedCurve(
    curve,
  ),
  [
    "curve",
  ],
);
var _elasticInCurve = MXFunctionInvoke(
  "ElasticInCurve",
  ({
    dynamic period,
  }) =>
      ElasticInCurve(
    period?.toDouble(),
  ),
  [
    "period",
  ],
);
var _elasticOutCurve = MXFunctionInvoke(
  "ElasticOutCurve",
  ({
    dynamic period,
  }) =>
      ElasticOutCurve(
    period?.toDouble(),
  ),
  [
    "period",
  ],
);
var _elasticInOutCurve = MXFunctionInvoke(
  "ElasticInOutCurve",
  ({
    dynamic period,
  }) =>
      ElasticInOutCurve(
    period?.toDouble(),
  ),
  [
    "period",
  ],
);
var _curvesLinear = MXFunctionInvoke("Curves.linear", () => Curves.linear);
var _curvesDecelerate = MXFunctionInvoke("Curves.decelerate", () => Curves.decelerate);
var _curvesFastLinearToSlowEaseIn =
    MXFunctionInvoke("Curves.fastLinearToSlowEaseIn", () => Curves.fastLinearToSlowEaseIn);
var _curvesEase = MXFunctionInvoke("Curves.ease", () => Curves.ease);
var _curvesEaseIn = MXFunctionInvoke("Curves.easeIn", () => Curves.easeIn);
var _curvesEaseInToLinear = MXFunctionInvoke("Curves.easeInToLinear", () => Curves.easeInToLinear);
var _curvesEaseInSine = MXFunctionInvoke("Curves.easeInSine", () => Curves.easeInSine);
var _curvesEaseInQuad = MXFunctionInvoke("Curves.easeInQuad", () => Curves.easeInQuad);
var _curvesEaseInCubic = MXFunctionInvoke("Curves.easeInCubic", () => Curves.easeInCubic);
var _curvesEaseInQuart = MXFunctionInvoke("Curves.easeInQuart", () => Curves.easeInQuart);
var _curvesEaseInQuint = MXFunctionInvoke("Curves.easeInQuint", () => Curves.easeInQuint);
var _curvesEaseInExpo = MXFunctionInvoke("Curves.easeInExpo", () => Curves.easeInExpo);
var _curvesEaseInCirc = MXFunctionInvoke("Curves.easeInCirc", () => Curves.easeInCirc);
var _curvesEaseInBack = MXFunctionInvoke("Curves.easeInBack", () => Curves.easeInBack);
var _curvesEaseOut = MXFunctionInvoke("Curves.easeOut", () => Curves.easeOut);
var _curvesLinearToEaseOut = MXFunctionInvoke("Curves.linearToEaseOut", () => Curves.linearToEaseOut);
var _curvesEaseOutSine = MXFunctionInvoke("Curves.easeOutSine", () => Curves.easeOutSine);
var _curvesEaseOutQuad = MXFunctionInvoke("Curves.easeOutQuad", () => Curves.easeOutQuad);
var _curvesEaseOutCubic = MXFunctionInvoke("Curves.easeOutCubic", () => Curves.easeOutCubic);
var _curvesEaseOutQuart = MXFunctionInvoke("Curves.easeOutQuart", () => Curves.easeOutQuart);
var _curvesEaseOutQuint = MXFunctionInvoke("Curves.easeOutQuint", () => Curves.easeOutQuint);
var _curvesEaseOutExpo = MXFunctionInvoke("Curves.easeOutExpo", () => Curves.easeOutExpo);
var _curvesEaseOutCirc = MXFunctionInvoke("Curves.easeOutCirc", () => Curves.easeOutCirc);
var _curvesEaseOutBack = MXFunctionInvoke("Curves.easeOutBack", () => Curves.easeOutBack);
var _curvesEaseInOut = MXFunctionInvoke("Curves.easeInOut", () => Curves.easeInOut);
var _curvesEaseInOutSine = MXFunctionInvoke("Curves.easeInOutSine", () => Curves.easeInOutSine);
var _curvesEaseInOutQuad = MXFunctionInvoke("Curves.easeInOutQuad", () => Curves.easeInOutQuad);
var _curvesEaseInOutCubic = MXFunctionInvoke("Curves.easeInOutCubic", () => Curves.easeInOutCubic);
var _curvesEaseInOutQuart = MXFunctionInvoke("Curves.easeInOutQuart", () => Curves.easeInOutQuart);
var _curvesEaseInOutQuint = MXFunctionInvoke("Curves.easeInOutQuint", () => Curves.easeInOutQuint);
var _curvesEaseInOutExpo = MXFunctionInvoke("Curves.easeInOutExpo", () => Curves.easeInOutExpo);
var _curvesEaseInOutCirc = MXFunctionInvoke("Curves.easeInOutCirc", () => Curves.easeInOutCirc);
var _curvesEaseInOutBack = MXFunctionInvoke("Curves.easeInOutBack", () => Curves.easeInOutBack);
var _curvesFastOutSlowIn = MXFunctionInvoke("Curves.fastOutSlowIn", () => Curves.fastOutSlowIn);
var _curvesSlowMiddle = MXFunctionInvoke("Curves.slowMiddle", () => Curves.slowMiddle);
var _curvesBounceIn = MXFunctionInvoke("Curves.bounceIn", () => Curves.bounceIn);
var _curvesBounceOut = MXFunctionInvoke("Curves.bounceOut", () => Curves.bounceOut);
var _curvesBounceInOut = MXFunctionInvoke("Curves.bounceInOut", () => Curves.bounceInOut);
var _curvesElasticIn = MXFunctionInvoke("Curves.elasticIn", () => Curves.elasticIn);
var _curvesElasticOut = MXFunctionInvoke("Curves.elasticOut", () => Curves.elasticOut);
var _curvesElasticInOut = MXFunctionInvoke("Curves.elasticInOut", () => Curves.elasticInOut);

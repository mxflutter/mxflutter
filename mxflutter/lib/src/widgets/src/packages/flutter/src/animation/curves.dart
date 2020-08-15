//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_catmullRomSpline_precompute.funName] = _catmullRomSpline_precompute;
  m[_catmullRomCurve.funName] = _catmullRomCurve;
  m[_catmullRomCurve_precompute.funName] = _catmullRomCurve_precompute;
  m[_flippedCurve.funName] = _flippedCurve;
  m[_elasticInCurve.funName] = _elasticInCurve;
  m[_elasticOutCurve.funName] = _elasticOutCurve;
  m[_elasticInOutCurve.funName] = _elasticInOutCurve;
  m[_curves_linear.funName] = _curves_linear;
  m[_curves_decelerate.funName] = _curves_decelerate;
  m[_curves_fastLinearToSlowEaseIn.funName] = _curves_fastLinearToSlowEaseIn;
  m[_curves_ease.funName] = _curves_ease;
  m[_curves_easeIn.funName] = _curves_easeIn;
  m[_curves_easeInToLinear.funName] = _curves_easeInToLinear;
  m[_curves_easeInSine.funName] = _curves_easeInSine;
  m[_curves_easeInQuad.funName] = _curves_easeInQuad;
  m[_curves_easeInCubic.funName] = _curves_easeInCubic;
  m[_curves_easeInQuart.funName] = _curves_easeInQuart;
  m[_curves_easeInQuint.funName] = _curves_easeInQuint;
  m[_curves_easeInExpo.funName] = _curves_easeInExpo;
  m[_curves_easeInCirc.funName] = _curves_easeInCirc;
  m[_curves_easeInBack.funName] = _curves_easeInBack;
  m[_curves_easeOut.funName] = _curves_easeOut;
  m[_curves_linearToEaseOut.funName] = _curves_linearToEaseOut;
  m[_curves_easeOutSine.funName] = _curves_easeOutSine;
  m[_curves_easeOutQuad.funName] = _curves_easeOutQuad;
  m[_curves_easeOutCubic.funName] = _curves_easeOutCubic;
  m[_curves_easeOutQuart.funName] = _curves_easeOutQuart;
  m[_curves_easeOutQuint.funName] = _curves_easeOutQuint;
  m[_curves_easeOutExpo.funName] = _curves_easeOutExpo;
  m[_curves_easeOutCirc.funName] = _curves_easeOutCirc;
  m[_curves_easeOutBack.funName] = _curves_easeOutBack;
  m[_curves_easeInOut.funName] = _curves_easeInOut;
  m[_curves_easeInOutSine.funName] = _curves_easeInOutSine;
  m[_curves_easeInOutQuad.funName] = _curves_easeInOutQuad;
  m[_curves_easeInOutCubic.funName] = _curves_easeInOutCubic;
  m[_curves_easeInOutQuart.funName] = _curves_easeInOutQuart;
  m[_curves_easeInOutQuint.funName] = _curves_easeInOutQuint;
  m[_curves_easeInOutExpo.funName] = _curves_easeInOutExpo;
  m[_curves_easeInOutCirc.funName] = _curves_easeInOutCirc;
  m[_curves_easeInOutBack.funName] = _curves_easeInOutBack;
  m[_curves_fastOutSlowIn.funName] = _curves_fastOutSlowIn;
  m[_curves_slowMiddle.funName] = _curves_slowMiddle;
  m[_curves_bounceIn.funName] = _curves_bounceIn;
  m[_curves_bounceOut.funName] = _curves_bounceOut;
  m[_curves_bounceInOut.funName] = _curves_bounceInOut;
  m[_curves_elasticIn.funName] = _curves_elasticIn;
  m[_curves_elasticOut.funName] = _curves_elasticOut;
  m[_curves_elasticInOut.funName] = _curves_elasticInOut;
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
var _catmullRomSpline_precompute = MXFunctionInvoke(
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
var _catmullRomCurve_precompute = MXFunctionInvoke(
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
var _curves_linear = MXFunctionInvoke("Curves.linear", () => Curves.linear);
var _curves_decelerate =
    MXFunctionInvoke("Curves.decelerate", () => Curves.decelerate);
var _curves_fastLinearToSlowEaseIn = MXFunctionInvoke(
    "Curves.fastLinearToSlowEaseIn", () => Curves.fastLinearToSlowEaseIn);
var _curves_ease = MXFunctionInvoke("Curves.ease", () => Curves.ease);
var _curves_easeIn = MXFunctionInvoke("Curves.easeIn", () => Curves.easeIn);
var _curves_easeInToLinear =
    MXFunctionInvoke("Curves.easeInToLinear", () => Curves.easeInToLinear);
var _curves_easeInSine =
    MXFunctionInvoke("Curves.easeInSine", () => Curves.easeInSine);
var _curves_easeInQuad =
    MXFunctionInvoke("Curves.easeInQuad", () => Curves.easeInQuad);
var _curves_easeInCubic =
    MXFunctionInvoke("Curves.easeInCubic", () => Curves.easeInCubic);
var _curves_easeInQuart =
    MXFunctionInvoke("Curves.easeInQuart", () => Curves.easeInQuart);
var _curves_easeInQuint =
    MXFunctionInvoke("Curves.easeInQuint", () => Curves.easeInQuint);
var _curves_easeInExpo =
    MXFunctionInvoke("Curves.easeInExpo", () => Curves.easeInExpo);
var _curves_easeInCirc =
    MXFunctionInvoke("Curves.easeInCirc", () => Curves.easeInCirc);
var _curves_easeInBack =
    MXFunctionInvoke("Curves.easeInBack", () => Curves.easeInBack);
var _curves_easeOut = MXFunctionInvoke("Curves.easeOut", () => Curves.easeOut);
var _curves_linearToEaseOut =
    MXFunctionInvoke("Curves.linearToEaseOut", () => Curves.linearToEaseOut);
var _curves_easeOutSine =
    MXFunctionInvoke("Curves.easeOutSine", () => Curves.easeOutSine);
var _curves_easeOutQuad =
    MXFunctionInvoke("Curves.easeOutQuad", () => Curves.easeOutQuad);
var _curves_easeOutCubic =
    MXFunctionInvoke("Curves.easeOutCubic", () => Curves.easeOutCubic);
var _curves_easeOutQuart =
    MXFunctionInvoke("Curves.easeOutQuart", () => Curves.easeOutQuart);
var _curves_easeOutQuint =
    MXFunctionInvoke("Curves.easeOutQuint", () => Curves.easeOutQuint);
var _curves_easeOutExpo =
    MXFunctionInvoke("Curves.easeOutExpo", () => Curves.easeOutExpo);
var _curves_easeOutCirc =
    MXFunctionInvoke("Curves.easeOutCirc", () => Curves.easeOutCirc);
var _curves_easeOutBack =
    MXFunctionInvoke("Curves.easeOutBack", () => Curves.easeOutBack);
var _curves_easeInOut =
    MXFunctionInvoke("Curves.easeInOut", () => Curves.easeInOut);
var _curves_easeInOutSine =
    MXFunctionInvoke("Curves.easeInOutSine", () => Curves.easeInOutSine);
var _curves_easeInOutQuad =
    MXFunctionInvoke("Curves.easeInOutQuad", () => Curves.easeInOutQuad);
var _curves_easeInOutCubic =
    MXFunctionInvoke("Curves.easeInOutCubic", () => Curves.easeInOutCubic);
var _curves_easeInOutQuart =
    MXFunctionInvoke("Curves.easeInOutQuart", () => Curves.easeInOutQuart);
var _curves_easeInOutQuint =
    MXFunctionInvoke("Curves.easeInOutQuint", () => Curves.easeInOutQuint);
var _curves_easeInOutExpo =
    MXFunctionInvoke("Curves.easeInOutExpo", () => Curves.easeInOutExpo);
var _curves_easeInOutCirc =
    MXFunctionInvoke("Curves.easeInOutCirc", () => Curves.easeInOutCirc);
var _curves_easeInOutBack =
    MXFunctionInvoke("Curves.easeInOutBack", () => Curves.easeInOutBack);
var _curves_fastOutSlowIn =
    MXFunctionInvoke("Curves.fastOutSlowIn", () => Curves.fastOutSlowIn);
var _curves_slowMiddle =
    MXFunctionInvoke("Curves.slowMiddle", () => Curves.slowMiddle);
var _curves_bounceIn =
    MXFunctionInvoke("Curves.bounceIn", () => Curves.bounceIn);
var _curves_bounceOut =
    MXFunctionInvoke("Curves.bounceOut", () => Curves.bounceOut);
var _curves_bounceInOut =
    MXFunctionInvoke("Curves.bounceInOut", () => Curves.bounceInOut);
var _curves_elasticIn =
    MXFunctionInvoke("Curves.elasticIn", () => Curves.elasticIn);
var _curves_elasticOut =
    MXFunctionInvoke("Curves.elasticOut", () => Curves.elasticOut);
var _curves_elasticInOut =
    MXFunctionInvoke("Curves.elasticInOut", () => Curves.elasticInOut);

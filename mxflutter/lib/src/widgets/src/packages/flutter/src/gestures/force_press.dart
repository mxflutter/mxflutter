//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/force_press.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerForcePressSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_forcePressDetails.funName] = _forcePressDetails;
  m[_forcePressGestureRecognizer.funName] = _forcePressGestureRecognizer;
  return m;
}

var _forcePressDetails = MXFunctionInvoke(
  "ForcePressDetails",
  ({
    Offset globalPosition,
    Offset localPosition,
    dynamic pressure,
  }) =>
      ForcePressDetails(
    globalPosition: globalPosition,
    localPosition: localPosition,
    pressure: pressure?.toDouble(),
  ),
  [
    "globalPosition",
    "localPosition",
    "pressure",
  ],
);
var _forcePressGestureRecognizer = MXFunctionInvoke(
  "ForcePressGestureRecognizer",
  ({
    dynamic startPressure = 0.4,
    dynamic peakPressure = 0.85,

    /// MX modified begin -delete
    // dynamic interpolation = ForcePressGestureRecognizer._inverseLerp,
    /// MX modified end
    Object debugOwner,
    PointerDeviceKind kind,
  }) =>
      ForcePressGestureRecognizer(
    startPressure: startPressure?.toDouble(),
    peakPressure: peakPressure?.toDouble(),

    /// MX modified begin -delete
    // interpolation: null,
    /// MX modified end
    debugOwner: debugOwner,
    kind: kind,
  ),
  [
    "startPressure",
    "peakPressure",
    "interpolation",
    "debugOwner",
    "kind",
  ],
);

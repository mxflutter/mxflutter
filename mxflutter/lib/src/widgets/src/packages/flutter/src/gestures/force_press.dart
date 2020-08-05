//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
    (
      {
      Offset globalPosition,
      Offset localPosition,
      double pressure,
      }
    ) =>
      ForcePressDetails(
      globalPosition: globalPosition,
      localPosition: localPosition,
      pressure: pressure?.toDouble(),
    ),
);
var _forcePressGestureRecognizer = MXFunctionInvoke(
    "ForcePressGestureRecognizer",
    (
      {
      double startPressure = 0.4,
      double peakPressure = 0.85,
      dynamic interpolation,
      Object debugOwner,
      PointerDeviceKind kind,
      }
    ) =>
      ForcePressGestureRecognizer(
      startPressure: startPressure?.toDouble(),
      peakPressure: peakPressure?.toDouble(),
      interpolation: null,
      debugOwner: debugOwner,
      kind: kind,
    ),
);

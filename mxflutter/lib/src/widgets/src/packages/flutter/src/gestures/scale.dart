//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/scale.dart';
import 'dart:math' as math;
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScaleSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scaleStartDetails.funName] = _scaleStartDetails;
  m[_scaleUpdateDetails.funName] = _scaleUpdateDetails;
  m[_scaleEndDetails.funName] = _scaleEndDetails;
  m[_scaleGestureRecognizer.funName] = _scaleGestureRecognizer;
  return m;
}
var _scaleStartDetails = MXFunctionInvoke(
    "ScaleStartDetails",
    (
      {
      Offset focalPoint,
      Offset localFocalPoint,
      }
    ) =>
      ScaleStartDetails(
      focalPoint: focalPoint,
      localFocalPoint: localFocalPoint,
    ),
);
var _scaleUpdateDetails = MXFunctionInvoke(
    "ScaleUpdateDetails",
    (
      {
      Offset focalPoint,
      Offset localFocalPoint,
      dynamic scale = 1.0,
      dynamic horizontalScale = 1.0,
      dynamic verticalScale = 1.0,
      dynamic rotation = 0.0,
      }
    ) =>
      ScaleUpdateDetails(
      focalPoint: focalPoint,
      localFocalPoint: localFocalPoint,
      scale: scale?.toDouble(),
      horizontalScale: horizontalScale?.toDouble(),
      verticalScale: verticalScale?.toDouble(),
      rotation: rotation?.toDouble(),
    ),
);
var _scaleEndDetails = MXFunctionInvoke(
    "ScaleEndDetails",
    (
      {
      Velocity velocity,
      }
    ) =>
      ScaleEndDetails(
      velocity: velocity,
    ),
);
var _scaleGestureRecognizer = MXFunctionInvoke(
    "ScaleGestureRecognizer",
    (
      {
      Object debugOwner,
      PointerDeviceKind kind,
      }
    ) =>
      ScaleGestureRecognizer(
      debugOwner: debugOwner,
      kind: kind,
    ),
);

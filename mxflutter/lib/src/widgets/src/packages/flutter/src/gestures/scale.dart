//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/scale.dart';


class MXProxyScale {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[scaleStartDetails.funName] = scaleStartDetails;
    m[scaleUpdateDetails.funName] = scaleUpdateDetails;
    m[scaleEndDetails.funName] = scaleEndDetails;
    m[scaleGestureRecognizer.funName] = scaleGestureRecognizer;
    return m;
  }
  static var scaleStartDetails = MXFunctionInvoke(
      "ScaleStartDetails",
      ({
        Offset focalPoint,
        Offset localFocalPoint,
      }) =>
        ScaleStartDetails(
        focalPoint: focalPoint,
        localFocalPoint: localFocalPoint,
      ),
    );
  static var scaleUpdateDetails = MXFunctionInvoke(
      "ScaleUpdateDetails",
      ({
        Offset focalPoint,
        Offset localFocalPoint,
        dynamic scale = 1.0,
        dynamic horizontalScale = 1.0,
        dynamic verticalScale = 1.0,
        dynamic rotation = 0.0,
      }) =>
        ScaleUpdateDetails(
        focalPoint: focalPoint,
        localFocalPoint: localFocalPoint,
        scale: scale?.toDouble(),
        horizontalScale: horizontalScale?.toDouble(),
        verticalScale: verticalScale?.toDouble(),
        rotation: rotation?.toDouble(),
      ),
    );
  static var scaleEndDetails = MXFunctionInvoke(
      "ScaleEndDetails",
      ({
        Velocity velocity,
      }) =>
        ScaleEndDetails(
        velocity: velocity,
      ),
    );
  static var scaleGestureRecognizer = MXFunctionInvoke(
      "ScaleGestureRecognizer",
      ({
        Object debugOwner,
        PointerDeviceKind kind,
      }) =>
        ScaleGestureRecognizer(
        debugOwner: debugOwner,
        kind: kind,
      ),
    );
}

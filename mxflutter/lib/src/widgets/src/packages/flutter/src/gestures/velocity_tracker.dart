//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';


class MXProxyVelocityTracker {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[velocity.funName] = velocity;
    m[velocityEstimate.funName] = velocityEstimate;
    m[velocityTracker.funName] = velocityTracker;
    return m;
  }
  static var velocity = MXFunctionInvoke(
      "Velocity",
      ({
        Offset pixelsPerSecond,
      }) =>
        Velocity(
        pixelsPerSecond: pixelsPerSecond,
      ),
    );
  static var velocityEstimate = MXFunctionInvoke(
      "VelocityEstimate",
      ({
        Offset pixelsPerSecond,
        dynamic confidence,
        Duration duration,
        Offset offset,
      }) =>
        VelocityEstimate(
        pixelsPerSecond: pixelsPerSecond,
        confidence: confidence?.toDouble(),
        duration: duration,
        offset: offset,
      ),
    );
  static var velocityTracker = MXFunctionInvoke(
      "VelocityTracker",
      ({
      }) =>
        VelocityTracker(
      ),
    );
}

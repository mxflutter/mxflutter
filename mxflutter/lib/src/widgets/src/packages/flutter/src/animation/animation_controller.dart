//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/animation/listener_helpers.dart';
import 'package:flutter/scheduler.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimationControllerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[animationBehavior.funName] = animationBehavior;
  m[animationController.funName] = animationController;
  m[animationController_unbounded.funName] = animationController_unbounded;
  return m;
}
var animationBehavior = MXFunctionInvoke(
    "AnimationBehavior",
    ({Map args}) => MXAnimationBehavior.parse(args),
  );
var animationController = MXFunctionInvoke(
    "AnimationController",
    ({
      dynamic value,
      Duration duration,
      Duration reverseDuration,
      String debugLabel,
      dynamic lowerBound = 0.0,
      dynamic upperBound = 1.0,
      AnimationBehavior animationBehavior = AnimationBehavior.normal,
      TickerProvider vsync,
    }) =>
      AnimationController(
      value: value,
      duration: duration,
      reverseDuration: reverseDuration,
      debugLabel: debugLabel,
      lowerBound: lowerBound,
      upperBound: upperBound,
      animationBehavior: animationBehavior,
      vsync: vsync,
    ),
);
var animationController_unbounded = MXFunctionInvoke(
  "animationController.unbounded",
    ({
      dynamic value = 0.0,
      Duration duration,
      Duration reverseDuration,
      String debugLabel,
      TickerProvider vsync,
      AnimationBehavior animationBehavior = AnimationBehavior.preserve,
    }) =>
      AnimationController.unbounded(
      value: value,
      duration: duration,
      reverseDuration: reverseDuration,
      debugLabel: debugLabel,
      vsync: vsync,
      animationBehavior: animationBehavior,
    ),
);
class MXAnimationBehavior {
  static Map str2VMap = {
    'AnimationBehavior.normal': AnimationBehavior.normal,
    'AnimationBehavior.preserve': AnimationBehavior.preserve,
  };
  static AnimationBehavior parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/animation/listener_helpers.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimationControllerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_animationBehavior.funName] = _animationBehavior;
  m[_animationController.funName] = _animationController;
  m[_animationControllerUnbounded.funName] = _animationControllerUnbounded;
  return m;
}

var _animationBehavior = MXFunctionInvoke(
    "AnimationBehavior",
    ({String name, int index}) => MXAnimationBehavior.parse(name, index),
    ["name", "index"]);
var _animationController = MXFunctionInvoke(
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
    value: value?.toDouble(),
    duration: duration,
    reverseDuration: reverseDuration,
    debugLabel: debugLabel,
    lowerBound: lowerBound?.toDouble(),
    upperBound: upperBound?.toDouble(),
    animationBehavior: animationBehavior,
    vsync: vsync,
  ),
  [
    "value",
    "duration",
    "reverseDuration",
    "debugLabel",
    "lowerBound",
    "upperBound",
    "animationBehavior",
    "vsync",
  ],
);
var _animationControllerUnbounded = MXFunctionInvoke(
  "AnimationController.unbounded",
  ({
    dynamic value = 0.0,
    Duration duration,
    Duration reverseDuration,
    String debugLabel,
    TickerProvider vsync,
    AnimationBehavior animationBehavior = AnimationBehavior.preserve,
  }) =>
      AnimationController.unbounded(
    value: value?.toDouble(),
    duration: duration,
    reverseDuration: reverseDuration,
    debugLabel: debugLabel,
    vsync: vsync,
    animationBehavior: animationBehavior,
  ),
  [
    "value",
    "duration",
    "reverseDuration",
    "debugLabel",
    "vsync",
    "animationBehavior",
  ],
);

class MXAnimationBehavior {
  static AnimationBehavior parse(String name, int index) {
    switch (name) {
      case 'AnimationBehavior.normal':
        return AnimationBehavior.normal;
      case 'AnimationBehavior.preserve':
        return AnimationBehavior.preserve;
    }
    return null;
  }
}

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
// MX modified begin
import 'package:flutter/animation.dart';
import 'package:mxflutter/src/mx_mixin.dart';
// MX modified end

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimationControllerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_animationBehavior.funName] = _animationBehavior;
  m[_animationController.funName] = _animationController;
  m[_animationControllerUnbounded.funName] = _animationControllerUnbounded;
  // MX modified begin
  m[_animtionControllerForward.funName] = _animtionControllerForward;
  m[_animtionControllerReverse.funName] = _animtionControllerReverse;
  m[_animtionControllerRepeat.funName] = _animtionControllerRepeat;
  m[_animtionControllerDrive.funName] = _animtionControllerDrive;
  m[_animtionControllerDispose.funName] = _animtionControllerDispose;
  m[_animtionControllerStop.funName] = _animtionControllerStop;
  // MX modified end
  return m;
}

var _animationBehavior = MXFunctionInvoke(
    "AnimationBehavior",
    ({String name, int index}) => MXAnimationBehavior.parse(name, index),
    ["name", "index"]);
// MX modified begin
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
  }) {
    var tickVsync;
    if (_animationController.buildOwner.state is MXSingleTickerMixinWidgetState) {
      tickVsync = _animationController.buildOwner.state as MXSingleTickerMixinWidgetState;
    } else if (_animationController.buildOwner.state is MXTickerMixinWidgetState) {
      tickVsync = _animationController.buildOwner.state as MXTickerMixinWidgetState;
    } else if (_animationController.buildOwner.state is MXSingleTickerAndKeepAliveMixinWidgetState) {
      tickVsync = _animationController.buildOwner.state as MXSingleTickerAndKeepAliveMixinWidgetState;
    } else if (_animationController.buildOwner.state is MXTickerAndKeepAliveMixinWidgetState) {
      tickVsync = _animationController.buildOwner.state as MXTickerAndKeepAliveMixinWidgetState;
    }
    return AnimationController(
      value: value?.toDouble(),
      duration: duration,
      reverseDuration: reverseDuration,
      debugLabel: debugLabel,
      lowerBound: lowerBound?.toDouble(),
      upperBound: upperBound?.toDouble(),
      animationBehavior: animationBehavior,
      vsync: tickVsync
    );
  },
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
// MX modified end
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

// MX modified begin
var _animtionControllerForward = MXFunctionInvoke(
  "AnimationController#forward",
  ({
    AnimationController mirrorObj,
  }) =>
      mirrorObj.forward(),
  [
    "mirrorObj",
  ],
);

var _animtionControllerRepeat = MXFunctionInvoke(
  "AnimationController#repeat",
  ({
    AnimationController mirrorObj,
  }) =>
      mirrorObj.repeat(),
  [
    "mirrorObj",
  ],
);

var _animtionControllerReverse = MXFunctionInvoke(
  "AnimationController#reverse",
  ({
    AnimationController mirrorObj,
  }) =>
      mirrorObj.reverse(),
  [
    "mirrorObj",
  ],
);

var _animtionControllerDrive = MXFunctionInvoke(
  "AnimationController#drive",
  ({
    AnimationController mirrorObj,
    Animatable animatable,
  }) =>
      mirrorObj.drive(animatable),
  [
    "mirrorObj",
    "animatable",
  ],
);

var _animtionControllerDispose = MXFunctionInvoke(
  "AnimationController#dispose",
  ({
    AnimationController mirrorObj,
  }) {
    // 因为在MXJSWidgetState的dispose方法中，框架会主动调用该方法。因此加个判断，避免js侧再调用该方法时，会出现调用null方法
    if (mirrorObj != null) {
      mirrorObj.dispose();
    }
  },
  [
    "mirrorObj",
  ],
);

var _animtionControllerStop = MXFunctionInvoke(
  "AnimationController#stop",
  ({
    AnimationController mirrorObj,
  }) {
    // 因为在MXJSWidgetState的dispose方法中，框架会主动调用该方法。因此加个判断，避免js侧再调用该方法时，会出现调用null方法
    if (mirrorObj != null) {
      mirrorObj.stop();
    }
  },
  [
    "mirrorObj",
  ],
);
// MX modified end

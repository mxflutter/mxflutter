//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';


class MXProxyAnimationController {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[animationBehavior.funName] = animationBehavior;
    m[animationController.funName] = animationController;
    m[animationController_unbounded.funName] = animationController_unbounded;
    return m;
  }
  static var animationBehavior = MXFunctionInvoke(
      "AnimationBehavior",
      ({Map args}) => MXAnimationBehavior.parse(args),
  );
  static var animationController = MXFunctionInvoke(
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
    );
  static var animationController_unbounded = MXFunctionInvoke(
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
        value: value?.toDouble(),
        duration: duration,
        reverseDuration: reverseDuration,
        debugLabel: debugLabel,
        vsync: vsync,
        animationBehavior: animationBehavior,
      ),
    );
}
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

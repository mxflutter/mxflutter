//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/listener_helpers.dart';
import 'package:flutter/src/animation/animations.dart';
import 'package:flutter/src/animation/tween.dart';
import 'package:flutter/src/animation/animation.dart';


class MXProxyListenerHelpers {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[alwaysStoppedAnimation.funName] = alwaysStoppedAnimation;
    m[proxyAnimation.funName] = proxyAnimation;
    m[reverseAnimation.funName] = reverseAnimation;
    m[curvedAnimation.funName] = curvedAnimation;
    m[trainHoppingAnimation.funName] = trainHoppingAnimation;
    m[animationMean.funName] = animationMean;
    m[animationMax.funName] = animationMax;
    m[animationMin.funName] = animationMin;
    m[tween.funName] = tween;
    m[reverseTween.funName] = reverseTween;
    m[colorTween.funName] = colorTween;
    m[sizeTween.funName] = sizeTween;
    m[rectTween.funName] = rectTween;
    m[intTween.funName] = intTween;
    m[stepTween.funName] = stepTween;
    m[constantTween.funName] = constantTween;
    m[curveTween.funName] = curveTween;
    m[animationStatus.funName] = animationStatus;
    return m;
  }
  static var alwaysStoppedAnimation = MXFunctionInvoke(
      "AlwaysStoppedAnimation",
      ({
        dynamic value,
      }) =>
        AlwaysStoppedAnimation(
        value,
      ),
    );
  static var proxyAnimation = MXFunctionInvoke(
      "ProxyAnimation",
      ({
        Animation<double> animation,
      }) =>
        ProxyAnimation(
        animation,
      ),
    );
  static var reverseAnimation = MXFunctionInvoke(
      "ReverseAnimation",
      ({
        Animation<double> parent,
      }) =>
        ReverseAnimation(
        parent,
      ),
    );
  static var curvedAnimation = MXFunctionInvoke(
      "CurvedAnimation",
      ({
        Animation<double> parent,
        Curve curve,
        Curve reverseCurve,
      }) =>
        CurvedAnimation(
        parent: parent,
        curve: curve,
        reverseCurve: reverseCurve,
      ),
    );
  static var trainHoppingAnimation = MXFunctionInvoke(
      "TrainHoppingAnimation",
      ({
        Animation<double> _currentTrain,
        Animation<double> _nextTrain,
        dynamic onSwitchedTrain,
      }) =>
        TrainHoppingAnimation(
        _currentTrain,
        _nextTrain,
        onSwitchedTrain: createVoidCallbackClosure(trainHoppingAnimation.buildOwner, onSwitchedTrain),
      ),
    );
  static var animationMean = MXFunctionInvoke(
      "AnimationMean",
      ({
        Animation<double> left,
        Animation<double> right,
      }) =>
        AnimationMean(
        left: left,
        right: right,
      ),
    );
  static var animationMax = MXFunctionInvoke(
      "AnimationMax",
      ({
        Animation<AnimationMax::T> first,
        Animation<AnimationMax::T> next,
      }) =>
        AnimationMax(
        first,
        next,
      ),
    );
  static var animationMin = MXFunctionInvoke(
      "AnimationMin",
      ({
        Animation<AnimationMin::T> first,
        Animation<AnimationMin::T> next,
      }) =>
        AnimationMin(
        first,
        next,
      ),
    );
  static var tween = MXFunctionInvoke(
      "Tween",
      ({
        dynamic begin,
        dynamic end,
      }) =>
        Tween(
        begin: begin,
        end: end,
      ),
    );
  static var reverseTween = MXFunctionInvoke(
      "ReverseTween",
      ({
        Tween<ReverseTween::T> parent,
      }) =>
        ReverseTween(
        parent,
      ),
    );
  static var colorTween = MXFunctionInvoke(
      "ColorTween",
      ({
        Color begin,
        Color end,
      }) =>
        ColorTween(
        begin: begin,
        end: end,
      ),
    );
  static var sizeTween = MXFunctionInvoke(
      "SizeTween",
      ({
        Size begin,
        Size end,
      }) =>
        SizeTween(
        begin: begin,
        end: end,
      ),
    );
  static var rectTween = MXFunctionInvoke(
      "RectTween",
      ({
        Rect begin,
        Rect end,
      }) =>
        RectTween(
        begin: begin,
        end: end,
      ),
    );
  static var intTween = MXFunctionInvoke(
      "IntTween",
      ({
        int begin,
        int end,
      }) =>
        IntTween(
        begin: begin,
        end: end,
      ),
    );
  static var stepTween = MXFunctionInvoke(
      "StepTween",
      ({
        int begin,
        int end,
      }) =>
        StepTween(
        begin: begin,
        end: end,
      ),
    );
  static var constantTween = MXFunctionInvoke(
      "ConstantTween",
      ({
        dynamic value,
      }) =>
        ConstantTween(
        value,
      ),
    );
  static var curveTween = MXFunctionInvoke(
      "CurveTween",
      ({
        Curve curve,
      }) =>
        CurveTween(
        curve: curve,
      ),
    );
  static var animationStatus = MXFunctionInvoke(
      "AnimationStatus",
      ({Map args}) => MXAnimationStatus.parse(args),
  );
}
class MXAnimationStatus {
  static Map str2VMap = {
    'AnimationStatus.dismissed': AnimationStatus.dismissed,
    'AnimationStatus.forward': AnimationStatus.forward,
    'AnimationStatus.reverse': AnimationStatus.reverse,
    'AnimationStatus.completed': AnimationStatus.completed,
  };
  static AnimationStatus parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

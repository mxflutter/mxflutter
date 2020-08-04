//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/listener_helpers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/animations.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/animation/listener_helpers.dart';
import 'package:flutter/src/animation/tween.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/animations.dart';
import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/tween.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerListenerHelpersSeries() {
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
var alwaysStoppedAnimation = MXFunctionInvoke(
    "AlwaysStoppedAnimation",
    ({
      dynamic value,
    }) =>
      AlwaysStoppedAnimation(
      value,
    ),
);
var proxyAnimation = MXFunctionInvoke(
    "ProxyAnimation",
    ({
      Animation<double> animation,
    }) =>
      ProxyAnimation(
      animation,
    ),
);
var reverseAnimation = MXFunctionInvoke(
    "ReverseAnimation",
    ({
      Animation<double> parent,
    }) =>
      ReverseAnimation(
      parent,
    ),
);
var curvedAnimation = MXFunctionInvoke(
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
var trainHoppingAnimation = MXFunctionInvoke(
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
var animationMean = MXFunctionInvoke(
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
var animationMax = MXFunctionInvoke(
    "AnimationMax",
    ({
      dynamic first,
      dynamic next,
    }) =>
      AnimationMax(
      first,
      next,
    ),
);
var animationMin = MXFunctionInvoke(
    "AnimationMin",
    ({
      dynamic first,
      dynamic next,
    }) =>
      AnimationMin(
      first,
      next,
    ),
);
var tween = MXFunctionInvoke(
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
var reverseTween = MXFunctionInvoke(
    "ReverseTween",
    ({
      dynamic parent,
    }) =>
      ReverseTween(
      parent,
    ),
);
var colorTween = MXFunctionInvoke(
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
var sizeTween = MXFunctionInvoke(
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
var rectTween = MXFunctionInvoke(
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
var intTween = MXFunctionInvoke(
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
var stepTween = MXFunctionInvoke(
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
var constantTween = MXFunctionInvoke(
    "ConstantTween",
    ({
      dynamic value,
    }) =>
      ConstantTween(
      value,
    ),
);
var curveTween = MXFunctionInvoke(
    "CurveTween",
    ({
      Curve curve,
    }) =>
      CurveTween(
      curve: curve,
    ),
);
var animationStatus = MXFunctionInvoke(
    "AnimationStatus",
    ({Map args}) => MXAnimationStatus.parse(args),
  );
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

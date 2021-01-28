//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/animations.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/animation/listener_helpers.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimationsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_alwaysStoppedAnimation.funName] = _alwaysStoppedAnimation;
  m[_proxyAnimation.funName] = _proxyAnimation;
  m[_reverseAnimation.funName] = _reverseAnimation;
  m[_curvedAnimation.funName] = _curvedAnimation;
  m[_trainHoppingAnimation.funName] = _trainHoppingAnimation;
  m[_animationMean.funName] = _animationMean;
  m[_animationMax.funName] = _animationMax;
  m[_animationMin.funName] = _animationMin;
  return m;
}

var _alwaysStoppedAnimation = MXFunctionInvoke(
  "AlwaysStoppedAnimation",
  ({
    dynamic value,
  }) =>
      AlwaysStoppedAnimation(
    value,
  ),
  [
    "value",
  ],
);
var _proxyAnimation = MXFunctionInvoke(
  "ProxyAnimation",
  ({
    Animation<double> animation,
  }) =>
      ProxyAnimation(
    animation,
  ),
  [
    "animation",
  ],
);
var _reverseAnimation = MXFunctionInvoke(
  "ReverseAnimation",
  ({
    Animation<double> parent,
  }) =>
      ReverseAnimation(
    parent,
  ),
  [
    "parent",
  ],
);
var _curvedAnimation = MXFunctionInvoke(
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
  [
    "parent",
    "curve",
    "reverseCurve",
  ],
);
var _trainHoppingAnimation = MXFunctionInvoke(
  "TrainHoppingAnimation",
  ({
    Animation<double> currentTrain,
    Animation<double> nextTrain,
    dynamic onSwitchedTrain,
  }) =>
      TrainHoppingAnimation(
    currentTrain,
    nextTrain,
    onSwitchedTrain: createVoidCallbackClosure(_trainHoppingAnimation.buildOwner, onSwitchedTrain),
  ),
  [
    "currentTrain",
    "nextTrain",
    "onSwitchedTrain",
  ],
);
var _animationMean = MXFunctionInvoke(
  "AnimationMean",
  ({
    Animation<double> left,
    Animation<double> right,
  }) =>
      AnimationMean(
    left: left,
    right: right,
  ),
  [
    "left",
    "right",
  ],
);
var _animationMax = MXFunctionInvoke(
  "AnimationMax",
  ({
    Animation<num> first,
    Animation<num> next,
  }) =>
      AnimationMax(
    first,
    next,
  ),
  [
    "first",
    "next",
  ],
);
var _animationMin = MXFunctionInvoke(
  "AnimationMin",
  ({
    Animation<num> first,
    Animation<num> next,
  }) =>
      AnimationMin(
    first,
    next,
  ),
  [
    "first",
    "next",
  ],
);

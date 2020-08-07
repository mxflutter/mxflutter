//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/listener_helpers.dart';
import 'package:flutter/foundation.dart' ;
import 'package:flutter/src/animation/animation.dart' ;
import 'package:flutter/src/animation/animations.dart';
import 'dart:math' as math;
import 'package:flutter/src/animation/curves.dart' ;
import 'package:flutter/src/animation/listener_helpers.dart' ;
import 'package:flutter/src/animation/tween.dart';
import 'dart:ui' ;
import 'package:flutter/src/animation/animations.dart' ;
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/tween.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerListenerHelpersSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_alwaysStoppedAnimation.funName] = _alwaysStoppedAnimation;
  m[_proxyAnimation.funName] = _proxyAnimation;
  m[_reverseAnimation.funName] = _reverseAnimation;
  m[_curvedAnimation.funName] = _curvedAnimation;
  m[_trainHoppingAnimation.funName] = _trainHoppingAnimation;
  m[_animationMean.funName] = _animationMean;
  m[_animationMax.funName] = _animationMax;
  m[_animationMin.funName] = _animationMin;
  m[_tween.funName] = _tween;
  m[_reverseTween.funName] = _reverseTween;
  m[_colorTween.funName] = _colorTween;
  m[_sizeTween.funName] = _sizeTween;
  m[_rectTween.funName] = _rectTween;
  m[_intTween.funName] = _intTween;
  m[_stepTween.funName] = _stepTween;
  m[_constantTween.funName] = _constantTween;
  m[_curveTween.funName] = _curveTween;
  m[_animationStatus.funName] = _animationStatus;
  return m;
}
var _alwaysStoppedAnimation = MXFunctionInvoke(
    "AlwaysStoppedAnimation",
    (
      {
      dynamic value,
      }
    ) =>
      AlwaysStoppedAnimation(
      value,
    ),
);
var _proxyAnimation = MXFunctionInvoke(
    "ProxyAnimation",
    (
      {
      Animation<double> animation,
      }
    ) =>
      ProxyAnimation(
      animation,
    ),
);
var _reverseAnimation = MXFunctionInvoke(
    "ReverseAnimation",
    (
      {
      Animation<double> parent,
      }
    ) =>
      ReverseAnimation(
      parent,
    ),
);
var _curvedAnimation = MXFunctionInvoke(
    "CurvedAnimation",
    (
      {
      Animation<double> parent,
      Curve curve,
      Curve reverseCurve,
      }
    ) =>
      CurvedAnimation(
      parent: parent,
      curve: curve,
      reverseCurve: reverseCurve,
    ),
);
var _trainHoppingAnimation = MXFunctionInvoke(
    "TrainHoppingAnimation",
    (
      {
      Animation<double> currentTrain,
      Animation<double> nextTrain,
      dynamic onSwitchedTrain,
      }
    ) =>
      TrainHoppingAnimation(
      currentTrain,
      nextTrain,
      onSwitchedTrain: createVoidCallbackClosure(_trainHoppingAnimation.buildOwner, onSwitchedTrain),
    ),
);
var _animationMean = MXFunctionInvoke(
    "AnimationMean",
    (
      {
      Animation<double> left,
      Animation<double> right,
      }
    ) =>
      AnimationMean(
      left: left,
      right: right,
    ),
);
var _animationMax = MXFunctionInvoke(
    "AnimationMax",
    (
      {
      Animation<num> first,
      Animation<num> next,
      }
    ) =>
      AnimationMax(
      first,
      next,
    ),
);
var _animationMin = MXFunctionInvoke(
    "AnimationMin",
    (
      {
      Animation<num> first,
      Animation<num> next,
      }
    ) =>
      AnimationMin(
      first,
      next,
    ),
);
var _tween = MXFunctionInvoke(
    "Tween",
    (
      {
      dynamic begin,
      dynamic end,
      }
    ) =>
      Tween(
      begin: begin,
      end: end,
    ),
);
var _reverseTween = MXFunctionInvoke(
    "ReverseTween",
    (
      {
      Tween<dynamic> parent,
      }
    ) =>
      ReverseTween(
      parent,
    ),
);
var _colorTween = MXFunctionInvoke(
    "ColorTween",
    (
      {
      Color begin,
      Color end,
      }
    ) =>
      ColorTween(
      begin: begin,
      end: end,
    ),
);
var _sizeTween = MXFunctionInvoke(
    "SizeTween",
    (
      {
      Size begin,
      Size end,
      }
    ) =>
      SizeTween(
      begin: begin,
      end: end,
    ),
);
var _rectTween = MXFunctionInvoke(
    "RectTween",
    (
      {
      Rect begin,
      Rect end,
      }
    ) =>
      RectTween(
      begin: begin,
      end: end,
    ),
);
var _intTween = MXFunctionInvoke(
    "IntTween",
    (
      {
      int begin,
      int end,
      }
    ) =>
      IntTween(
      begin: begin,
      end: end,
    ),
);
var _stepTween = MXFunctionInvoke(
    "StepTween",
    (
      {
      int begin,
      int end,
      }
    ) =>
      StepTween(
      begin: begin,
      end: end,
    ),
);
var _constantTween = MXFunctionInvoke(
    "ConstantTween",
    (
      {
      dynamic value,
      }
    ) =>
      ConstantTween(
      value,
    ),
);
var _curveTween = MXFunctionInvoke(
    "CurveTween",
    (
      {
      Curve curve,
      }
    ) =>
      CurveTween(
      curve: curve,
    ),
);
var _animationStatus = MXFunctionInvoke(
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

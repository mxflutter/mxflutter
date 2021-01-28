//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/tween.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/animations.dart';
import 'package:flutter/src/animation/curves.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTweenSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tween.funName] = _tween;
  m[_reverseTween.funName] = _reverseTween;
  m[_colorTween.funName] = _colorTween;
  m[_sizeTween.funName] = _sizeTween;
  m[_rectTween.funName] = _rectTween;
  m[_intTween.funName] = _intTween;
  m[_stepTween.funName] = _stepTween;
  m[_constantTween.funName] = _constantTween;
  m[_curveTween.funName] = _curveTween;
  return m;
}

var _tween = MXFunctionInvoke(
  "Tween",
  ({
    dynamic begin,
    dynamic end,
  }) =>
      Tween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _reverseTween = MXFunctionInvoke(
  "ReverseTween",
  ({
    Tween<dynamic> parent,
  }) =>
      ReverseTween(
    parent,
  ),
  [
    "parent",
  ],
);
var _colorTween = MXFunctionInvoke(
  "ColorTween",
  ({
    Color begin,
    Color end,
  }) =>
      ColorTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _sizeTween = MXFunctionInvoke(
  "SizeTween",
  ({
    Size begin,
    Size end,
  }) =>
      SizeTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _rectTween = MXFunctionInvoke(
  "RectTween",
  ({
    Rect begin,
    Rect end,
  }) =>
      RectTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _intTween = MXFunctionInvoke(
  "IntTween",
  ({
    int begin,
    int end,
  }) =>
      IntTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _stepTween = MXFunctionInvoke(
  "StepTween",
  ({
    int begin,
    int end,
  }) =>
      StepTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _constantTween = MXFunctionInvoke(
  "ConstantTween",
  ({
    dynamic value,
  }) =>
      ConstantTween(
    value,
  ),
  [
    "value",
  ],
);
var _curveTween = MXFunctionInvoke(
  "CurveTween",
  ({
    Curve curve,
  }) =>
      CurveTween(
    curve: curve,
  ),
  [
    "curve",
  ],
);

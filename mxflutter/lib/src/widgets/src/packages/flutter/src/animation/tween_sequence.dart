//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/tween_sequence.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/tween.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTweenSequenceSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tweenSequence.funName] = _tweenSequence;
  m[_flippedTweenSequence.funName] = _flippedTweenSequence;
  m[_tweenSequenceItem.funName] = _tweenSequenceItem;
  return m;
}

var _tweenSequence = MXFunctionInvoke(
  "TweenSequence",
  ({
    dynamic items,
  }) =>
      TweenSequence(
    toListT<TweenSequenceItem<dynamic>>(items),
  ),
  [
    "items",
  ],
);
var _flippedTweenSequence = MXFunctionInvoke(
  "FlippedTweenSequence",
  ({
    dynamic items,
  }) =>
      FlippedTweenSequence(
    toListT<TweenSequenceItem<double>>(items),
  ),
  [
    "items",
  ],
);
var _tweenSequenceItem = MXFunctionInvoke(
  "TweenSequenceItem",
  ({
    Animatable<dynamic> tween,
    dynamic weight,
  }) =>
      TweenSequenceItem(
    tween: tween,
    weight: weight?.toDouble(),
  ),
  [
    "tween",
    "weight",
  ],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/tween_sequence.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/tween.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTweenSequenceSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[tweenSequence.funName] = tweenSequence;
  m[flippedTweenSequence.funName] = flippedTweenSequence;
  m[tweenSequenceItem.funName] = tweenSequenceItem;
  return m;
}
var tweenSequence = MXFunctionInvoke(
    "TweenSequence",
    ({
      dynamic items,
    }) =>
      TweenSequence(
      items,
    ),
);
var flippedTweenSequence = MXFunctionInvoke(
    "FlippedTweenSequence",
    ({
      List<TweenSequenceItem<double>> items,
    }) =>
      FlippedTweenSequence(
      items,
    ),
);
var tweenSequenceItem = MXFunctionInvoke(
    "TweenSequenceItem",
    ({
      dynamic tween,
      dynamic weight,
    }) =>
      TweenSequenceItem(
      tween: tween,
      weight: weight,
    ),
);

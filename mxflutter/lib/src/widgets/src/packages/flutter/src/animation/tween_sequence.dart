//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/tween_sequence.dart';


class MXProxyTweenSequence {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[tweenSequence.funName] = tweenSequence;
    m[flippedTweenSequence.funName] = flippedTweenSequence;
    m[tweenSequenceItem.funName] = tweenSequenceItem;
    return m;
  }
  static var tweenSequence = MXFunctionInvoke(
      "TweenSequence",
      ({
        List<TweenSequenceItem<TweenSequence::T>> items,
      }) =>
        TweenSequence(
        items,
      ),
    );
  static var flippedTweenSequence = MXFunctionInvoke(
      "FlippedTweenSequence",
      ({
        List<TweenSequenceItem<double>> items,
      }) =>
        FlippedTweenSequence(
        items,
      ),
    );
  static var tweenSequenceItem = MXFunctionInvoke(
      "TweenSequenceItem",
      ({
        Animatable<TweenSequenceItem::T> tween,
        dynamic weight,
      }) =>
        TweenSequenceItem(
        tween: tween,
        weight: weight?.toDouble(),
      ),
    );
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/tween.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_animationStatus.funName] = _animationStatus;
  return m;
}

var _animationStatus = MXFunctionInvoke(
  "AnimationStatus",
  ({String name, int index}) => MXAnimationStatus.parse(name, index),
);

class MXAnimationStatus {
  static AnimationStatus parse(String name, int index) {
    switch (name) {
      case 'AnimationStatus.dismissed':
        return AnimationStatus.dismissed;
      case 'AnimationStatus.forward':
        return AnimationStatus.forward;
      case 'AnimationStatus.reverse':
        return AnimationStatus.reverse;
      case 'AnimationStatus.completed':
        return AnimationStatus.completed;
    }
    return null;
  }
}

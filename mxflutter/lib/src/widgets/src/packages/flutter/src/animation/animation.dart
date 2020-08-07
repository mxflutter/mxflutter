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

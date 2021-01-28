//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/tween_animation_builder.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
import 'package:flutter/src/widgets/value_listenable_builder.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTweenAnimationBuilderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tweenAnimationBuilder.funName] = _tweenAnimationBuilder;
  return m;
}

var _tweenAnimationBuilder = MXFunctionInvoke(
  "TweenAnimationBuilder",
  ({
    Key key,
    Tween<dynamic> tween,
    Duration duration,
    Curve curve = Curves.linear,
    dynamic builder,
    dynamic onEnd,
    Widget child,
  }) =>
      TweenAnimationBuilder(
    key: key,
    tween: tween,
    duration: duration,
    curve: curve,
    builder: null,
    onEnd: createVoidCallbackClosure(_tweenAnimationBuilder.buildOwner, onEnd),
    child: child,
  ),
  [
    "key",
    "tween",
    "duration",
    "curve",
    "builder",
    "onEnd",
    "child",
  ],
);

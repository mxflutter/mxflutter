//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[tweenAnimationBuilder.funName] = tweenAnimationBuilder;
  return m;
}
var tweenAnimationBuilder = MXFunctionInvoke(
    "TweenAnimationBuilder",
    ({
      Key key,
      dynamic tween,
      Duration duration,
      Curve curve,
      dynamic builder,
      dynamic onEnd,
      Widget child,
    }) =>
      TweenAnimationBuilder(
      key: key,
      tween: tween,
      duration: duration,
      curve: curve,
      builder: builder,
      onEnd: createVoidCallbackClosure(tweenAnimationBuilder.buildOwner, onEnd),
      child: child,
    ),
);

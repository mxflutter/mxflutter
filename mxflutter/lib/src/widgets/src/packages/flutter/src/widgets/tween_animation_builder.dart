//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/tween_animation_builder.dart';


class MXProxyTweenAnimationBuilder {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[tweenAnimationBuilder.funName] = tweenAnimationBuilder;
    return m;
  }
  static var tweenAnimationBuilder = MXFunctionInvoke(
      "TweenAnimationBuilder",
      ({
        Key key,
        Tween<TweenAnimationBuilder::T> tween,
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
}

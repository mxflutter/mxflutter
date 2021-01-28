//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/animated_cross_fade.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/animated_size.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimatedCrossFadeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_crossFadeState.funName] = _crossFadeState;
  m[_animatedCrossFade.funName] = _animatedCrossFade;
  return m;
}

var _crossFadeState = MXFunctionInvoke(
    "CrossFadeState", ({String name, int index}) => MXCrossFadeState.parse(name, index), ["name", "index"]);
var _animatedCrossFade = MXFunctionInvoke(
  "AnimatedCrossFade",
  ({
    Key key,
    Widget firstChild,
    Widget secondChild,
    Curve firstCurve = Curves.linear,
    Curve secondCurve = Curves.linear,
    Curve sizeCurve = Curves.linear,
    AlignmentGeometry alignment = Alignment.topCenter,
    CrossFadeState crossFadeState,
    Duration duration,
    Duration reverseDuration,
    dynamic layoutBuilder = AnimatedCrossFade.defaultLayoutBuilder,
  }) =>
      AnimatedCrossFade(
    key: key,
    firstChild: firstChild,
    secondChild: secondChild,
    firstCurve: firstCurve,
    secondCurve: secondCurve,
    sizeCurve: sizeCurve,
    alignment: alignment,
    crossFadeState: crossFadeState,
    duration: duration,
    reverseDuration: reverseDuration,

    ///MX modifyed begin
    layoutBuilder: layoutBuilder,

    ///MX modifyed end
  ),
  [
    "key",
    "firstChild",
    "secondChild",
    "firstCurve",
    "secondCurve",
    "sizeCurve",
    "alignment",
    "crossFadeState",
    "duration",
    "reverseDuration",
    "layoutBuilder",
  ],
);

class MXCrossFadeState {
  static CrossFadeState parse(String name, int index) {
    switch (name) {
      case 'CrossFadeState.showFirst':
        return CrossFadeState.showFirst;
      case 'CrossFadeState.showSecond':
        return CrossFadeState.showSecond;
    }
    return null;
  }
}

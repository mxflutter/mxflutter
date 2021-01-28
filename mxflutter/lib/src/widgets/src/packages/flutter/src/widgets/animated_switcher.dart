//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/animated_switcher.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimatedSwitcherSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_animatedSwitcher.funName] = _animatedSwitcher;
  return m;
}

var _animatedSwitcher = MXFunctionInvoke(
  "AnimatedSwitcher",
  ({
    Key key,
    Widget child,
    Duration duration,
    Duration reverseDuration,
    Curve switchInCurve = Curves.linear,
    Curve switchOutCurve = Curves.linear,
    dynamic transitionBuilder = AnimatedSwitcher.defaultTransitionBuilder,
    dynamic layoutBuilder = AnimatedSwitcher.defaultLayoutBuilder,
  }) =>
      AnimatedSwitcher(
    key: key,
    child: child,
    duration: duration,
    reverseDuration: reverseDuration,
    switchInCurve: switchInCurve,
    switchOutCurve: switchOutCurve,
    transitionBuilder: null,
    layoutBuilder: null,
  ),
  [
    "key",
    "child",
    "duration",
    "reverseDuration",
    "switchInCurve",
    "switchOutCurve",
    "transitionBuilder",
    "layoutBuilder",
  ],
);

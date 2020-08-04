//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/animated_switcher.dart';


class MXProxyAnimatedSwitcher {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[animatedSwitcher.funName] = animatedSwitcher;
    return m;
  }
  static var animatedSwitcher = MXFunctionInvoke(
      "AnimatedSwitcher",
      ({
        Key key,
        Widget child,
        Duration duration,
        Duration reverseDuration,
        Curve switchInCurve,
        Curve switchOutCurve,
        dynamic transitionBuilder,
        dynamic layoutBuilder,
      }) =>
        AnimatedSwitcher(
        key: key,
        child: child,
        duration: duration,
        reverseDuration: reverseDuration,
        switchInCurve: switchInCurve,
        switchOutCurve: switchOutCurve,
        transitionBuilder: transitionBuilder,
        layoutBuilder: layoutBuilder,
      ),
    );
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/animated_switcher.dart';
import 'package:flutter/animation.dart' ;
import 'package:flutter/foundation.dart' ;
import 'package:flutter/src/widgets/basic.dart' ;
import 'package:flutter/src/widgets/framework.dart' ;
import 'package:flutter/src/widgets/ticker_provider.dart' ;
import 'package:flutter/src/widgets/transitions.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimatedSwitcherSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_animatedSwitcher.funName] = _animatedSwitcher;
  return m;
}
var _animatedSwitcher = MXFunctionInvoke(
    "AnimatedSwitcher",
    (
      {
      Key key,
      Widget child,
      Duration duration,
      Duration reverseDuration,
      Curve switchInCurve,
      Curve switchOutCurve,
      dynamic transitionBuilder,
      dynamic layoutBuilder,
      }
    ) =>
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
);

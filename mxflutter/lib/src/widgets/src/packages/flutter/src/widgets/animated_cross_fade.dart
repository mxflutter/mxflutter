//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[crossFadeState.funName] = crossFadeState;
  m[animatedCrossFade.funName] = animatedCrossFade;
  return m;
}
var crossFadeState = MXFunctionInvoke(
    "CrossFadeState",
    ({Map args}) => MXCrossFadeState.parse(args),
  );
var animatedCrossFade = MXFunctionInvoke(
    "AnimatedCrossFade",
    ({
      Key key,
      Widget firstChild,
      Widget secondChild,
      Curve firstCurve,
      Curve secondCurve,
      Curve sizeCurve,
      AlignmentGeometry alignment,
      CrossFadeState crossFadeState,
      Duration duration,
      Duration reverseDuration,
      dynamic layoutBuilder,
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
      layoutBuilder: layoutBuilder,
    ),
);
class MXCrossFadeState {
  static Map str2VMap = {
    'CrossFadeState.showFirst': CrossFadeState.showFirst,
    'CrossFadeState.showSecond': CrossFadeState.showSecond,
  };
  static CrossFadeState parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

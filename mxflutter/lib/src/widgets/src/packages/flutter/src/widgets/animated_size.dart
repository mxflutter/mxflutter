//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/animated_size.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimatedSizeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_animatedSize.funName] = _animatedSize;
  return m;
}

var _animatedSize = MXFunctionInvoke(
  "AnimatedSize",
  ({
    Key key,
    Widget child,
    AlignmentGeometry alignment = Alignment.center,
    Curve curve = Curves.linear,
    Duration duration,
    Duration reverseDuration,
    TickerProvider vsync,
  }) =>
      AnimatedSize(
    key: key,
    child: child,
    alignment: alignment,
    curve: curve,
    duration: duration,
    reverseDuration: reverseDuration,
    // MX modified begin
    vsync: _animatedSize.buildOwner.state,
    // MX modified end
  ),
  [
    "key",
    "child",
    "alignment",
    "curve",
    "duration",
    "reverseDuration",
    "vsync",
  ],
);

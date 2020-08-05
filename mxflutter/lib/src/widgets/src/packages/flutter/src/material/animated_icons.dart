//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/animated_icons.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/widgets.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimatedIconsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_animatedIcon.funName] = _animatedIcon;
  return m;
}
var _animatedIcon = MXFunctionInvoke(
    "AnimatedIcon",
    (
      {
      Key key,
      AnimatedIconData icon,
      Animation<double> progress,
      Color color,
      double size,
      String semanticLabel,
      TextDirection textDirection,
      }
    ) =>
      AnimatedIcon(
      key: key,
      icon: icon,
      progress: progress,
      color: color,
      size: size?.toDouble(),
      semanticLabel: semanticLabel,
      textDirection: textDirection,
    ),
);

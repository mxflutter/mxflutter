//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/animated_icons.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'dart:ui' ;
import 'package:flutter/widgets.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimatedIconsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_animatedIcon.funName] = _animatedIcon;
  m[_animatedIcons.funName] = _animatedIcons;
  m[_animatedIconData.funName] = _animatedIconData;
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
      dynamic size,
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
var _animatedIcons = MXFunctionInvoke(
    "AnimatedIcons",
    (
    ) =>
      AnimatedIcons(
    ),
);
var _animatedIconData = MXFunctionInvoke(
    "AnimatedIconData",
    (
    ) =>
      AnimatedIconData(
    ),
);

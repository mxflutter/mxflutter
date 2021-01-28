//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scrollbar.dart';
import 'dart:math' as math;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollbarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollbarPainter.funName] = _scrollbarPainter;
  return m;
}

var _scrollbarPainter = MXFunctionInvoke(
  "ScrollbarPainter",
  ({
    Color color,
    TextDirection textDirection,
    dynamic thickness,
    Animation<double> fadeoutOpacityAnimation,
    EdgeInsets padding = EdgeInsets.zero,
    dynamic mainAxisMargin = 0.0,
    dynamic crossAxisMargin = 0.0,
    Radius radius,
    dynamic minLength = 18.0,
    dynamic minOverscrollLength,
  }) =>
      ScrollbarPainter(
    color: color,
    textDirection: textDirection,
    thickness: thickness?.toDouble(),
    fadeoutOpacityAnimation: fadeoutOpacityAnimation,
    padding: padding,
    mainAxisMargin: mainAxisMargin?.toDouble(),
    crossAxisMargin: crossAxisMargin?.toDouble(),
    radius: radius,
    minLength: minLength?.toDouble(),
    minOverscrollLength: minOverscrollLength?.toDouble(),
  ),
  [
    "color",
    "textDirection",
    "thickness",
    "fadeoutOpacityAnimation",
    "padding",
    "mainAxisMargin",
    "crossAxisMargin",
    "radius",
    "minLength",
    "minOverscrollLength",
  ],
);

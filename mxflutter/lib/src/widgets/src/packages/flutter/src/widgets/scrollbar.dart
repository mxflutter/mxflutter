//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/scrollbar.dart';


class MXProxyScrollbar {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[scrollbarPainter.funName] = scrollbarPainter;
    return m;
  }
  static var scrollbarPainter = MXFunctionInvoke(
      "ScrollbarPainter",
      ({
        Color color,
        TextDirection textDirection,
        dynamic thickness,
        Animation<double> fadeoutOpacityAnimation,
        EdgeInsets padding,
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
    );
}

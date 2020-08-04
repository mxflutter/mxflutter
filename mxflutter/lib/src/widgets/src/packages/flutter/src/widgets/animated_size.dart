//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/animated_size.dart';


class MXProxyAnimatedSize {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[animatedSize.funName] = animatedSize;
    return m;
  }
  static var animatedSize = MXFunctionInvoke(
      "AnimatedSize",
      ({
        Key key,
        Widget child,
        AlignmentGeometry alignment,
        Curve curve,
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
        vsync: vsync,
      ),
    );
}

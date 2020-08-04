//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/animated_size.dart';


class MXProxyAnimatedSize {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[renderAnimatedSizeState.funName] = renderAnimatedSizeState;
    m[renderAnimatedSize.funName] = renderAnimatedSize;
    return m;
  }
  static var renderAnimatedSizeState = MXFunctionInvoke(
      "RenderAnimatedSizeState",
      ({Map args}) => MXRenderAnimatedSizeState.parse(args),
  );
  static var renderAnimatedSize = MXFunctionInvoke(
      "RenderAnimatedSize",
      ({
        TickerProvider vsync,
        Duration duration,
        Duration reverseDuration,
        Curve curve,
        AlignmentGeometry alignment,
        TextDirection textDirection,
        RenderBox child,
      }) =>
        RenderAnimatedSize(
        vsync: vsync,
        duration: duration,
        reverseDuration: reverseDuration,
        curve: curve,
        alignment: alignment,
        textDirection: textDirection,
        child: child,
      ),
    );
}
class MXRenderAnimatedSizeState {
  static Map str2VMap = {
    'RenderAnimatedSizeState.start': RenderAnimatedSizeState.start,
    'RenderAnimatedSizeState.stable': RenderAnimatedSizeState.stable,
    'RenderAnimatedSizeState.changed': RenderAnimatedSizeState.changed,
    'RenderAnimatedSizeState.unstable': RenderAnimatedSizeState.unstable,
  };
  static RenderAnimatedSizeState parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

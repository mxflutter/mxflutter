//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/animated_size.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/shifted_box.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimatedSizeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderAnimatedSizeState.funName] = _renderAnimatedSizeState;
  m[_renderAnimatedSize.funName] = _renderAnimatedSize;
  return m;
}

var _renderAnimatedSizeState = MXFunctionInvoke("RenderAnimatedSizeState",
    ({String name, int index}) => MXRenderAnimatedSizeState.parse(name, index), ["name", "index"]);
var _renderAnimatedSize = MXFunctionInvoke(
  "RenderAnimatedSize",
  ({
    TickerProvider vsync,
    Duration duration,
    Duration reverseDuration,
    Curve curve = Curves.linear,
    AlignmentGeometry alignment = Alignment.center,
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
  [
    "vsync",
    "duration",
    "reverseDuration",
    "curve",
    "alignment",
    "textDirection",
    "child",
  ],
);

class MXRenderAnimatedSizeState {
  static RenderAnimatedSizeState parse(String name, int index) {
    switch (name) {
      case 'RenderAnimatedSizeState.start':
        return RenderAnimatedSizeState.start;
      case 'RenderAnimatedSizeState.stable':
        return RenderAnimatedSizeState.stable;
      case 'RenderAnimatedSizeState.changed':
        return RenderAnimatedSizeState.changed;
      case 'RenderAnimatedSizeState.unstable':
        return RenderAnimatedSizeState.unstable;
    }
    return null;
  }
}

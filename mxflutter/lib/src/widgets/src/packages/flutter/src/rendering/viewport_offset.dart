//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';
import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerViewportOffsetSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollDirection.funName] = _scrollDirection;
  m[_viewportOffset_fixed.funName] = _viewportOffset_fixed;
  m[_viewportOffset_zero.funName] = _viewportOffset_zero;
  return m;
}

var _scrollDirection = MXFunctionInvoke(
    "ScrollDirection",
    ({String name, int index}) => MXScrollDirection.parse(name, index),
    ["name", "index"]);
var _viewportOffset_fixed = MXFunctionInvoke(
  "ViewportOffset.fixed",
  ({
    dynamic value,
  }) =>
      ViewportOffset.fixed(
    value?.toDouble(),
  ),
  [
    "value",
  ],
);
var _viewportOffset_zero = MXFunctionInvoke(
  "ViewportOffset.zero",
  () => ViewportOffset.zero(),
  [],
);

class MXScrollDirection {
  static ScrollDirection parse(String name, int index) {
    switch (name) {
      case 'ScrollDirection.idle':
        return ScrollDirection.idle;
      case 'ScrollDirection.forward':
        return ScrollDirection.forward;
      case 'ScrollDirection.reverse':
        return ScrollDirection.reverse;
    }
    return null;
  }
}

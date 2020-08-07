//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';
import 'dart:async' ;
import 'package:flutter/animation.dart' ;
import 'package:flutter/foundation.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerViewportOffsetSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollDirection.funName] = _scrollDirection;
  m[_viewportOffset.funName] = _viewportOffset;
  m[_viewportOffset_fixed.funName] = _viewportOffset_fixed;
  m[_viewportOffset_zero.funName] = _viewportOffset_zero;
  return m;
}
var _scrollDirection = MXFunctionInvoke(
    "ScrollDirection",
    ({Map args}) => MXScrollDirection.parse(args),
  );
var _viewportOffset = MXFunctionInvoke(
    "ViewportOffset",
    (
    ) =>
      ViewportOffset(
    ),
);
var _viewportOffset_fixed = MXFunctionInvoke(
  "ViewportOffset.fixed",
    (
      {
      dynamic value,
      }
    ) =>
      ViewportOffset.fixed(
      value?.toDouble(),
    ),
);
var _viewportOffset_zero = MXFunctionInvoke(
  "ViewportOffset.zero",
    (
    ) =>
      ViewportOffset.zero(
    ),
);
class MXScrollDirection {
  static Map str2VMap = {
    'ScrollDirection.idle': ScrollDirection.idle,
    'ScrollDirection.forward': ScrollDirection.forward,
    'ScrollDirection.reverse': ScrollDirection.reverse,
  };
  static ScrollDirection parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/wrap.dart';
import 'dart:math' as math;
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerWrapSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_wrapAlignment.funName] = _wrapAlignment;
  m[_wrapCrossAlignment.funName] = _wrapCrossAlignment;
  m[_wrapParentData.funName] = _wrapParentData;
  m[_renderWrap.funName] = _renderWrap;
  return m;
}

var _wrapAlignment = MXFunctionInvoke(
    "WrapAlignment", ({String name, int index}) => MXWrapAlignment.parse(name, index), ["name", "index"]);
var _wrapCrossAlignment = MXFunctionInvoke(
    "WrapCrossAlignment", ({String name, int index}) => MXWrapCrossAlignment.parse(name, index), ["name", "index"]);
var _wrapParentData = MXFunctionInvoke(
  "WrapParentData",
  () => WrapParentData(),
  [],
);
var _renderWrap = MXFunctionInvoke(
  "RenderWrap",
  ({
    dynamic children,
    Axis direction = Axis.horizontal,
    WrapAlignment alignment = WrapAlignment.start,
    dynamic spacing = 0.0,
    WrapAlignment runAlignment = WrapAlignment.start,
    dynamic runSpacing = 0.0,
    WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    Clip clipBehavior = Clip.none,
  }) =>
      RenderWrap(
    children: toListT<RenderBox>(children),
    direction: direction,
    alignment: alignment,
    spacing: spacing?.toDouble(),
    runAlignment: runAlignment,
    runSpacing: runSpacing?.toDouble(),
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    clipBehavior: clipBehavior,
  ),
  [
    "children",
    "direction",
    "alignment",
    "spacing",
    "runAlignment",
    "runSpacing",
    "crossAxisAlignment",
    "textDirection",
    "verticalDirection",
    "clipBehavior",
  ],
);

class MXWrapAlignment {
  static WrapAlignment parse(String name, int index) {
    switch (name) {
      case 'WrapAlignment.start':
        return WrapAlignment.start;
      case 'WrapAlignment.end':
        return WrapAlignment.end;
      case 'WrapAlignment.center':
        return WrapAlignment.center;
      case 'WrapAlignment.spaceBetween':
        return WrapAlignment.spaceBetween;
      case 'WrapAlignment.spaceAround':
        return WrapAlignment.spaceAround;
      case 'WrapAlignment.spaceEvenly':
        return WrapAlignment.spaceEvenly;
    }
    return null;
  }
}

class MXWrapCrossAlignment {
  static WrapCrossAlignment parse(String name, int index) {
    switch (name) {
      case 'WrapCrossAlignment.start':
        return WrapCrossAlignment.start;
      case 'WrapCrossAlignment.end':
        return WrapCrossAlignment.end;
      case 'WrapCrossAlignment.center':
        return WrapCrossAlignment.center;
    }
    return null;
  }
}

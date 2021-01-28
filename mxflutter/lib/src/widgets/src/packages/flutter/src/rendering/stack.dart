//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/stack.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerStackSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_relativeRectFill.funName] = _relativeRectFill;
  m[_relativeRectFromSize.funName] = _relativeRectFromSize;
  m[_relativeRectFromRect.funName] = _relativeRectFromRect;
  m[_relativeRectFromLTRB.funName] = _relativeRectFromLTRB;
  m[_stackParentData.funName] = _stackParentData;
  m[_stackFit.funName] = _stackFit;
  m[_overflow.funName] = _overflow;
  m[_renderStack.funName] = _renderStack;
  m[_renderIndexedStack.funName] = _renderIndexedStack;
  return m;
}

var _relativeRectFill = MXFunctionInvoke("RelativeRect.fill", () => RelativeRect.fill);
var _relativeRectFromSize = MXFunctionInvoke(
  "RelativeRect.fromSize",
  ({
    Rect rect,
    Size container,
  }) =>
      RelativeRect.fromSize(
    rect,
    container,
  ),
  [
    "rect",
    "container",
  ],
);
var _relativeRectFromRect = MXFunctionInvoke(
  "RelativeRect.fromRect",
  ({
    Rect rect,
    Rect container,
  }) =>
      RelativeRect.fromRect(
    rect,
    container,
  ),
  [
    "rect",
    "container",
  ],
);
var _relativeRectFromLTRB = MXFunctionInvoke(
  "RelativeRect.fromLTRB",
  ({
    dynamic left,
    dynamic top,
    dynamic right,
    dynamic bottom,
  }) =>
      RelativeRect.fromLTRB(
    left?.toDouble(),
    top?.toDouble(),
    right?.toDouble(),
    bottom?.toDouble(),
  ),
  [
    "left",
    "top",
    "right",
    "bottom",
  ],
);
var _stackParentData = MXFunctionInvoke(
  "StackParentData",
  () => StackParentData(),
  [],
);
var _stackFit =
    MXFunctionInvoke("StackFit", ({String name, int index}) => MXStackFit.parse(name, index), ["name", "index"]);
var _overflow =
    MXFunctionInvoke("Overflow", ({String name, int index}) => MXOverflow.parse(name, index), ["name", "index"]);
var _renderStack = MXFunctionInvoke(
  "RenderStack",
  ({
    dynamic children,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection textDirection,
    StackFit fit = StackFit.loose,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      RenderStack(
    children: toListT<RenderBox>(children),
    alignment: alignment,
    textDirection: textDirection,
    fit: fit,
    clipBehavior: clipBehavior,
  ),
  [
    "children",
    "alignment",
    "textDirection",
    "fit",
    "clipBehavior",
  ],
);
var _renderIndexedStack = MXFunctionInvoke(
  "RenderIndexedStack",
  ({
    dynamic children,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection textDirection,
    int index = 0,
  }) =>
      RenderIndexedStack(
    children: toListT<RenderBox>(children),
    alignment: alignment,
    textDirection: textDirection,
    index: index,
  ),
  [
    "children",
    "alignment",
    "textDirection",
    "index",
  ],
);

class MXStackFit {
  static StackFit parse(String name, int index) {
    switch (name) {
      case 'StackFit.loose':
        return StackFit.loose;
      case 'StackFit.expand':
        return StackFit.expand;
      case 'StackFit.passthrough':
        return StackFit.passthrough;
    }
    return null;
  }
}

class MXOverflow {
  static Overflow parse(String name, int index) {
    switch (name) {
      case 'Overflow.visible':
        return Overflow.visible;
      case 'Overflow.clip':
        return Overflow.clip;
    }
    return null;
  }
}

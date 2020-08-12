//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_relativeRect_fill.funName] = _relativeRect_fill;
  m[_relativeRect_fromSize.funName] = _relativeRect_fromSize;
  m[_relativeRect_fromRect.funName] = _relativeRect_fromRect;
  m[_relativeRect_fromLTRB.funName] = _relativeRect_fromLTRB;
  m[_stackParentData.funName] = _stackParentData;
  m[_stackFit.funName] = _stackFit;
  m[_overflow.funName] = _overflow;
  m[_renderStack.funName] = _renderStack;
  m[_renderIndexedStack.funName] = _renderIndexedStack;
  return m;
}
var _relativeRect_fill = MXFunctionInvoke(
  "RelativeRect.fill",
    (
    ) =>
      RelativeRect.fill
);
var _relativeRect_fromSize = MXFunctionInvoke(
  "RelativeRect.fromSize",
    (
      {
      Rect rect,
      Size container,
      }
    ) =>
      RelativeRect.fromSize(
      rect,
      container,
    ),
);
var _relativeRect_fromRect = MXFunctionInvoke(
  "RelativeRect.fromRect",
    (
      {
      Rect rect,
      Rect container,
      }
    ) =>
      RelativeRect.fromRect(
      rect,
      container,
    ),
);
var _relativeRect_fromLTRB = MXFunctionInvoke(
  "RelativeRect.fromLTRB",
    (
      {
      dynamic left,
      dynamic top,
      dynamic right,
      dynamic bottom,
      }
    ) =>
      RelativeRect.fromLTRB(
      left?.toDouble(),
      top?.toDouble(),
      right?.toDouble(),
      bottom?.toDouble(),
    ),
);
var _stackParentData = MXFunctionInvoke(
    "StackParentData",
    (
    ) =>
      StackParentData(
    ),
);
var _stackFit = MXFunctionInvoke(
    "StackFit",
    ({String name, int index}) => MXStackFit.parse(name, index),
  );
var _overflow = MXFunctionInvoke(
    "Overflow",
    ({String name, int index}) => MXOverflow.parse(name, index),
  );
var _renderStack = MXFunctionInvoke(
    "RenderStack",
    (
      {
      dynamic children,
      AlignmentGeometry alignment = AlignmentDirectional.topStart,
      TextDirection textDirection,
      StackFit fit = StackFit.loose,
      Overflow overflow =  Overflow.clip,
      }
    ) =>
      RenderStack(
      children: toListT<RenderBox>(children),
      alignment: alignment,
      textDirection: textDirection,
      fit: fit,
      overflow: overflow,
    ),
);
var _renderIndexedStack = MXFunctionInvoke(
    "RenderIndexedStack",
    (
      {
      dynamic children,
      AlignmentGeometry alignment = AlignmentDirectional.topStart,
      TextDirection textDirection,
      int index = 0,
      }
    ) =>
      RenderIndexedStack(
      children: toListT<RenderBox>(children),
      alignment: alignment,
      textDirection: textDirection,
      index: index,
    ),
);
class MXStackFit {
  static StackFit parse(String name, int index) {
    switch(name) {
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
    switch(name) {
      case 'Overflow.visible': 
       return Overflow.visible;
      case 'Overflow.clip': 
       return Overflow.clip;
    }
    return null;
  }
}

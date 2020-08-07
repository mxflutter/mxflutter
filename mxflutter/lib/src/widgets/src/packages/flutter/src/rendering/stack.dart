//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/stack.dart';
import 'dart:math' as math;
import 'dart:ui' ;
import 'package:flutter/foundation.dart' ;
import 'package:flutter/src/rendering/box.dart' ;
import 'package:flutter/src/rendering/object.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerStackSeries() {
  var m = <String, MXFunctionInvoke>{};
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
    ({Map args}) => MXStackFit.parse(args),
  );
var _overflow = MXFunctionInvoke(
    "Overflow",
    ({Map args}) => MXOverflow.parse(args),
  );
var _renderStack = MXFunctionInvoke(
    "RenderStack",
    (
      {
      List<RenderBox> children,
      AlignmentGeometry alignment,
      TextDirection textDirection,
      StackFit fit = StackFit.loose,
      Overflow overflow = Overflow.clip,
      }
    ) =>
      RenderStack(
      children: children,
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
      List<RenderBox> children,
      AlignmentGeometry alignment,
      TextDirection textDirection,
      int index = 0,
      }
    ) =>
      RenderIndexedStack(
      children: children,
      alignment: alignment,
      textDirection: textDirection,
      index: index,
    ),
);
class MXStackFit {
  static Map str2VMap = {
    'StackFit.loose': StackFit.loose,
    'StackFit.expand': StackFit.expand,
    'StackFit.passthrough': StackFit.passthrough,
  };
  static StackFit parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXOverflow {
  static Map str2VMap = {
    'Overflow.visible': Overflow.visible,
    'Overflow.clip': Overflow.clip,
  };
  static Overflow parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/stack.dart';


class MXProxyStack {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[relativeRect_fromSize.funName] = relativeRect_fromSize;
    m[relativeRect_fromRect.funName] = relativeRect_fromRect;
    m[relativeRect_fromLTRB.funName] = relativeRect_fromLTRB;
    m[stackParentData.funName] = stackParentData;
    m[stackFit.funName] = stackFit;
    m[overflow.funName] = overflow;
    m[renderStack.funName] = renderStack;
    m[renderIndexedStack.funName] = renderIndexedStack;
    return m;
  }
  static var relativeRect_fromSize = MXFunctionInvoke(
    "relativeRect.fromSize",
      ({
        Rect rect,
        Size container,
      }) =>
        RelativeRect.fromSize(
        rect,
        container,
      ),
    );
  static var relativeRect_fromRect = MXFunctionInvoke(
    "relativeRect.fromRect",
      ({
        Rect rect,
        Rect container,
      }) =>
        RelativeRect.fromRect(
        rect,
        container,
      ),
    );
  static var relativeRect_fromLTRB = MXFunctionInvoke(
    "relativeRect.fromLTRB",
      ({
        double left,
        double top,
        double right,
        double bottom,
      }) =>
        RelativeRect.fromLTRB(
        left,
        top,
        right,
        bottom,
      ),
    );
  static var stackParentData = MXFunctionInvoke(
      "StackParentData",
      ({
      }) =>
        StackParentData(
      ),
    );
  static var stackFit = MXFunctionInvoke(
      "StackFit",
      ({Map args}) => MXStackFit.parse(args),
  );
  static var overflow = MXFunctionInvoke(
      "Overflow",
      ({Map args}) => MXOverflow.parse(args),
  );
  static var renderStack = MXFunctionInvoke(
      "RenderStack",
      ({
        List<RenderBox> children,
        AlignmentGeometry alignment,
        TextDirection textDirection,
        StackFit fit = StackFit.loose,
        Overflow overflow = Overflow.clip,
      }) =>
        RenderStack(
        children: children,
        alignment: alignment,
        textDirection: textDirection,
        fit: fit,
        overflow: overflow,
      ),
    );
  static var renderIndexedStack = MXFunctionInvoke(
      "RenderIndexedStack",
      ({
        List<RenderBox> children,
        AlignmentGeometry alignment,
        TextDirection textDirection,
        int index = 0,
      }) =>
        RenderIndexedStack(
        children: children,
        alignment: alignment,
        textDirection: textDirection,
        index: index,
      ),
    );
}
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

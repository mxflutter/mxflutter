//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/flex.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug_overflow_indicator.dart';
import 'package:flutter/src/rendering/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFlexSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_flexFit.funName] = _flexFit;
  m[_flexParentData.funName] = _flexParentData;
  m[_mainAxisSize.funName] = _mainAxisSize;
  m[_mainAxisAlignment.funName] = _mainAxisAlignment;
  m[_crossAxisAlignment.funName] = _crossAxisAlignment;
  m[_renderFlex.funName] = _renderFlex;
  return m;
}

var _flexFit =
    MXFunctionInvoke("FlexFit", ({String name, int index}) => MXFlexFit.parse(name, index), ["name", "index"]);
var _flexParentData = MXFunctionInvoke(
  "FlexParentData",
  () => FlexParentData(),
  [],
);
var _mainAxisSize = MXFunctionInvoke(
    "MainAxisSize", ({String name, int index}) => MXMainAxisSize.parse(name, index), ["name", "index"]);
var _mainAxisAlignment = MXFunctionInvoke(
    "MainAxisAlignment", ({String name, int index}) => MXMainAxisAlignment.parse(name, index), ["name", "index"]);
var _crossAxisAlignment = MXFunctionInvoke(
    "CrossAxisAlignment", ({String name, int index}) => MXCrossAxisAlignment.parse(name, index), ["name", "index"]);
var _renderFlex = MXFunctionInvoke(
  "RenderFlex",
  ({
    dynamic children,
    Axis direction = Axis.horizontal,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    Clip clipBehavior = Clip.none,
  }) =>
      RenderFlex(
    children: toListT<RenderBox>(children),
    direction: direction,
    mainAxisSize: mainAxisSize,
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline,
    clipBehavior: clipBehavior,
  ),
  [
    "children",
    "direction",
    "mainAxisSize",
    "mainAxisAlignment",
    "crossAxisAlignment",
    "textDirection",
    "verticalDirection",
    "textBaseline",
    "clipBehavior",
  ],
);

class MXFlexFit {
  static FlexFit parse(String name, int index) {
    switch (name) {
      case 'FlexFit.tight':
        return FlexFit.tight;
      case 'FlexFit.loose':
        return FlexFit.loose;
    }
    return null;
  }
}

class MXMainAxisSize {
  static MainAxisSize parse(String name, int index) {
    switch (name) {
      case 'MainAxisSize.min':
        return MainAxisSize.min;
      case 'MainAxisSize.max':
        return MainAxisSize.max;
    }
    return null;
  }
}

class MXMainAxisAlignment {
  static MainAxisAlignment parse(String name, int index) {
    switch (name) {
      case 'MainAxisAlignment.start':
        return MainAxisAlignment.start;
      case 'MainAxisAlignment.end':
        return MainAxisAlignment.end;
      case 'MainAxisAlignment.center':
        return MainAxisAlignment.center;
      case 'MainAxisAlignment.spaceBetween':
        return MainAxisAlignment.spaceBetween;
      case 'MainAxisAlignment.spaceAround':
        return MainAxisAlignment.spaceAround;
      case 'MainAxisAlignment.spaceEvenly':
        return MainAxisAlignment.spaceEvenly;
    }
    return null;
  }
}

class MXCrossAxisAlignment {
  static CrossAxisAlignment parse(String name, int index) {
    switch (name) {
      case 'CrossAxisAlignment.start':
        return CrossAxisAlignment.start;
      case 'CrossAxisAlignment.end':
        return CrossAxisAlignment.end;
      case 'CrossAxisAlignment.center':
        return CrossAxisAlignment.center;
      case 'CrossAxisAlignment.stretch':
        return CrossAxisAlignment.stretch;
      case 'CrossAxisAlignment.baseline':
        return CrossAxisAlignment.baseline;
    }
    return null;
  }
}

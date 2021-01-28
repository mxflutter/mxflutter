//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBasicTypesSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderComparison.funName] = _renderComparison;
  m[_axis.funName] = _axis;
  m[_verticalDirection.funName] = _verticalDirection;
  m[_axisDirection.funName] = _axisDirection;
  return m;
}

var _renderComparison = MXFunctionInvoke(
    "RenderComparison", ({String name, int index}) => MXRenderComparison.parse(name, index), ["name", "index"]);
var _axis = MXFunctionInvoke("Axis", ({String name, int index}) => MXAxis.parse(name, index), ["name", "index"]);
var _verticalDirection = MXFunctionInvoke(
    "VerticalDirection", ({String name, int index}) => MXVerticalDirection.parse(name, index), ["name", "index"]);
var _axisDirection = MXFunctionInvoke(
    "AxisDirection", ({String name, int index}) => MXAxisDirection.parse(name, index), ["name", "index"]);

class MXRenderComparison {
  static RenderComparison parse(String name, int index) {
    switch (name) {
      case 'RenderComparison.identical':
        return RenderComparison.identical;
      case 'RenderComparison.metadata':
        return RenderComparison.metadata;
      case 'RenderComparison.paint':
        return RenderComparison.paint;
      case 'RenderComparison.layout':
        return RenderComparison.layout;
    }
    return null;
  }
}

class MXAxis {
  static Axis parse(String name, int index) {
    switch (name) {
      case 'Axis.horizontal':
        return Axis.horizontal;
      case 'Axis.vertical':
        return Axis.vertical;
    }
    return null;
  }
}

class MXVerticalDirection {
  static VerticalDirection parse(String name, int index) {
    switch (name) {
      case 'VerticalDirection.up':
        return VerticalDirection.up;
      case 'VerticalDirection.down':
        return VerticalDirection.down;
    }
    return null;
  }
}

class MXAxisDirection {
  static AxisDirection parse(String name, int index) {
    switch (name) {
      case 'AxisDirection.up':
        return AxisDirection.up;
      case 'AxisDirection.right':
        return AxisDirection.right;
      case 'AxisDirection.down':
        return AxisDirection.down;
      case 'AxisDirection.left':
        return AxisDirection.left;
    }
    return null;
  }
}

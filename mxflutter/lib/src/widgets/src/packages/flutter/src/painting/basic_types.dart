//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'dart:ui' ;
import 'package:flutter/foundation.dart' ;


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
    "RenderComparison",
    ({Map args}) => MXRenderComparison.parse(args),
  );
var _axis = MXFunctionInvoke(
    "Axis",
    ({Map args}) => MXAxis.parse(args),
  );
var _verticalDirection = MXFunctionInvoke(
    "VerticalDirection",
    ({Map args}) => MXVerticalDirection.parse(args),
  );
var _axisDirection = MXFunctionInvoke(
    "AxisDirection",
    ({Map args}) => MXAxisDirection.parse(args),
  );
class MXRenderComparison {
  static Map str2VMap = {
    'RenderComparison.identical': RenderComparison.identical,
    'RenderComparison.metadata': RenderComparison.metadata,
    'RenderComparison.paint': RenderComparison.paint,
    'RenderComparison.layout': RenderComparison.layout,
  };
  static RenderComparison parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXAxis {
  static Map str2VMap = {
    'Axis.horizontal': Axis.horizontal,
    'Axis.vertical': Axis.vertical,
  };
  static Axis parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXVerticalDirection {
  static Map str2VMap = {
    'VerticalDirection.up': VerticalDirection.up,
    'VerticalDirection.down': VerticalDirection.down,
  };
  static VerticalDirection parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXAxisDirection {
  static Map str2VMap = {
    'AxisDirection.up': AxisDirection.up,
    'AxisDirection.right': AxisDirection.right,
    'AxisDirection.down': AxisDirection.down,
    'AxisDirection.left': AxisDirection.left,
  };
  static AxisDirection parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

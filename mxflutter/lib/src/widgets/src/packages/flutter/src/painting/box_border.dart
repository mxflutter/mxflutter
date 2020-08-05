//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/box_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/edge_insets.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBoxBorderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_boxShape.funName] = _boxShape;
  m[_border.funName] = _border;
  m[_border_all.funName] = _border_all;
  m[_border_fromBorderSide.funName] = _border_fromBorderSide;
  m[_border_symmetric.funName] = _border_symmetric;
  m[_borderDirectional.funName] = _borderDirectional;
  return m;
}
var _boxShape = MXFunctionInvoke(
    "BoxShape",
    ({Map args}) => MXBoxShape.parse(args),
  );
var _border = MXFunctionInvoke(
    "Border",
    (
      {
      BorderSide top,
      BorderSide right,
      BorderSide bottom,
      BorderSide left,
      }
    ) =>
      Border(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
    ),
);
var _border_all = MXFunctionInvoke(
  "border.all",
    (
      {
      Color color,
      double width = 1.0,
      BorderStyle style = BorderStyle.solid,
      }
    ) =>
      Border.all(
      color: color,
      width: width?.toDouble(),
      style: style,
    ),
);
var _border_fromBorderSide = MXFunctionInvoke(
  "border.fromBorderSide",
    (
      {
      BorderSide side,
      }
    ) =>
      Border.fromBorderSide(
      side,
    ),
);
var _border_symmetric = MXFunctionInvoke(
  "border.symmetric",
    (
      {
      BorderSide vertical,
      BorderSide horizontal,
      }
    ) =>
      Border.symmetric(
      vertical: vertical,
      horizontal: horizontal,
    ),
);
var _borderDirectional = MXFunctionInvoke(
    "BorderDirectional",
    (
      {
      BorderSide top,
      BorderSide start,
      BorderSide end,
      BorderSide bottom,
      }
    ) =>
      BorderDirectional(
      top: top,
      start: start,
      end: end,
      bottom: bottom,
    ),
);
class MXBoxShape {
  static Map str2VMap = {
    'BoxShape.rectangle': BoxShape.rectangle,
    'BoxShape.circle': BoxShape.circle,
  };
  static BoxShape parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

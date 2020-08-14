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
    ({String name, int index}) => MXBoxShape.parse(name, index),
  );
var _border = MXFunctionInvoke(
    "Border",
    (
      {
      BorderSide top = BorderSide.none,
      BorderSide right = BorderSide.none,
      BorderSide bottom = BorderSide.none,
      BorderSide left = BorderSide.none,
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
  "Border.all",
    (
      {
      Color color = const Color(0xFF000000),
      dynamic width = 1.0,
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
  "Border.fromBorderSide",
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
  "Border.symmetric",
    (
      {
      BorderSide vertical = BorderSide.none,
      BorderSide horizontal = BorderSide.none,
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
      BorderSide top = BorderSide.none,
      BorderSide start = BorderSide.none,
      BorderSide end = BorderSide.none,
      BorderSide bottom = BorderSide.none,
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
  static BoxShape parse(String name, int index) {
    switch(name) {
      case 'BoxShape.rectangle': 
       return BoxShape.rectangle;
      case 'BoxShape.circle': 
       return BoxShape.circle;
    }
    return null;
  }
}

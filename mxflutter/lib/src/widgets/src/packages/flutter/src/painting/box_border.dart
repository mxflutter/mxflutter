//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_borderAll.funName] = _borderAll;
  m[_borderFromBorderSide.funName] = _borderFromBorderSide;
  m[_borderSymmetric.funName] = _borderSymmetric;
  m[_borderDirectional.funName] = _borderDirectional;
  return m;
}

var _boxShape =
    MXFunctionInvoke("BoxShape", ({String name, int index}) => MXBoxShape.parse(name, index), ["name", "index"]);
var _border = MXFunctionInvoke(
  "Border",
  ({
    BorderSide top = BorderSide.none,
    BorderSide right = BorderSide.none,
    BorderSide bottom = BorderSide.none,
    BorderSide left = BorderSide.none,
  }) =>
      Border(
    top: top,
    right: right,
    bottom: bottom,
    left: left,
  ),
  [
    "top",
    "right",
    "bottom",
    "left",
  ],
);
var _borderAll = MXFunctionInvoke(
  "Border.all",
  ({
    Color color = const Color(0xFF000000),
    dynamic width = 1.0,
    BorderStyle style = BorderStyle.solid,
  }) =>
      Border.all(
    color: color,
    width: width?.toDouble(),
    style: style,
  ),
  [
    "color",
    "width",
    "style",
  ],
);
var _borderFromBorderSide = MXFunctionInvoke(
  "Border.fromBorderSide",
  ({
    BorderSide side,
  }) =>
      Border.fromBorderSide(
    side,
  ),
  [
    "side",
  ],
);
var _borderSymmetric = MXFunctionInvoke(
  "Border.symmetric",
  ({
    BorderSide vertical = BorderSide.none,
    BorderSide horizontal = BorderSide.none,
  }) =>
      Border.symmetric(
    vertical: vertical,
    horizontal: horizontal,
  ),
  [
    "vertical",
    "horizontal",
  ],
);
var _borderDirectional = MXFunctionInvoke(
  "BorderDirectional",
  ({
    BorderSide top = BorderSide.none,
    BorderSide start = BorderSide.none,
    BorderSide end = BorderSide.none,
    BorderSide bottom = BorderSide.none,
  }) =>
      BorderDirectional(
    top: top,
    start: start,
    end: end,
    bottom: bottom,
  ),
  [
    "top",
    "start",
    "end",
    "bottom",
  ],
);

class MXBoxShape {
  static BoxShape parse(String name, int index) {
    switch (name) {
      case 'BoxShape.rectangle':
        return BoxShape.rectangle;
      case 'BoxShape.circle':
        return BoxShape.circle;
    }
    return null;
  }
}

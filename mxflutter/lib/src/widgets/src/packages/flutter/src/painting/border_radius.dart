//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBorderRadiusSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_borderRadiusZero.funName] = _borderRadiusZero;
  m[_borderRadiusAll.funName] = _borderRadiusAll;
  m[_borderRadiusCircular.funName] = _borderRadiusCircular;
  m[_borderRadiusVertical.funName] = _borderRadiusVertical;
  m[_borderRadiusHorizontal.funName] = _borderRadiusHorizontal;
  m[_borderRadiusOnly.funName] = _borderRadiusOnly;
  m[_borderRadiusDirectionalZero.funName] = _borderRadiusDirectionalZero;
  m[_borderRadiusDirectionalAll.funName] = _borderRadiusDirectionalAll;
  m[_borderRadiusDirectionalCircular.funName] = _borderRadiusDirectionalCircular;
  m[_borderRadiusDirectionalVertical.funName] = _borderRadiusDirectionalVertical;
  m[_borderRadiusDirectionalHorizontal.funName] = _borderRadiusDirectionalHorizontal;
  m[_borderRadiusDirectionalOnly.funName] = _borderRadiusDirectionalOnly;
  return m;
}

var _borderRadiusZero = MXFunctionInvoke("BorderRadius.zero", () => BorderRadius.zero);
var _borderRadiusAll = MXFunctionInvoke(
  "BorderRadius.all",
  ({
    Radius radius,
  }) =>
      BorderRadius.all(
    radius,
  ),
  [
    "radius",
  ],
);
var _borderRadiusCircular = MXFunctionInvoke(
  "BorderRadius.circular",
  ({
    dynamic radius,
  }) =>
      BorderRadius.circular(
    radius?.toDouble(),
  ),
  [
    "radius",
  ],
);
var _borderRadiusVertical = MXFunctionInvoke(
  "BorderRadius.vertical",
  ({
    Radius top = Radius.zero,
    Radius bottom = Radius.zero,
  }) =>
      BorderRadius.vertical(
    top: top,
    bottom: bottom,
  ),
  [
    "top",
    "bottom",
  ],
);
var _borderRadiusHorizontal = MXFunctionInvoke(
  "BorderRadius.horizontal",
  ({
    Radius left = Radius.zero,
    Radius right = Radius.zero,
  }) =>
      BorderRadius.horizontal(
    left: left,
    right: right,
  ),
  [
    "left",
    "right",
  ],
);
var _borderRadiusOnly = MXFunctionInvoke(
  "BorderRadius.only",
  ({
    Radius topLeft = Radius.zero,
    Radius topRight = Radius.zero,
    Radius bottomLeft = Radius.zero,
    Radius bottomRight = Radius.zero,
  }) =>
      BorderRadius.only(
    topLeft: topLeft,
    topRight: topRight,
    bottomLeft: bottomLeft,
    bottomRight: bottomRight,
  ),
  [
    "topLeft",
    "topRight",
    "bottomLeft",
    "bottomRight",
  ],
);
var _borderRadiusDirectionalZero = MXFunctionInvoke("BorderRadiusDirectional.zero", () => BorderRadiusDirectional.zero);
var _borderRadiusDirectionalAll = MXFunctionInvoke(
  "BorderRadiusDirectional.all",
  ({
    Radius radius,
  }) =>
      BorderRadiusDirectional.all(
    radius,
  ),
  [
    "radius",
  ],
);
var _borderRadiusDirectionalCircular = MXFunctionInvoke(
  "BorderRadiusDirectional.circular",
  ({
    dynamic radius,
  }) =>
      BorderRadiusDirectional.circular(
    radius?.toDouble(),
  ),
  [
    "radius",
  ],
);
var _borderRadiusDirectionalVertical = MXFunctionInvoke(
  "BorderRadiusDirectional.vertical",
  ({
    Radius top = Radius.zero,
    Radius bottom = Radius.zero,
  }) =>
      BorderRadiusDirectional.vertical(
    top: top,
    bottom: bottom,
  ),
  [
    "top",
    "bottom",
  ],
);
var _borderRadiusDirectionalHorizontal = MXFunctionInvoke(
  "BorderRadiusDirectional.horizontal",
  ({
    Radius start = Radius.zero,
    Radius end = Radius.zero,
  }) =>
      BorderRadiusDirectional.horizontal(
    start: start,
    end: end,
  ),
  [
    "start",
    "end",
  ],
);
var _borderRadiusDirectionalOnly = MXFunctionInvoke(
  "BorderRadiusDirectional.only",
  ({
    Radius topStart = Radius.zero,
    Radius topEnd = Radius.zero,
    Radius bottomStart = Radius.zero,
    Radius bottomEnd = Radius.zero,
  }) =>
      BorderRadiusDirectional.only(
    topStart: topStart,
    topEnd: topEnd,
    bottomStart: bottomStart,
    bottomEnd: bottomEnd,
  ),
  [
    "topStart",
    "topEnd",
    "bottomStart",
    "bottomEnd",
  ],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBorderRadiusSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_borderRadius_all.funName] = _borderRadius_all;
  m[_borderRadius_circular.funName] = _borderRadius_circular;
  m[_borderRadius_vertical.funName] = _borderRadius_vertical;
  m[_borderRadius_horizontal.funName] = _borderRadius_horizontal;
  m[_borderRadius_only.funName] = _borderRadius_only;
  m[_borderRadiusDirectional_all.funName] = _borderRadiusDirectional_all;
  m[_borderRadiusDirectional_circular.funName] = _borderRadiusDirectional_circular;
  m[_borderRadiusDirectional_vertical.funName] = _borderRadiusDirectional_vertical;
  m[_borderRadiusDirectional_horizontal.funName] = _borderRadiusDirectional_horizontal;
  m[_borderRadiusDirectional_only.funName] = _borderRadiusDirectional_only;
  return m;
}
var _borderRadius_all = MXFunctionInvoke(
  "borderRadius.all",
    (
      {
      Radius radius,
      }
    ) =>
      BorderRadius.all(
      radius,
    ),
);
var _borderRadius_circular = MXFunctionInvoke(
  "borderRadius.circular",
    (
      {
      double radius,
      }
    ) =>
      BorderRadius.circular(
      radius,
    ),
);
var _borderRadius_vertical = MXFunctionInvoke(
  "borderRadius.vertical",
    (
      {
      Radius top,
      Radius bottom,
      }
    ) =>
      BorderRadius.vertical(
      top: top,
      bottom: bottom,
    ),
);
var _borderRadius_horizontal = MXFunctionInvoke(
  "borderRadius.horizontal",
    (
      {
      Radius left,
      Radius right,
      }
    ) =>
      BorderRadius.horizontal(
      left: left,
      right: right,
    ),
);
var _borderRadius_only = MXFunctionInvoke(
  "borderRadius.only",
    (
      {
      Radius topLeft,
      Radius topRight,
      Radius bottomLeft,
      Radius bottomRight,
      }
    ) =>
      BorderRadius.only(
      topLeft: topLeft,
      topRight: topRight,
      bottomLeft: bottomLeft,
      bottomRight: bottomRight,
    ),
);
var _borderRadiusDirectional_all = MXFunctionInvoke(
  "borderRadiusDirectional.all",
    (
      {
      Radius radius,
      }
    ) =>
      BorderRadiusDirectional.all(
      radius,
    ),
);
var _borderRadiusDirectional_circular = MXFunctionInvoke(
  "borderRadiusDirectional.circular",
    (
      {
      double radius,
      }
    ) =>
      BorderRadiusDirectional.circular(
      radius,
    ),
);
var _borderRadiusDirectional_vertical = MXFunctionInvoke(
  "borderRadiusDirectional.vertical",
    (
      {
      Radius top,
      Radius bottom,
      }
    ) =>
      BorderRadiusDirectional.vertical(
      top: top,
      bottom: bottom,
    ),
);
var _borderRadiusDirectional_horizontal = MXFunctionInvoke(
  "borderRadiusDirectional.horizontal",
    (
      {
      Radius start,
      Radius end,
      }
    ) =>
      BorderRadiusDirectional.horizontal(
      start: start,
      end: end,
    ),
);
var _borderRadiusDirectional_only = MXFunctionInvoke(
  "borderRadiusDirectional.only",
    (
      {
      Radius topStart,
      Radius topEnd,
      Radius bottomStart,
      Radius bottomEnd,
      }
    ) =>
      BorderRadiusDirectional.only(
      topStart: topStart,
      topEnd: topEnd,
      bottomStart: bottomStart,
      bottomEnd: bottomEnd,
    ),
);

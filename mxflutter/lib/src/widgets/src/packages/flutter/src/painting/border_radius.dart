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
  m[borderRadius_all.funName] = borderRadius_all;
  m[borderRadius_circular.funName] = borderRadius_circular;
  m[borderRadius_vertical.funName] = borderRadius_vertical;
  m[borderRadius_horizontal.funName] = borderRadius_horizontal;
  m[borderRadius_only.funName] = borderRadius_only;
  m[borderRadiusDirectional_all.funName] = borderRadiusDirectional_all;
  m[borderRadiusDirectional_circular.funName] = borderRadiusDirectional_circular;
  m[borderRadiusDirectional_vertical.funName] = borderRadiusDirectional_vertical;
  m[borderRadiusDirectional_horizontal.funName] = borderRadiusDirectional_horizontal;
  m[borderRadiusDirectional_only.funName] = borderRadiusDirectional_only;
  return m;
}
var borderRadius_all = MXFunctionInvoke(
  "borderRadius.all",
    ({
      Radius radius,
    }) =>
      BorderRadius.all(
      radius,
    ),
);
var borderRadius_circular = MXFunctionInvoke(
  "borderRadius.circular",
    ({
      dynamic radius,
    }) =>
      BorderRadius.circular(
      radius,
    ),
);
var borderRadius_vertical = MXFunctionInvoke(
  "borderRadius.vertical",
    ({
      Radius top,
      Radius bottom,
    }) =>
      BorderRadius.vertical(
      top: top,
      bottom: bottom,
    ),
);
var borderRadius_horizontal = MXFunctionInvoke(
  "borderRadius.horizontal",
    ({
      Radius left,
      Radius right,
    }) =>
      BorderRadius.horizontal(
      left: left,
      right: right,
    ),
);
var borderRadius_only = MXFunctionInvoke(
  "borderRadius.only",
    ({
      Radius topLeft,
      Radius topRight,
      Radius bottomLeft,
      Radius bottomRight,
    }) =>
      BorderRadius.only(
      topLeft: topLeft,
      topRight: topRight,
      bottomLeft: bottomLeft,
      bottomRight: bottomRight,
    ),
);
var borderRadiusDirectional_all = MXFunctionInvoke(
  "borderRadiusDirectional.all",
    ({
      Radius radius,
    }) =>
      BorderRadiusDirectional.all(
      radius,
    ),
);
var borderRadiusDirectional_circular = MXFunctionInvoke(
  "borderRadiusDirectional.circular",
    ({
      dynamic radius,
    }) =>
      BorderRadiusDirectional.circular(
      radius,
    ),
);
var borderRadiusDirectional_vertical = MXFunctionInvoke(
  "borderRadiusDirectional.vertical",
    ({
      Radius top,
      Radius bottom,
    }) =>
      BorderRadiusDirectional.vertical(
      top: top,
      bottom: bottom,
    ),
);
var borderRadiusDirectional_horizontal = MXFunctionInvoke(
  "borderRadiusDirectional.horizontal",
    ({
      Radius start,
      Radius end,
    }) =>
      BorderRadiusDirectional.horizontal(
      start: start,
      end: end,
    ),
);
var borderRadiusDirectional_only = MXFunctionInvoke(
  "borderRadiusDirectional.only",
    ({
      Radius topStart,
      Radius topEnd,
      Radius bottomStart,
      Radius bottomEnd,
    }) =>
      BorderRadiusDirectional.only(
      topStart: topStart,
      topEnd: topEnd,
      bottomStart: bottomStart,
      bottomEnd: bottomEnd,
    ),
);

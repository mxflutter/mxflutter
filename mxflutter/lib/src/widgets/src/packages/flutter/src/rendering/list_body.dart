//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/list_body.dart';
import 'dart:math';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerListBodySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[listBodyParentData.funName] = listBodyParentData;
  m[renderListBody.funName] = renderListBody;
  return m;
}
var listBodyParentData = MXFunctionInvoke(
    "ListBodyParentData",
    ({
    }) =>
      ListBodyParentData(
    ),
);
var renderListBody = MXFunctionInvoke(
    "RenderListBody",
    ({
      List<RenderBox> children,
      AxisDirection axisDirection = AxisDirection.down,
    }) =>
      RenderListBody(
      children: children,
      axisDirection: axisDirection,
    ),
);

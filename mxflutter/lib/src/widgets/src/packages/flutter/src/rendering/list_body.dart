//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/list_body.dart';
import 'dart:math' as math;
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerListBodySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_listBodyParentData.funName] = _listBodyParentData;
  m[_renderListBody.funName] = _renderListBody;
  return m;
}

var _listBodyParentData = MXFunctionInvoke(
  "ListBodyParentData",
  () => ListBodyParentData(),
  [],
);
var _renderListBody = MXFunctionInvoke(
  "RenderListBody",
  ({
    dynamic children,
    AxisDirection axisDirection = AxisDirection.down,
  }) =>
      RenderListBody(
    children: toListT<RenderBox>(children),
    axisDirection: axisDirection,
  ),
  [
    "children",
    "axisDirection",
  ],
);

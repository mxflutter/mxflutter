//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/custom_layout.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCustomLayoutSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[multiChildLayoutParentData.funName] = multiChildLayoutParentData;
  m[renderCustomMultiChildLayoutBox.funName] = renderCustomMultiChildLayoutBox;
  return m;
}
var multiChildLayoutParentData = MXFunctionInvoke(
    "MultiChildLayoutParentData",
    ({
    }) =>
      MultiChildLayoutParentData(
    ),
);
var renderCustomMultiChildLayoutBox = MXFunctionInvoke(
    "RenderCustomMultiChildLayoutBox",
    ({
      List<RenderBox> children,
      MultiChildLayoutDelegate delegate,
    }) =>
      RenderCustomMultiChildLayoutBox(
      children: children,
      delegate: delegate,
    ),
);

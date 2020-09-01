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
  m[_multiChildLayoutParentData.funName] = _multiChildLayoutParentData;
  m[_renderCustomMultiChildLayoutBox.funName] =
      _renderCustomMultiChildLayoutBox;
  return m;
}

var _multiChildLayoutParentData = MXFunctionInvoke(
  "MultiChildLayoutParentData",
  () => MultiChildLayoutParentData(),
  [],
);
var _renderCustomMultiChildLayoutBox = MXFunctionInvoke(
  "RenderCustomMultiChildLayoutBox",
  ({
    dynamic children,
    MultiChildLayoutDelegate delegate,
  }) =>
      RenderCustomMultiChildLayoutBox(
    children: toListT<RenderBox>(children),
    delegate: delegate,
  ),
  [
    "children",
    "delegate",
  ],
);

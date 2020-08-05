//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/sliver_fixed_extent_list.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverFixedExtentListSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderSliverFixedExtentList.funName] = _renderSliverFixedExtentList;
  return m;
}
var _renderSliverFixedExtentList = MXFunctionInvoke(
    "RenderSliverFixedExtentList",
    (
      {
      RenderSliverBoxChildManager childManager,
      double itemExtent,
      }
    ) =>
      RenderSliverFixedExtentList(
      childManager: childManager,
      itemExtent: itemExtent?.toDouble(),
    ),
);

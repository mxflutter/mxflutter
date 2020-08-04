//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_fixed_extent_list.dart';


class MXProxySliverFixedExtentList {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[renderSliverFixedExtentList.funName] = renderSliverFixedExtentList;
    return m;
  }
  static var renderSliverFixedExtentList = MXFunctionInvoke(
      "RenderSliverFixedExtentList",
      ({
        RenderSliverBoxChildManager childManager,
        dynamic itemExtent,
      }) =>
        RenderSliverFixedExtentList(
        childManager: childManager,
        itemExtent: itemExtent?.toDouble(),
      ),
    );
}

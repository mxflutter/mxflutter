//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_padding.dart';


class MXProxySliverPadding {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[renderSliverPadding.funName] = renderSliverPadding;
    return m;
  }
  static var renderSliverPadding = MXFunctionInvoke(
      "RenderSliverPadding",
      ({
        EdgeInsetsGeometry padding,
        TextDirection textDirection,
        RenderSliver child,
      }) =>
        RenderSliverPadding(
        padding: padding,
        textDirection: textDirection,
        child: child,
      ),
    );
}

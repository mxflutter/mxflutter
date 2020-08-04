//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/single_child_scroll_view.dart';


class MXProxySingleChildScrollView {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[singleChildScrollView.funName] = singleChildScrollView;
    return m;
  }
  static var singleChildScrollView = MXFunctionInvoke(
      "SingleChildScrollView",
      ({
        Key key,
        Axis scrollDirection = Axis.vertical,
        bool reverse = false,
        EdgeInsetsGeometry padding,
        bool primary,
        ScrollPhysics physics,
        ScrollController controller,
        Widget child,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }) =>
        SingleChildScrollView(
        key: key,
        scrollDirection: scrollDirection,
        reverse: reverse,
        padding: padding,
        primary: primary,
        physics: physics,
        controller: controller,
        child: child,
        dragStartBehavior: dragStartBehavior,
      ),
    );
}

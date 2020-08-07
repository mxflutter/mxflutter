//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/single_child_scroll_view.dart';
import 'dart:math' as math;
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/primary_scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scrollable.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSingleChildScrollViewSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_singleChildScrollView.funName] = _singleChildScrollView;
  return m;
}
var _singleChildScrollView = MXFunctionInvoke(
    "SingleChildScrollView",
    (
      {
      Key key,
      Axis scrollDirection = Axis.vertical,
      bool reverse = false,
      EdgeInsetsGeometry padding,
      bool primary,
      ScrollPhysics physics,
      ScrollController controller,
      Widget child,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }
    ) =>
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

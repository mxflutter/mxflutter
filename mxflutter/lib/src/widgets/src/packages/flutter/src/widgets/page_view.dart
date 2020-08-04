//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/page_view.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/page_storage.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:flutter/src/widgets/sliver_fill.dart';
import 'package:flutter/src/widgets/viewport.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPageViewSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[pageController.funName] = pageController;
  m[pageMetrics.funName] = pageMetrics;
  m[pageScrollPhysics.funName] = pageScrollPhysics;
  m[pageView.funName] = pageView;
  m[pageView_builder.funName] = pageView_builder;
  m[pageView_custom.funName] = pageView_custom;
  return m;
}
var pageController = MXFunctionInvoke(
    "PageController",
    ({
      int initialPage = 0,
      bool keepPage = true,
      dynamic viewportFraction = 1.0,
    }) =>
      PageController(
      initialPage: initialPage,
      keepPage: keepPage,
      viewportFraction: viewportFraction,
    ),
);
var pageMetrics = MXFunctionInvoke(
    "PageMetrics",
    ({
      dynamic minScrollExtent,
      dynamic maxScrollExtent,
      dynamic pixels,
      dynamic viewportDimension,
      AxisDirection axisDirection,
      dynamic viewportFraction,
    }) =>
      PageMetrics(
      minScrollExtent: minScrollExtent,
      maxScrollExtent: maxScrollExtent,
      pixels: pixels,
      viewportDimension: viewportDimension,
      axisDirection: axisDirection,
      viewportFraction: viewportFraction,
    ),
);
var pageScrollPhysics = MXFunctionInvoke(
    "PageScrollPhysics",
    ({
      ScrollPhysics parent,
    }) =>
      PageScrollPhysics(
      parent: parent,
    ),
);
var pageView = MXFunctionInvoke(
    "PageView",
    ({
      Key key,
      Axis scrollDirection = Axis.horizontal,
      bool reverse = false,
      PageController controller,
      ScrollPhysics physics,
      bool pageSnapping = true,
      dynamic onPageChanged,
      List<Widget> children,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      bool allowImplicitScrolling = false,
    }) =>
      PageView(
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      physics: physics,
      pageSnapping: pageSnapping,
      onPageChanged: createValueChangedGenericClosure<int>(pageView.buildOwner, onPageChanged),
      children: children,
      dragStartBehavior: dragStartBehavior,
      allowImplicitScrolling: allowImplicitScrolling,
    ),
);
var pageView_builder = MXFunctionInvoke(
  "pageView.builder",
    ({
      Key key,
      Axis scrollDirection = Axis.horizontal,
      bool reverse = false,
      PageController controller,
      ScrollPhysics physics,
      bool pageSnapping = true,
      dynamic onPageChanged,
      dynamic itemBuilder,
      int itemCount,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      bool allowImplicitScrolling = false,
    }) =>
      PageView.builder(
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      physics: physics,
      pageSnapping: pageSnapping,
      onPageChanged: createValueChangedGenericClosure<int>(pageView_builder.buildOwner, onPageChanged),
      itemBuilder: itemBuilder,
      itemCount: itemCount,
      dragStartBehavior: dragStartBehavior,
      allowImplicitScrolling: allowImplicitScrolling,
    ),
);
var pageView_custom = MXFunctionInvoke(
  "pageView.custom",
    ({
      Key key,
      Axis scrollDirection = Axis.horizontal,
      bool reverse = false,
      PageController controller,
      ScrollPhysics physics,
      bool pageSnapping = true,
      dynamic onPageChanged,
      SliverChildDelegate childrenDelegate,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      bool allowImplicitScrolling = false,
    }) =>
      PageView.custom(
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      physics: physics,
      pageSnapping: pageSnapping,
      onPageChanged: createValueChangedGenericClosure<int>(pageView_custom.buildOwner, onPageChanged),
      childrenDelegate: childrenDelegate,
      dragStartBehavior: dragStartBehavior,
      allowImplicitScrolling: allowImplicitScrolling,
    ),
);

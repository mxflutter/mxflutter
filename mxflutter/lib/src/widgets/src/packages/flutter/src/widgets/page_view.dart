//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/page_view.dart';
import 'dart:async';
import 'dart:math' as math;
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
  m[_pageController.funName] = _pageController;
  m[_pageMetrics.funName] = _pageMetrics;
  m[_pageScrollPhysics.funName] = _pageScrollPhysics;
  m[_pageView.funName] = _pageView;
  m[_pageViewBuilder.funName] = _pageViewBuilder;
  m[_pageViewCustom.funName] = _pageViewCustom;
  // MX modified begin
  m[_pageController_jumpToPage.funName] = _pageController_jumpToPage;
  // MX modified end
  return m;
}

var _pageController = MXFunctionInvoke(
  "PageController",
  ({
    int initialPage = 0,
    bool keepPage = true,
    dynamic viewportFraction = 1.0,
  }) =>
      PageController(
    initialPage: initialPage,
    keepPage: keepPage,
    viewportFraction: viewportFraction?.toDouble(),
  ),
  [
    "initialPage",
    "keepPage",
    "viewportFraction",
  ],
);
var _pageMetrics = MXFunctionInvoke(
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
    minScrollExtent: minScrollExtent?.toDouble(),
    maxScrollExtent: maxScrollExtent?.toDouble(),
    pixels: pixels?.toDouble(),
    viewportDimension: viewportDimension?.toDouble(),
    axisDirection: axisDirection,
    viewportFraction: viewportFraction?.toDouble(),
  ),
  [
    "minScrollExtent",
    "maxScrollExtent",
    "pixels",
    "viewportDimension",
    "axisDirection",
    "viewportFraction",
  ],
);
var _pageScrollPhysics = MXFunctionInvoke(
  "PageScrollPhysics",
  ({
    ScrollPhysics parent,
  }) =>
      PageScrollPhysics(
    parent: parent,
  ),
  [
    "parent",
  ],
);
var _pageView = MXFunctionInvoke(
  "PageView",
  ({
    Key key,
    Axis scrollDirection = Axis.horizontal,
    bool reverse = false,
    PageController controller,
    ScrollPhysics physics,
    bool pageSnapping = true,
    dynamic onPageChanged,
    dynamic children = const <Widget>[],
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
    onPageChanged: createValueChangedGenericClosure<int>(_pageView.buildOwner, onPageChanged),
    children: toListT<Widget>(children),
    dragStartBehavior: dragStartBehavior,
    allowImplicitScrolling: allowImplicitScrolling,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "physics",
    "pageSnapping",
    "onPageChanged",
    "children",
    "dragStartBehavior",
    "allowImplicitScrolling",
  ],
);
var _pageViewBuilder = MXFunctionInvoke(
  "PageView.builder",
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

    /// MX modified begin -add children
    dynamic children,

    /// MX modified end
  }) =>
      PageView.builder(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    physics: physics,
    pageSnapping: pageSnapping,
    onPageChanged: createValueChangedGenericClosure<int>(_pageViewBuilder.buildOwner, onPageChanged),

    /// MX modified begin
    itemBuilder: (BuildContext context, int index) {
      List<Widget> list = toListT<Widget>(children);
      return list[index];
    },

    /// MX modified end
    itemCount: itemCount,
    dragStartBehavior: dragStartBehavior,
    allowImplicitScrolling: allowImplicitScrolling,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "physics",
    "pageSnapping",
    "onPageChanged",
    "itemBuilder",
    "itemCount",
    "dragStartBehavior",
    "allowImplicitScrolling",

    /// MX modified begin
    "children",

    /// MX modified end
  ],
);
var _pageViewCustom = MXFunctionInvoke(
  "PageView.custom",
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
    onPageChanged: createValueChangedGenericClosure<int>(_pageViewCustom.buildOwner, onPageChanged),
    childrenDelegate: childrenDelegate,
    dragStartBehavior: dragStartBehavior,
    allowImplicitScrolling: allowImplicitScrolling,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "physics",
    "pageSnapping",
    "onPageChanged",
    "childrenDelegate",
    "dragStartBehavior",
    "allowImplicitScrolling",
  ],
);

// MX modified begin
var _pageController_jumpToPage = MXFunctionInvoke(
  "PageController#jumpToPage",
  ({
    PageController mirrorObj,
    int page,
  }) =>
      mirrorObj.jumpToPage(page),
  [
    "mirrorObj",
    "page",
  ],
);
// MX modified end

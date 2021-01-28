//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/list_wheel_scroll_view.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:math' as math;
import 'package:flutter/animation.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';
import 'package:flutter/src/widgets/scrollable.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerListWheelScrollViewSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_listWheelChildListDelegate.funName] = _listWheelChildListDelegate;
  m[_listWheelChildLoopingListDelegate.funName] = _listWheelChildLoopingListDelegate;
  m[_listWheelChildBuilderDelegate.funName] = _listWheelChildBuilderDelegate;
  m[_fixedExtentScrollController.funName] = _fixedExtentScrollController;
  m[_fixedExtentMetrics.funName] = _fixedExtentMetrics;
  m[_fixedExtentScrollPhysics.funName] = _fixedExtentScrollPhysics;
  m[_listWheelScrollView.funName] = _listWheelScrollView;
  m[_listWheelScrollViewUseDelegate.funName] = _listWheelScrollViewUseDelegate;
  m[_listWheelElement.funName] = _listWheelElement;
  m[_listWheelViewport.funName] = _listWheelViewport;
  return m;
}

var _listWheelChildListDelegate = MXFunctionInvoke(
  "ListWheelChildListDelegate",
  ({
    dynamic children,
  }) =>
      ListWheelChildListDelegate(
    children: toListT<Widget>(children),
  ),
  [
    "children",
  ],
);
var _listWheelChildLoopingListDelegate = MXFunctionInvoke(
  "ListWheelChildLoopingListDelegate",
  ({
    dynamic children,
  }) =>
      ListWheelChildLoopingListDelegate(
    children: toListT<Widget>(children),
  ),
  [
    "children",
  ],
);
var _listWheelChildBuilderDelegate = MXFunctionInvoke(
  "ListWheelChildBuilderDelegate",
  ({
    dynamic builder,
    int childCount,
  }) =>
      ListWheelChildBuilderDelegate(
    builder: null,
    childCount: childCount,
  ),
  [
    "builder",
    "childCount",
  ],
);
var _fixedExtentScrollController = MXFunctionInvoke(
  "FixedExtentScrollController",
  ({
    int initialItem = 0,
  }) =>
      FixedExtentScrollController(
    initialItem: initialItem,
  ),
  [
    "initialItem",
  ],
);
var _fixedExtentMetrics = MXFunctionInvoke(
  "FixedExtentMetrics",
  ({
    dynamic minScrollExtent,
    dynamic maxScrollExtent,
    dynamic pixels,
    dynamic viewportDimension,
    AxisDirection axisDirection,
    int itemIndex,
  }) =>
      FixedExtentMetrics(
    minScrollExtent: minScrollExtent?.toDouble(),
    maxScrollExtent: maxScrollExtent?.toDouble(),
    pixels: pixels?.toDouble(),
    viewportDimension: viewportDimension?.toDouble(),
    axisDirection: axisDirection,
    itemIndex: itemIndex,
  ),
  [
    "minScrollExtent",
    "maxScrollExtent",
    "pixels",
    "viewportDimension",
    "axisDirection",
    "itemIndex",
  ],
);
var _fixedExtentScrollPhysics = MXFunctionInvoke(
  "FixedExtentScrollPhysics",
  ({
    ScrollPhysics parent,
  }) =>
      FixedExtentScrollPhysics(
    parent: parent,
  ),
  [
    "parent",
  ],
);
var _listWheelScrollView = MXFunctionInvoke(
  "ListWheelScrollView",
  ({
    Key key,
    ScrollController controller,
    ScrollPhysics physics,
    dynamic diameterRatio = 2.0,
    dynamic perspective = 0.003,
    dynamic offAxisFraction = 0.0,
    bool useMagnifier = false,
    dynamic magnification = 1.0,
    dynamic overAndUnderCenterOpacity = 1.0,
    dynamic itemExtent,
    dynamic squeeze = 1.0,
    dynamic onSelectedItemChanged,
    bool renderChildrenOutsideViewport = false,
    Clip clipBehavior = Clip.hardEdge,
    dynamic children,
  }) =>
      ListWheelScrollView(
    key: key,
    controller: controller,
    physics: physics,
    diameterRatio: diameterRatio?.toDouble(),
    perspective: perspective?.toDouble(),
    offAxisFraction: offAxisFraction?.toDouble(),
    useMagnifier: useMagnifier,
    magnification: magnification?.toDouble(),
    overAndUnderCenterOpacity: overAndUnderCenterOpacity?.toDouble(),
    itemExtent: itemExtent?.toDouble(),
    squeeze: squeeze?.toDouble(),
    onSelectedItemChanged:
        createValueChangedGenericClosure<int>(_listWheelScrollView.buildOwner, onSelectedItemChanged),
    renderChildrenOutsideViewport: renderChildrenOutsideViewport,
    clipBehavior: clipBehavior,
    children: toListT<Widget>(children),
  ),
  [
    "key",
    "controller",
    "physics",
    "diameterRatio",
    "perspective",
    "offAxisFraction",
    "useMagnifier",
    "magnification",
    "overAndUnderCenterOpacity",
    "itemExtent",
    "squeeze",
    "onSelectedItemChanged",
    "renderChildrenOutsideViewport",
    "clipBehavior",
    "children",
  ],
);
var _listWheelScrollViewUseDelegate = MXFunctionInvoke(
  "ListWheelScrollView.useDelegate",
  ({
    Key key,
    ScrollController controller,
    ScrollPhysics physics,
    dynamic diameterRatio = 2.0,
    dynamic perspective = 0.003,
    dynamic offAxisFraction = 0.0,
    bool useMagnifier = false,
    dynamic magnification = 1.0,
    dynamic overAndUnderCenterOpacity = 1.0,
    dynamic itemExtent,
    dynamic squeeze = 1.0,
    dynamic onSelectedItemChanged,
    bool renderChildrenOutsideViewport = false,
    Clip clipBehavior = Clip.hardEdge,
    dynamic childDelegate,
  }) =>
      ListWheelScrollView.useDelegate(
    key: key,
    controller: controller,
    physics: physics,
    diameterRatio: diameterRatio?.toDouble(),
    perspective: perspective?.toDouble(),
    offAxisFraction: offAxisFraction?.toDouble(),
    useMagnifier: useMagnifier,
    magnification: magnification?.toDouble(),
    overAndUnderCenterOpacity: overAndUnderCenterOpacity?.toDouble(),
    itemExtent: itemExtent?.toDouble(),
    squeeze: squeeze?.toDouble(),
    onSelectedItemChanged:
        createValueChangedGenericClosure<int>(_listWheelScrollViewUseDelegate.buildOwner, onSelectedItemChanged),
    renderChildrenOutsideViewport: renderChildrenOutsideViewport,
    clipBehavior: clipBehavior,
    childDelegate: childDelegate,
  ),
  [
    "key",
    "controller",
    "physics",
    "diameterRatio",
    "perspective",
    "offAxisFraction",
    "useMagnifier",
    "magnification",
    "overAndUnderCenterOpacity",
    "itemExtent",
    "squeeze",
    "onSelectedItemChanged",
    "renderChildrenOutsideViewport",
    "clipBehavior",
    "childDelegate",
  ],
);
var _listWheelElement = MXFunctionInvoke(
  "ListWheelElement",
  ({
    dynamic widget,
  }) =>
      ListWheelElement(
    widget,
  ),
  [
    // MX modified begin
    "__mx_widget",
    // MX modified end
  ],
);
var _listWheelViewport = MXFunctionInvoke(
  "ListWheelViewport",
  ({
    Key key,
    dynamic diameterRatio = 2.0,
    dynamic perspective = 0.003,
    dynamic offAxisFraction = 0.0,
    bool useMagnifier = false,
    dynamic magnification = 1.0,
    dynamic overAndUnderCenterOpacity = 1.0,
    dynamic itemExtent,
    dynamic squeeze = 1.0,
    bool renderChildrenOutsideViewport = false,
    ViewportOffset offset,
    dynamic childDelegate,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      ListWheelViewport(
    key: key,
    diameterRatio: diameterRatio?.toDouble(),
    perspective: perspective?.toDouble(),
    offAxisFraction: offAxisFraction?.toDouble(),
    useMagnifier: useMagnifier,
    magnification: magnification?.toDouble(),
    overAndUnderCenterOpacity: overAndUnderCenterOpacity?.toDouble(),
    itemExtent: itemExtent?.toDouble(),
    squeeze: squeeze?.toDouble(),
    renderChildrenOutsideViewport: renderChildrenOutsideViewport,
    offset: offset,
    childDelegate: childDelegate,
    clipBehavior: clipBehavior,
  ),
  [
    "key",
    "diameterRatio",
    "perspective",
    "offAxisFraction",
    "useMagnifier",
    "magnification",
    "overAndUnderCenterOpacity",
    "itemExtent",
    "squeeze",
    "renderChildrenOutsideViewport",
    "offset",
    "childDelegate",
    "clipBehavior",
  ],
);

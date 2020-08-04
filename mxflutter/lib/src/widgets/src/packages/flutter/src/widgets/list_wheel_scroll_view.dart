//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/list_wheel_scroll_view.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:math';
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
  m[listWheelChildListDelegate.funName] = listWheelChildListDelegate;
  m[listWheelChildLoopingListDelegate.funName] = listWheelChildLoopingListDelegate;
  m[listWheelChildBuilderDelegate.funName] = listWheelChildBuilderDelegate;
  m[fixedExtentScrollController.funName] = fixedExtentScrollController;
  m[fixedExtentMetrics.funName] = fixedExtentMetrics;
  m[fixedExtentScrollPhysics.funName] = fixedExtentScrollPhysics;
  m[listWheelScrollView.funName] = listWheelScrollView;
  m[listWheelScrollView_useDelegate.funName] = listWheelScrollView_useDelegate;
  m[listWheelElement.funName] = listWheelElement;
  m[listWheelViewport.funName] = listWheelViewport;
  return m;
}
var listWheelChildListDelegate = MXFunctionInvoke(
    "ListWheelChildListDelegate",
    ({
      List<Widget> children,
    }) =>
      ListWheelChildListDelegate(
      children: children,
    ),
);
var listWheelChildLoopingListDelegate = MXFunctionInvoke(
    "ListWheelChildLoopingListDelegate",
    ({
      List<Widget> children,
    }) =>
      ListWheelChildLoopingListDelegate(
      children: children,
    ),
);
var listWheelChildBuilderDelegate = MXFunctionInvoke(
    "ListWheelChildBuilderDelegate",
    ({
      dynamic builder,
      int childCount,
    }) =>
      ListWheelChildBuilderDelegate(
      builder: builder,
      childCount: childCount,
    ),
);
var fixedExtentScrollController = MXFunctionInvoke(
    "FixedExtentScrollController",
    ({
      int initialItem = 0,
    }) =>
      FixedExtentScrollController(
      initialItem: initialItem,
    ),
);
var fixedExtentMetrics = MXFunctionInvoke(
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
      minScrollExtent: minScrollExtent,
      maxScrollExtent: maxScrollExtent,
      pixels: pixels,
      viewportDimension: viewportDimension,
      axisDirection: axisDirection,
      itemIndex: itemIndex,
    ),
);
var fixedExtentScrollPhysics = MXFunctionInvoke(
    "FixedExtentScrollPhysics",
    ({
      ScrollPhysics parent,
    }) =>
      FixedExtentScrollPhysics(
      parent: parent,
    ),
);
var listWheelScrollView = MXFunctionInvoke(
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
      bool clipToSize = true,
      bool renderChildrenOutsideViewport = false,
      List<Widget> children,
    }) =>
      ListWheelScrollView(
      key: key,
      controller: controller,
      physics: physics,
      diameterRatio: diameterRatio,
      perspective: perspective,
      offAxisFraction: offAxisFraction,
      useMagnifier: useMagnifier,
      magnification: magnification,
      overAndUnderCenterOpacity: overAndUnderCenterOpacity,
      itemExtent: itemExtent,
      squeeze: squeeze,
      onSelectedItemChanged: createValueChangedGenericClosure<int>(listWheelScrollView.buildOwner, onSelectedItemChanged),
      clipToSize: clipToSize,
      renderChildrenOutsideViewport: renderChildrenOutsideViewport,
      children: children,
    ),
);
var listWheelScrollView_useDelegate = MXFunctionInvoke(
  "listWheelScrollView.useDelegate",
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
      bool clipToSize = true,
      bool renderChildrenOutsideViewport = false,
      ListWheelChildDelegate childDelegate,
    }) =>
      ListWheelScrollView.useDelegate(
      key: key,
      controller: controller,
      physics: physics,
      diameterRatio: diameterRatio,
      perspective: perspective,
      offAxisFraction: offAxisFraction,
      useMagnifier: useMagnifier,
      magnification: magnification,
      overAndUnderCenterOpacity: overAndUnderCenterOpacity,
      itemExtent: itemExtent,
      squeeze: squeeze,
      onSelectedItemChanged: createValueChangedGenericClosure<int>(listWheelScrollView_useDelegate.buildOwner, onSelectedItemChanged),
      clipToSize: clipToSize,
      renderChildrenOutsideViewport: renderChildrenOutsideViewport,
      childDelegate: childDelegate,
    ),
);
var listWheelElement = MXFunctionInvoke(
    "ListWheelElement",
    ({
      ListWheelViewport widget,
    }) =>
      ListWheelElement(
      widget,
    ),
);
var listWheelViewport = MXFunctionInvoke(
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
      bool clipToSize = true,
      bool renderChildrenOutsideViewport = false,
      ViewportOffset offset,
      ListWheelChildDelegate childDelegate,
    }) =>
      ListWheelViewport(
      key: key,
      diameterRatio: diameterRatio,
      perspective: perspective,
      offAxisFraction: offAxisFraction,
      useMagnifier: useMagnifier,
      magnification: magnification,
      overAndUnderCenterOpacity: overAndUnderCenterOpacity,
      itemExtent: itemExtent,
      squeeze: squeeze,
      clipToSize: clipToSize,
      renderChildrenOutsideViewport: renderChildrenOutsideViewport,
      offset: offset,
      childDelegate: childDelegate,
    ),
);

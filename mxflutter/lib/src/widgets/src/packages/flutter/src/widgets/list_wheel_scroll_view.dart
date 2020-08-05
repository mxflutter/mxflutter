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
  m[_listWheelChildListDelegate.funName] = _listWheelChildListDelegate;
  m[_listWheelChildLoopingListDelegate.funName] = _listWheelChildLoopingListDelegate;
  m[_listWheelChildBuilderDelegate.funName] = _listWheelChildBuilderDelegate;
  m[_fixedExtentScrollController.funName] = _fixedExtentScrollController;
  m[_fixedExtentMetrics.funName] = _fixedExtentMetrics;
  m[_fixedExtentScrollPhysics.funName] = _fixedExtentScrollPhysics;
  m[_listWheelScrollView.funName] = _listWheelScrollView;
  m[_listWheelScrollView_useDelegate.funName] = _listWheelScrollView_useDelegate;
  m[_listWheelElement.funName] = _listWheelElement;
  m[_listWheelViewport.funName] = _listWheelViewport;
  return m;
}
var _listWheelChildListDelegate = MXFunctionInvoke(
    "ListWheelChildListDelegate",
    (
      {
      List<Widget> children,
      }
    ) =>
      ListWheelChildListDelegate(
      children: children,
    ),
);
var _listWheelChildLoopingListDelegate = MXFunctionInvoke(
    "ListWheelChildLoopingListDelegate",
    (
      {
      List<Widget> children,
      }
    ) =>
      ListWheelChildLoopingListDelegate(
      children: children,
    ),
);
var _listWheelChildBuilderDelegate = MXFunctionInvoke(
    "ListWheelChildBuilderDelegate",
    (
      {
      dynamic builder,
      int childCount,
      }
    ) =>
      ListWheelChildBuilderDelegate(
      builder: null,
      childCount: childCount,
    ),
);
var _fixedExtentScrollController = MXFunctionInvoke(
    "FixedExtentScrollController",
    (
      {
      int initialItem = 0,
      }
    ) =>
      FixedExtentScrollController(
      initialItem: initialItem,
    ),
);
var _fixedExtentMetrics = MXFunctionInvoke(
    "FixedExtentMetrics",
    (
      {
      double minScrollExtent,
      double maxScrollExtent,
      double pixels,
      double viewportDimension,
      AxisDirection axisDirection,
      int itemIndex,
      }
    ) =>
      FixedExtentMetrics(
      minScrollExtent: minScrollExtent?.toDouble(),
      maxScrollExtent: maxScrollExtent?.toDouble(),
      pixels: pixels?.toDouble(),
      viewportDimension: viewportDimension?.toDouble(),
      axisDirection: axisDirection,
      itemIndex: itemIndex,
    ),
);
var _fixedExtentScrollPhysics = MXFunctionInvoke(
    "FixedExtentScrollPhysics",
    (
      {
      ScrollPhysics parent,
      }
    ) =>
      FixedExtentScrollPhysics(
      parent: parent,
    ),
);
var _listWheelScrollView = MXFunctionInvoke(
    "ListWheelScrollView",
    (
      {
      Key key,
      ScrollController controller,
      ScrollPhysics physics,
      double diameterRatio = 2.0,
      double perspective = 0.003,
      double offAxisFraction = 0.0,
      bool useMagnifier = false,
      double magnification = 1.0,
      double overAndUnderCenterOpacity = 1.0,
      double itemExtent,
      double squeeze = 1.0,
      dynamic onSelectedItemChanged,
      bool clipToSize = true,
      bool renderChildrenOutsideViewport = false,
      List<Widget> children,
      }
    ) =>
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
      onSelectedItemChanged: createValueChangedGenericClosure<int>(_listWheelScrollView.buildOwner, onSelectedItemChanged),
      clipToSize: clipToSize,
      renderChildrenOutsideViewport: renderChildrenOutsideViewport,
      children: children,
    ),
);
var _listWheelScrollView_useDelegate = MXFunctionInvoke(
  "listWheelScrollView.useDelegate",
    (
      {
      Key key,
      ScrollController controller,
      ScrollPhysics physics,
      double diameterRatio = 2.0,
      double perspective = 0.003,
      double offAxisFraction = 0.0,
      bool useMagnifier = false,
      double magnification = 1.0,
      double overAndUnderCenterOpacity = 1.0,
      double itemExtent,
      double squeeze = 1.0,
      dynamic onSelectedItemChanged,
      bool clipToSize = true,
      bool renderChildrenOutsideViewport = false,
      ListWheelChildDelegate childDelegate,
      }
    ) =>
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
      onSelectedItemChanged: createValueChangedGenericClosure<int>(_listWheelScrollView_useDelegate.buildOwner, onSelectedItemChanged),
      clipToSize: clipToSize,
      renderChildrenOutsideViewport: renderChildrenOutsideViewport,
      childDelegate: childDelegate,
    ),
);
var _listWheelElement = MXFunctionInvoke(
    "ListWheelElement",
    (
      {
      ListWheelViewport widget,
      }
    ) =>
      ListWheelElement(
      widget,
    ),
);
var _listWheelViewport = MXFunctionInvoke(
    "ListWheelViewport",
    (
      {
      Key key,
      double diameterRatio = 2.0,
      double perspective = 0.003,
      double offAxisFraction = 0.0,
      bool useMagnifier = false,
      double magnification = 1.0,
      double overAndUnderCenterOpacity = 1.0,
      double itemExtent,
      double squeeze = 1.0,
      bool clipToSize = true,
      bool renderChildrenOutsideViewport = false,
      ViewportOffset offset,
      ListWheelChildDelegate childDelegate,
      }
    ) =>
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
      clipToSize: clipToSize,
      renderChildrenOutsideViewport: renderChildrenOutsideViewport,
      offset: offset,
      childDelegate: childDelegate,
    ),
);

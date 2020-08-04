//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/list_wheel_scroll_view.dart';


class MXProxyListWheelScrollView {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
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
  static var listWheelChildListDelegate = MXFunctionInvoke(
      "ListWheelChildListDelegate",
      ({
        List<Widget> children,
      }) =>
        ListWheelChildListDelegate(
        children: children,
      ),
    );
  static var listWheelChildLoopingListDelegate = MXFunctionInvoke(
      "ListWheelChildLoopingListDelegate",
      ({
        List<Widget> children,
      }) =>
        ListWheelChildLoopingListDelegate(
        children: children,
      ),
    );
  static var listWheelChildBuilderDelegate = MXFunctionInvoke(
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
  static var fixedExtentScrollController = MXFunctionInvoke(
      "FixedExtentScrollController",
      ({
        int initialItem = 0,
      }) =>
        FixedExtentScrollController(
        initialItem: initialItem,
      ),
    );
  static var fixedExtentMetrics = MXFunctionInvoke(
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
    );
  static var fixedExtentScrollPhysics = MXFunctionInvoke(
      "FixedExtentScrollPhysics",
      ({
        ScrollPhysics parent,
      }) =>
        FixedExtentScrollPhysics(
        parent: parent,
      ),
    );
  static var listWheelScrollView = MXFunctionInvoke(
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
        diameterRatio: diameterRatio?.toDouble(),
        perspective: perspective?.toDouble(),
        offAxisFraction: offAxisFraction?.toDouble(),
        useMagnifier: useMagnifier,
        magnification: magnification?.toDouble(),
        overAndUnderCenterOpacity: overAndUnderCenterOpacity?.toDouble(),
        itemExtent: itemExtent?.toDouble(),
        squeeze: squeeze?.toDouble(),
        onSelectedItemChanged: createValueChangedGenericClosure<int>(listWheelScrollView.buildOwner, onSelectedItemChanged),
        clipToSize: clipToSize,
        renderChildrenOutsideViewport: renderChildrenOutsideViewport,
        children: children,
      ),
    );
  static var listWheelScrollView_useDelegate = MXFunctionInvoke(
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
        diameterRatio: diameterRatio?.toDouble(),
        perspective: perspective?.toDouble(),
        offAxisFraction: offAxisFraction?.toDouble(),
        useMagnifier: useMagnifier,
        magnification: magnification?.toDouble(),
        overAndUnderCenterOpacity: overAndUnderCenterOpacity?.toDouble(),
        itemExtent: itemExtent?.toDouble(),
        squeeze: squeeze?.toDouble(),
        onSelectedItemChanged: createValueChangedGenericClosure<int>(listWheelScrollView_useDelegate.buildOwner, onSelectedItemChanged),
        clipToSize: clipToSize,
        renderChildrenOutsideViewport: renderChildrenOutsideViewport,
        childDelegate: childDelegate,
      ),
    );
  static var listWheelElement = MXFunctionInvoke(
      "ListWheelElement",
      ({
        ListWheelViewport widget,
      }) =>
        ListWheelElement(
        widget,
      ),
    );
  static var listWheelViewport = MXFunctionInvoke(
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
}

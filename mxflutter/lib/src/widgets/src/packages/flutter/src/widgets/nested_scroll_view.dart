//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/nested_scroll_view.dart';


class MXProxyNestedScrollView {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[nestedScrollView.funName] = nestedScrollView;
    m[nestedScrollViewState.funName] = nestedScrollViewState;
    m[sliverOverlapAbsorberHandle.funName] = sliverOverlapAbsorberHandle;
    m[sliverOverlapAbsorber.funName] = sliverOverlapAbsorber;
    m[renderSliverOverlapAbsorber.funName] = renderSliverOverlapAbsorber;
    m[sliverOverlapInjector.funName] = sliverOverlapInjector;
    m[renderSliverOverlapInjector.funName] = renderSliverOverlapInjector;
    m[nestedScrollViewViewport.funName] = nestedScrollViewViewport;
    m[renderNestedScrollViewViewport.funName] = renderNestedScrollViewViewport;
    return m;
  }
  static var nestedScrollView = MXFunctionInvoke(
      "NestedScrollView",
      ({
        Key key,
        ScrollController controller,
        Axis scrollDirection = Axis.vertical,
        bool reverse = false,
        ScrollPhysics physics,
        dynamic headerSliverBuilder,
        Widget body,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }) =>
        NestedScrollView(
        key: key,
        controller: controller,
        scrollDirection: scrollDirection,
        reverse: reverse,
        physics: physics,
        headerSliverBuilder: headerSliverBuilder,
        body: body,
        dragStartBehavior: dragStartBehavior,
      ),
    );
  static var nestedScrollViewState = MXFunctionInvoke(
      "NestedScrollViewState",
      ({
      }) =>
        NestedScrollViewState(
      ),
    );
  static var sliverOverlapAbsorberHandle = MXFunctionInvoke(
      "SliverOverlapAbsorberHandle",
      ({
      }) =>
        SliverOverlapAbsorberHandle(
      ),
    );
  static var sliverOverlapAbsorber = MXFunctionInvoke(
      "SliverOverlapAbsorber",
      ({
        Key key,
        SliverOverlapAbsorberHandle handle,
        Widget child,
        Widget sliver,
      }) =>
        SliverOverlapAbsorber(
        key: key,
        handle: handle,
        child: child,
        sliver: sliver,
      ),
    );
  static var renderSliverOverlapAbsorber = MXFunctionInvoke(
      "RenderSliverOverlapAbsorber",
      ({
        SliverOverlapAbsorberHandle handle,
        RenderSliver child,
        RenderSliver sliver,
      }) =>
        RenderSliverOverlapAbsorber(
        handle: handle,
        child: child,
        sliver: sliver,
      ),
    );
  static var sliverOverlapInjector = MXFunctionInvoke(
      "SliverOverlapInjector",
      ({
        Key key,
        SliverOverlapAbsorberHandle handle,
        Widget child,
        Widget sliver,
      }) =>
        SliverOverlapInjector(
        key: key,
        handle: handle,
        child: child,
        sliver: sliver,
      ),
    );
  static var renderSliverOverlapInjector = MXFunctionInvoke(
      "RenderSliverOverlapInjector",
      ({
        SliverOverlapAbsorberHandle handle,
      }) =>
        RenderSliverOverlapInjector(
        handle: handle,
      ),
    );
  static var nestedScrollViewViewport = MXFunctionInvoke(
      "NestedScrollViewViewport",
      ({
        Key key,
        AxisDirection axisDirection = AxisDirection.down,
        AxisDirection crossAxisDirection,
        dynamic anchor = 0.0,
        ViewportOffset offset,
        Key center,
        List<Widget> slivers,
        SliverOverlapAbsorberHandle handle,
      }) =>
        NestedScrollViewViewport(
        key: key,
        axisDirection: axisDirection,
        crossAxisDirection: crossAxisDirection,
        anchor: anchor?.toDouble(),
        offset: offset,
        center: center,
        slivers: slivers,
        handle: handle,
      ),
    );
  static var renderNestedScrollViewViewport = MXFunctionInvoke(
      "RenderNestedScrollViewViewport",
      ({
        AxisDirection axisDirection = AxisDirection.down,
        AxisDirection crossAxisDirection,
        ViewportOffset offset,
        dynamic anchor = 0.0,
        List<RenderSliver> children,
        RenderSliver center,
        SliverOverlapAbsorberHandle handle,
      }) =>
        RenderNestedScrollViewViewport(
        axisDirection: axisDirection,
        crossAxisDirection: crossAxisDirection,
        offset: offset,
        anchor: anchor?.toDouble(),
        children: children,
        center: center,
        handle: handle,
      ),
    );
}

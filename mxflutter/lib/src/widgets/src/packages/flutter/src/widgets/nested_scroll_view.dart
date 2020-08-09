//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/nested_scroll_view.dart';
import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/primary_scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_activity.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:flutter/src/widgets/sliver_fill.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/viewport.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerNestedScrollViewSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_nestedScrollView.funName] = _nestedScrollView;
  m[_nestedScrollViewState.funName] = _nestedScrollViewState;
  m[_sliverOverlapAbsorberHandle.funName] = _sliverOverlapAbsorberHandle;
  m[_sliverOverlapAbsorber.funName] = _sliverOverlapAbsorber;
  m[_renderSliverOverlapAbsorber.funName] = _renderSliverOverlapAbsorber;
  m[_sliverOverlapInjector.funName] = _sliverOverlapInjector;
  m[_renderSliverOverlapInjector.funName] = _renderSliverOverlapInjector;
  m[_nestedScrollViewViewport.funName] = _nestedScrollViewViewport;
  m[_renderNestedScrollViewViewport.funName] = _renderNestedScrollViewViewport;
  return m;
}
var _nestedScrollView = MXFunctionInvoke(
    "NestedScrollView",
    (
      {
      Key key,
      ScrollController controller,
      Axis scrollDirection = Axis.vertical,
      bool reverse = false,
      ScrollPhysics physics,
      dynamic headerSliverBuilder,
      Widget body,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }
    ) =>
      NestedScrollView(
      key: key,
      controller: controller,
      scrollDirection: scrollDirection,
      reverse: reverse,
      physics: physics,
      headerSliverBuilder: null,
      body: body,
      dragStartBehavior: dragStartBehavior,
    ),
);
var _nestedScrollViewState = MXFunctionInvoke(
    "NestedScrollViewState",
    (
    ) =>
      NestedScrollViewState(
    ),
);
var _sliverOverlapAbsorberHandle = MXFunctionInvoke(
    "SliverOverlapAbsorberHandle",
    (
    ) =>
      SliverOverlapAbsorberHandle(
    ),
);
var _sliverOverlapAbsorber = MXFunctionInvoke(
    "SliverOverlapAbsorber",
    (
      {
      Key key,
      SliverOverlapAbsorberHandle handle,
      Widget child,
      Widget sliver,
      }
    ) =>
      SliverOverlapAbsorber(
      key: key,
      handle: handle,
      child: child,
      sliver: sliver,
    ),
);
var _renderSliverOverlapAbsorber = MXFunctionInvoke(
    "RenderSliverOverlapAbsorber",
    (
      {
      SliverOverlapAbsorberHandle handle,
      RenderSliver child,
      RenderSliver sliver,
      }
    ) =>
      RenderSliverOverlapAbsorber(
      handle: handle,
      child: child,
      sliver: sliver,
    ),
);
var _sliverOverlapInjector = MXFunctionInvoke(
    "SliverOverlapInjector",
    (
      {
      Key key,
      SliverOverlapAbsorberHandle handle,
      Widget child,
      Widget sliver,
      }
    ) =>
      SliverOverlapInjector(
      key: key,
      handle: handle,
      child: child,
      sliver: sliver,
    ),
);
var _renderSliverOverlapInjector = MXFunctionInvoke(
    "RenderSliverOverlapInjector",
    (
      {
      SliverOverlapAbsorberHandle handle,
      }
    ) =>
      RenderSliverOverlapInjector(
      handle: handle,
    ),
);
var _nestedScrollViewViewport = MXFunctionInvoke(
    "NestedScrollViewViewport",
    (
      {
      Key key,
      AxisDirection axisDirection = AxisDirection.down,
      AxisDirection crossAxisDirection,
      dynamic anchor = 0.0,
      ViewportOffset offset,
      Key center,
      dynamic slivers,
      SliverOverlapAbsorberHandle handle,
      }
    ) =>
      NestedScrollViewViewport(
      key: key,
      axisDirection: axisDirection,
      crossAxisDirection: crossAxisDirection,
      anchor: anchor?.toDouble(),
      offset: offset,
      center: center,
      slivers: toListT<Widget>(slivers),
      handle: handle,
    ),
);
var _renderNestedScrollViewViewport = MXFunctionInvoke(
    "RenderNestedScrollViewViewport",
    (
      {
      AxisDirection axisDirection = AxisDirection.down,
      AxisDirection crossAxisDirection,
      ViewportOffset offset,
      dynamic anchor = 0.0,
      dynamic children,
      RenderSliver center,
      SliverOverlapAbsorberHandle handle,
      }
    ) =>
      RenderNestedScrollViewViewport(
      axisDirection: axisDirection,
      crossAxisDirection: crossAxisDirection,
      offset: offset,
      anchor: anchor?.toDouble(),
      children: toListT<RenderSliver>(children),
      center: center,
      handle: handle,
    ),
);

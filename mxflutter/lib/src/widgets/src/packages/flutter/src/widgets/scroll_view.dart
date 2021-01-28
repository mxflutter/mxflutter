//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'dart:math' as math;
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/primary_scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:flutter/src/widgets/viewport.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollViewSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollViewKeyboardDismissBehavior.funName] = _scrollViewKeyboardDismissBehavior;
  m[_customScrollView.funName] = _customScrollView;
  m[_listView.funName] = _listView;
  m[_listViewBuilder.funName] = _listViewBuilder;
  m[_listViewSeparated.funName] = _listViewSeparated;
  m[_listViewCustom.funName] = _listViewCustom;
  m[_gridView.funName] = _gridView;
  m[_gridViewBuilder.funName] = _gridViewBuilder;
  m[_gridViewCustom.funName] = _gridViewCustom;
  m[_gridViewCount.funName] = _gridViewCount;
  m[_gridViewExtent.funName] = _gridViewExtent;
  return m;
}

var _scrollViewKeyboardDismissBehavior = MXFunctionInvoke("ScrollViewKeyboardDismissBehavior",
    ({String name, int index}) => MXScrollViewKeyboardDismissBehavior.parse(name, index), ["name", "index"]);
var _customScrollView = MXFunctionInvoke(
  "CustomScrollView",
  ({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    Key center,
    dynamic anchor = 0.0,
    dynamic cacheExtent,
    dynamic slivers = const <Widget>[],
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      CustomScrollView(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    primary: primary,
    physics: physics,
    shrinkWrap: shrinkWrap,
    center: center,
    anchor: anchor?.toDouble(),
    cacheExtent: cacheExtent?.toDouble(),
    slivers: toListT<Widget>(slivers),
    semanticChildCount: semanticChildCount,
    dragStartBehavior: dragStartBehavior,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "primary",
    "physics",
    "shrinkWrap",
    "center",
    "anchor",
    "cacheExtent",
    "slivers",
    "semanticChildCount",
    "dragStartBehavior",
  ],
);
var _listView = MXFunctionInvoke(
  "ListView",
  ({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    dynamic itemExtent,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    dynamic cacheExtent,
    dynamic children = const <Widget>[],
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
  }) =>
      ListView(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    primary: primary,
    physics: physics,
    shrinkWrap: shrinkWrap,
    padding: padding,
    itemExtent: itemExtent?.toDouble(),
    addAutomaticKeepAlives: addAutomaticKeepAlives,
    addRepaintBoundaries: addRepaintBoundaries,
    addSemanticIndexes: addSemanticIndexes,
    cacheExtent: cacheExtent?.toDouble(),
    children: toListT<Widget>(children),
    semanticChildCount: semanticChildCount,
    dragStartBehavior: dragStartBehavior,
    keyboardDismissBehavior: keyboardDismissBehavior,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "primary",
    "physics",
    "shrinkWrap",
    "padding",
    "itemExtent",
    "addAutomaticKeepAlives",
    "addRepaintBoundaries",
    "addSemanticIndexes",
    "cacheExtent",
    "children",
    "semanticChildCount",
    "dragStartBehavior",
    "keyboardDismissBehavior",
  ],
);
var _listViewBuilder = MXFunctionInvoke(
  "ListView.builder",
  ({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    dynamic itemExtent,
    dynamic itemBuilder,
    int itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    dynamic cacheExtent,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,

    /// MX modified begin add children
    dynamic children,

    /// MX modified end
  }) =>
      ListView.builder(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    primary: primary,
    physics: physics,
    shrinkWrap: shrinkWrap,
    padding: padding,
    itemExtent: itemExtent?.toDouble(),

    /// MX modified begin add function
    itemBuilder: (BuildContext context, int index) {
      return children[index];
    },

    /// MX modified end
    itemCount: itemCount,
    addAutomaticKeepAlives: addAutomaticKeepAlives,
    addRepaintBoundaries: addRepaintBoundaries,
    addSemanticIndexes: addSemanticIndexes,
    cacheExtent: cacheExtent?.toDouble(),
    semanticChildCount: semanticChildCount,
    dragStartBehavior: dragStartBehavior,
    keyboardDismissBehavior: keyboardDismissBehavior,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "primary",
    "physics",
    "shrinkWrap",
    "padding",
    "itemExtent",
    "itemBuilder",
    "itemCount",
    "addAutomaticKeepAlives",
    "addRepaintBoundaries",
    "addSemanticIndexes",
    "cacheExtent",
    "semanticChildCount",
    "dragStartBehavior",
    "keyboardDismissBehavior",

    ///MX modified begin
    "children",

    ///MX modified end
  ],
);
var _listViewSeparated = MXFunctionInvoke(
  "ListView.separated",
  ({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    dynamic itemBuilder,
    dynamic separatorBuilder,
    int itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    dynamic cacheExtent,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,

    /// MX modified begin -add children
    dynamic children,
    dynamic separatorChildren,

    /// MX modified end
  }) =>
      ListView.separated(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    primary: primary,
    physics: physics,
    shrinkWrap: shrinkWrap,
    padding: padding,

    /// MX modified begin add function
    itemBuilder: (BuildContext context, int index) {
      return children[index];
    },
    separatorBuilder: (BuildContext context, int index) {
      return separatorChildren[index];
    },

    /// MX modified end
    itemCount: itemCount,
    addAutomaticKeepAlives: addAutomaticKeepAlives,
    addRepaintBoundaries: addRepaintBoundaries,
    addSemanticIndexes: addSemanticIndexes,
    cacheExtent: cacheExtent?.toDouble(),
    dragStartBehavior: dragStartBehavior,
    keyboardDismissBehavior: keyboardDismissBehavior,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "primary",
    "physics",
    "shrinkWrap",
    "padding",
    "itemBuilder",
    "separatorBuilder",
    "itemCount",
    "addAutomaticKeepAlives",
    "addRepaintBoundaries",
    "addSemanticIndexes",
    "cacheExtent",
    "dragStartBehavior",
    "keyboardDismissBehavior",

    ///MX modified begin
    "children",
    "separatorChildren",

    ///MX modified end
  ],
);
var _listViewCustom = MXFunctionInvoke(
  "ListView.custom",
  ({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    dynamic itemExtent,
    SliverChildDelegate childrenDelegate,
    dynamic cacheExtent,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
  }) =>
      ListView.custom(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    primary: primary,
    physics: physics,
    shrinkWrap: shrinkWrap,
    padding: padding,
    itemExtent: itemExtent?.toDouble(),
    childrenDelegate: childrenDelegate,
    cacheExtent: cacheExtent?.toDouble(),
    semanticChildCount: semanticChildCount,
    dragStartBehavior: dragStartBehavior,
    keyboardDismissBehavior: keyboardDismissBehavior,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "primary",
    "physics",
    "shrinkWrap",
    "padding",
    "itemExtent",
    "childrenDelegate",
    "cacheExtent",
    "semanticChildCount",
    "dragStartBehavior",
    "keyboardDismissBehavior",
  ],
);
var _gridView = MXFunctionInvoke(
  "GridView",
  ({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    SliverGridDelegate gridDelegate,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    dynamic cacheExtent,
    dynamic children = const <Widget>[],
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
  }) =>
      GridView(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    primary: primary,
    physics: physics,
    shrinkWrap: shrinkWrap,
    padding: padding,
    gridDelegate: gridDelegate,
    addAutomaticKeepAlives: addAutomaticKeepAlives,
    addRepaintBoundaries: addRepaintBoundaries,
    addSemanticIndexes: addSemanticIndexes,
    cacheExtent: cacheExtent?.toDouble(),
    children: toListT<Widget>(children),
    semanticChildCount: semanticChildCount,
    dragStartBehavior: dragStartBehavior,
    keyboardDismissBehavior: keyboardDismissBehavior,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "primary",
    "physics",
    "shrinkWrap",
    "padding",
    "gridDelegate",
    "addAutomaticKeepAlives",
    "addRepaintBoundaries",
    "addSemanticIndexes",
    "cacheExtent",
    "children",
    "semanticChildCount",
    "dragStartBehavior",
    "keyboardDismissBehavior",
  ],
);
var _gridViewBuilder = MXFunctionInvoke(
  "GridView.builder",
  ({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    SliverGridDelegate gridDelegate,
    dynamic itemBuilder,
    int itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    dynamic cacheExtent,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
  }) =>
      GridView.builder(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    primary: primary,
    physics: physics,
    shrinkWrap: shrinkWrap,
    padding: padding,
    gridDelegate: gridDelegate,
    itemBuilder: null,
    itemCount: itemCount,
    addAutomaticKeepAlives: addAutomaticKeepAlives,
    addRepaintBoundaries: addRepaintBoundaries,
    addSemanticIndexes: addSemanticIndexes,
    cacheExtent: cacheExtent?.toDouble(),
    semanticChildCount: semanticChildCount,
    dragStartBehavior: dragStartBehavior,
    keyboardDismissBehavior: keyboardDismissBehavior,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "primary",
    "physics",
    "shrinkWrap",
    "padding",
    "gridDelegate",
    "itemBuilder",
    "itemCount",
    "addAutomaticKeepAlives",
    "addRepaintBoundaries",
    "addSemanticIndexes",
    "cacheExtent",
    "semanticChildCount",
    "dragStartBehavior",
    "keyboardDismissBehavior",
  ],
);
var _gridViewCustom = MXFunctionInvoke(
  "GridView.custom",
  ({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    SliverGridDelegate gridDelegate,
    SliverChildDelegate childrenDelegate,
    dynamic cacheExtent,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
  }) =>
      GridView.custom(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    primary: primary,
    physics: physics,
    shrinkWrap: shrinkWrap,
    padding: padding,
    gridDelegate: gridDelegate,
    childrenDelegate: childrenDelegate,
    cacheExtent: cacheExtent?.toDouble(),
    semanticChildCount: semanticChildCount,
    dragStartBehavior: dragStartBehavior,
    keyboardDismissBehavior: keyboardDismissBehavior,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "primary",
    "physics",
    "shrinkWrap",
    "padding",
    "gridDelegate",
    "childrenDelegate",
    "cacheExtent",
    "semanticChildCount",
    "dragStartBehavior",
    "keyboardDismissBehavior",
  ],
);
var _gridViewCount = MXFunctionInvoke(
  "GridView.count",
  ({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    int crossAxisCount,
    dynamic mainAxisSpacing = 0.0,
    dynamic crossAxisSpacing = 0.0,
    dynamic childAspectRatio = 1.0,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    dynamic cacheExtent,
    dynamic children = const <Widget>[],
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
  }) =>
      GridView.count(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    primary: primary,
    physics: physics,
    shrinkWrap: shrinkWrap,
    padding: padding,
    crossAxisCount: crossAxisCount,
    mainAxisSpacing: mainAxisSpacing?.toDouble(),
    crossAxisSpacing: crossAxisSpacing?.toDouble(),
    childAspectRatio: childAspectRatio?.toDouble(),
    addAutomaticKeepAlives: addAutomaticKeepAlives,
    addRepaintBoundaries: addRepaintBoundaries,
    addSemanticIndexes: addSemanticIndexes,
    cacheExtent: cacheExtent?.toDouble(),
    children: toListT<Widget>(children),
    semanticChildCount: semanticChildCount,
    dragStartBehavior: dragStartBehavior,
    keyboardDismissBehavior: keyboardDismissBehavior,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "primary",
    "physics",
    "shrinkWrap",
    "padding",
    "crossAxisCount",
    "mainAxisSpacing",
    "crossAxisSpacing",
    "childAspectRatio",
    "addAutomaticKeepAlives",
    "addRepaintBoundaries",
    "addSemanticIndexes",
    "cacheExtent",
    "children",
    "semanticChildCount",
    "dragStartBehavior",
    "keyboardDismissBehavior",
  ],
);
var _gridViewExtent = MXFunctionInvoke(
  "GridView.extent",
  ({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    dynamic maxCrossAxisExtent,
    dynamic mainAxisSpacing = 0.0,
    dynamic crossAxisSpacing = 0.0,
    dynamic childAspectRatio = 1.0,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    dynamic children = const <Widget>[],
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
  }) =>
      GridView.extent(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    primary: primary,
    physics: physics,
    shrinkWrap: shrinkWrap,
    padding: padding,
    maxCrossAxisExtent: maxCrossAxisExtent?.toDouble(),
    mainAxisSpacing: mainAxisSpacing?.toDouble(),
    crossAxisSpacing: crossAxisSpacing?.toDouble(),
    childAspectRatio: childAspectRatio?.toDouble(),
    addAutomaticKeepAlives: addAutomaticKeepAlives,
    addRepaintBoundaries: addRepaintBoundaries,
    addSemanticIndexes: addSemanticIndexes,
    children: toListT<Widget>(children),
    semanticChildCount: semanticChildCount,
    dragStartBehavior: dragStartBehavior,
    keyboardDismissBehavior: keyboardDismissBehavior,
  ),
  [
    "key",
    "scrollDirection",
    "reverse",
    "controller",
    "primary",
    "physics",
    "shrinkWrap",
    "padding",
    "maxCrossAxisExtent",
    "mainAxisSpacing",
    "crossAxisSpacing",
    "childAspectRatio",
    "addAutomaticKeepAlives",
    "addRepaintBoundaries",
    "addSemanticIndexes",
    "children",
    "semanticChildCount",
    "dragStartBehavior",
    "keyboardDismissBehavior",
  ],
);

class MXScrollViewKeyboardDismissBehavior {
  static ScrollViewKeyboardDismissBehavior parse(String name, int index) {
    switch (name) {
      case 'ScrollViewKeyboardDismissBehavior.manual':
        return ScrollViewKeyboardDismissBehavior.manual;
      case 'ScrollViewKeyboardDismissBehavior.onDrag':
        return ScrollViewKeyboardDismissBehavior.onDrag;
    }
    return null;
  }
}

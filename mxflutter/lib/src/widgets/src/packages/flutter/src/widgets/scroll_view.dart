//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'dart:math' as math;
import 'package:flutter/rendering.dart' ;
import 'package:flutter/gestures.dart' ;
import 'package:flutter/src/widgets/basic.dart' ;
import 'package:flutter/src/widgets/focus_manager.dart' ;
import 'package:flutter/src/widgets/focus_scope.dart' ;
import 'package:flutter/src/widgets/framework.dart' ;
import 'package:flutter/src/widgets/media_query.dart' ;
import 'package:flutter/src/widgets/notification_listener.dart' ;
import 'package:flutter/src/widgets/primary_scroll_controller.dart' ;
import 'package:flutter/src/widgets/scroll_controller.dart' ;
import 'package:flutter/src/widgets/scroll_notification.dart' ;
import 'package:flutter/src/widgets/scroll_physics.dart' ;
import 'package:flutter/src/widgets/scrollable.dart' ;
import 'package:flutter/src/widgets/sliver.dart' ;
import 'package:flutter/src/widgets/viewport.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollViewSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollViewKeyboardDismissBehavior.funName] = _scrollViewKeyboardDismissBehavior;
  m[_customScrollView.funName] = _customScrollView;
  m[_listView.funName] = _listView;
  m[_listView_builder.funName] = _listView_builder;
  m[_listView_separated.funName] = _listView_separated;
  m[_listView_custom.funName] = _listView_custom;
  m[_gridView.funName] = _gridView;
  m[_gridView_builder.funName] = _gridView_builder;
  m[_gridView_custom.funName] = _gridView_custom;
  m[_gridView_count.funName] = _gridView_count;
  m[_gridView_extent.funName] = _gridView_extent;
  return m;
}
var _scrollViewKeyboardDismissBehavior = MXFunctionInvoke(
    "ScrollViewKeyboardDismissBehavior",
    ({Map args}) => MXScrollViewKeyboardDismissBehavior.parse(args),
  );
var _customScrollView = MXFunctionInvoke(
    "CustomScrollView",
    (
      {
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
      List<Widget> slivers,
      int semanticChildCount,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }
    ) =>
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
      slivers: slivers,
      semanticChildCount: semanticChildCount,
      dragStartBehavior: dragStartBehavior,
    ),
);
var _listView = MXFunctionInvoke(
    "ListView",
    (
      {
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
      List<Widget> children,
      int semanticChildCount,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
      }
    ) =>
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
      children: children,
      semanticChildCount: semanticChildCount,
      dragStartBehavior: dragStartBehavior,
      keyboardDismissBehavior: keyboardDismissBehavior,
    ),
);
var _listView_builder = MXFunctionInvoke(
  "ListView.builder",
    (
      {
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
      }
    ) =>
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
      itemBuilder: null,
      itemCount: itemCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent?.toDouble(),
      semanticChildCount: semanticChildCount,
      dragStartBehavior: dragStartBehavior,
    ),
);
var _listView_separated = MXFunctionInvoke(
  "ListView.separated",
    (
      {
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
      ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
      }
    ) =>
      ListView.separated(
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      padding: padding,
      itemBuilder: null,
      separatorBuilder: null,
      itemCount: itemCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent?.toDouble(),
      keyboardDismissBehavior: keyboardDismissBehavior,
    ),
);
var _listView_custom = MXFunctionInvoke(
  "ListView.custom",
    (
      {
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
      }
    ) =>
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
    ),
);
var _gridView = MXFunctionInvoke(
    "GridView",
    (
      {
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
      List<Widget> children,
      int semanticChildCount,
      }
    ) =>
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
      children: children,
      semanticChildCount: semanticChildCount,
    ),
);
var _gridView_builder = MXFunctionInvoke(
  "GridView.builder",
    (
      {
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
      }
    ) =>
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
    ),
);
var _gridView_custom = MXFunctionInvoke(
  "GridView.custom",
    (
      {
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
      }
    ) =>
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
    ),
);
var _gridView_count = MXFunctionInvoke(
  "GridView.count",
    (
      {
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
      List<Widget> children,
      int semanticChildCount,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }
    ) =>
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
      children: children,
      semanticChildCount: semanticChildCount,
      dragStartBehavior: dragStartBehavior,
    ),
);
var _gridView_extent = MXFunctionInvoke(
  "GridView.extent",
    (
      {
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
      List<Widget> children,
      int semanticChildCount,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }
    ) =>
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
      children: children,
      semanticChildCount: semanticChildCount,
      dragStartBehavior: dragStartBehavior,
    ),
);
class MXScrollViewKeyboardDismissBehavior {
  static Map str2VMap = {
    'ScrollViewKeyboardDismissBehavior.manual': ScrollViewKeyboardDismissBehavior.manual,
    'ScrollViewKeyboardDismissBehavior.onDrag': ScrollViewKeyboardDismissBehavior.onDrag,
  };
  static ScrollViewKeyboardDismissBehavior parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

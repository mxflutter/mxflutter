//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/scroll_view.dart';


class MXProxyScrollView {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[scrollViewKeyboardDismissBehavior.funName] = scrollViewKeyboardDismissBehavior;
    m[customScrollView.funName] = customScrollView;
    m[listView.funName] = listView;
    m[listView_builder.funName] = listView_builder;
    m[listView_separated.funName] = listView_separated;
    m[listView_custom.funName] = listView_custom;
    m[gridView.funName] = gridView;
    m[gridView_builder.funName] = gridView_builder;
    m[gridView_custom.funName] = gridView_custom;
    m[gridView_count.funName] = gridView_count;
    m[gridView_extent.funName] = gridView_extent;
    return m;
  }
  static var scrollViewKeyboardDismissBehavior = MXFunctionInvoke(
      "ScrollViewKeyboardDismissBehavior",
      ({Map args}) => MXScrollViewKeyboardDismissBehavior.parse(args),
  );
  static var customScrollView = MXFunctionInvoke(
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
        List<Widget> slivers,
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
        slivers: slivers,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
      ),
    );
  static var listView = MXFunctionInvoke(
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
        List<Widget> children,
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
        children: children,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
        keyboardDismissBehavior: keyboardDismissBehavior,
      ),
    );
  static var listView_builder = MXFunctionInvoke(
    "listView.builder",
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
        itemBuilder: itemBuilder,
        itemCount: itemCount,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        cacheExtent: cacheExtent?.toDouble(),
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
      ),
    );
  static var listView_separated = MXFunctionInvoke(
    "listView.separated",
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
        ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
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
        itemBuilder: itemBuilder,
        separatorBuilder: separatorBuilder,
        itemCount: itemCount,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        cacheExtent: cacheExtent?.toDouble(),
        keyboardDismissBehavior: keyboardDismissBehavior,
      ),
    );
  static var listView_custom = MXFunctionInvoke(
    "listView.custom",
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
      ),
    );
  static var gridView = MXFunctionInvoke(
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
        List<Widget> children,
        int semanticChildCount,
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
        children: children,
        semanticChildCount: semanticChildCount,
      ),
    );
  static var gridView_builder = MXFunctionInvoke(
    "gridView.builder",
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
        itemBuilder: itemBuilder,
        itemCount: itemCount,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        cacheExtent: cacheExtent?.toDouble(),
        semanticChildCount: semanticChildCount,
      ),
    );
  static var gridView_custom = MXFunctionInvoke(
    "gridView.custom",
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
      ),
    );
  static var gridView_count = MXFunctionInvoke(
    "gridView.count",
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
        List<Widget> children,
        int semanticChildCount,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
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
        children: children,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
      ),
    );
  static var gridView_extent = MXFunctionInvoke(
    "gridView.extent",
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
        List<Widget> children,
        int semanticChildCount,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
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
        children: children,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
      ),
    );
}
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

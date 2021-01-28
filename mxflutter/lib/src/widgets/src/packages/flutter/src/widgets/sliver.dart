//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/automatic_keep_alive.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_sliverChildBuilderDelegate.funName] = _sliverChildBuilderDelegate;
  m[_sliverChildListDelegate.funName] = _sliverChildListDelegate;
  m[_sliverChildListDelegateFixed.funName] = _sliverChildListDelegateFixed;
  m[_sliverList.funName] = _sliverList;
  m[_sliverFixedExtentList.funName] = _sliverFixedExtentList;
  m[_sliverGrid.funName] = _sliverGrid;
  m[_sliverGridCount.funName] = _sliverGridCount;
  m[_sliverGridExtent.funName] = _sliverGridExtent;
  m[_sliverMultiBoxAdaptorElement.funName] = _sliverMultiBoxAdaptorElement;
  m[_sliverOpacity.funName] = _sliverOpacity;
  m[_sliverIgnorePointer.funName] = _sliverIgnorePointer;
  m[_sliverOffstage.funName] = _sliverOffstage;
  m[_keepAlive.funName] = _keepAlive;
  return m;
}

var _sliverChildBuilderDelegate = MXFunctionInvoke(
  "SliverChildBuilderDelegate",
  ({
    dynamic builder,
    dynamic findChildIndexCallback,
    int childCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,

    /// MX modified begin -delete init
    dynamic semanticIndexCallback,

    /// MX modified end
    int semanticIndexOffset = 0,

    /// MX modified begin -add children
    dynamic children,

    /// MX modified end
  }) =>
      SliverChildBuilderDelegate(
    /// MX modified begin -add function
    (BuildContext context, int index) {
      List<Widget> list = toListT<Widget>(children);
      return list[index];
    },

    /// MX modified end
    findChildIndexCallback: null,
    childCount: childCount,
    addAutomaticKeepAlives: addAutomaticKeepAlives,
    addRepaintBoundaries: addRepaintBoundaries,
    addSemanticIndexes: addSemanticIndexes,

    /// MX modified begin -add function
    semanticIndexCallback: semanticIndexCallback != null
        ? createGenericTwoParamsClosure<int, Widget, int>(_sliverChildListDelegate.buildOwner, semanticIndexCallback)
        : (Widget widget, int localIndex) {
            return localIndex;
          },

    /// MX modified end
    semanticIndexOffset: semanticIndexOffset,
  ),
  [
    "builder",
    "findChildIndexCallback",
    "childCount",
    "addAutomaticKeepAlives",
    "addRepaintBoundaries",
    "addSemanticIndexes",
    "semanticIndexCallback",
    "semanticIndexOffset",

    ///MX modified begin
    "children",

    ///MX modified end
  ],
);
var _sliverChildListDelegate = MXFunctionInvoke(
  "SliverChildListDelegate",
  ({
    dynamic children,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,

    /// MX modified begin -delete init
    dynamic semanticIndexCallback,

    /// MX modified end
    int semanticIndexOffset = 0,
  }) =>
      SliverChildListDelegate(
    toListT<Widget>(children),
    addAutomaticKeepAlives: addAutomaticKeepAlives,
    addRepaintBoundaries: addRepaintBoundaries,
    addSemanticIndexes: addSemanticIndexes,

    /// MX modified begin -add function
    semanticIndexCallback: semanticIndexCallback != null
        ? createGenericTwoParamsClosure<int, Widget, int>(_sliverChildListDelegate.buildOwner, semanticIndexCallback)
        : (Widget widget, int localIndex) {
            return localIndex;
          },

    /// MX modified end
    semanticIndexOffset: semanticIndexOffset,
  ),
  [
    "children",
    "addAutomaticKeepAlives",
    "addRepaintBoundaries",
    "addSemanticIndexes",
    "semanticIndexCallback",
    "semanticIndexOffset",
  ],
);
var _sliverChildListDelegateFixed = MXFunctionInvoke(
  "SliverChildListDelegate.fixed",
  ({
    dynamic children,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,

    /// MX modified begin -delete init
    dynamic semanticIndexCallback,

    /// MX modified end
    int semanticIndexOffset = 0,
  }) =>
      SliverChildListDelegate.fixed(
    toListT<Widget>(children),
    addAutomaticKeepAlives: addAutomaticKeepAlives,
    addRepaintBoundaries: addRepaintBoundaries,
    addSemanticIndexes: addSemanticIndexes,

    /// MX modified begin -add function
    semanticIndexCallback: semanticIndexCallback != null
        ? createGenericTwoParamsClosure<int, Widget, int>(_sliverChildListDelegate.buildOwner, semanticIndexCallback)
        : (Widget widget, int localIndex) {
            return localIndex;
          },

    /// MX modified
    semanticIndexOffset: semanticIndexOffset,
  ),
  [
    "children",
    "addAutomaticKeepAlives",
    "addRepaintBoundaries",
    "addSemanticIndexes",
    "semanticIndexCallback",
    "semanticIndexOffset",
  ],
);
var _sliverList = MXFunctionInvoke(
  "SliverList",
  ({
    Key key,
    SliverChildDelegate delegate,
  }) =>
      SliverList(
    key: key,
    delegate: delegate,
  ),
  [
    "key",
    "delegate",
  ],
);
var _sliverFixedExtentList = MXFunctionInvoke(
  "SliverFixedExtentList",
  ({
    Key key,
    SliverChildDelegate delegate,
    dynamic itemExtent,
  }) =>
      SliverFixedExtentList(
    key: key,
    delegate: delegate,
    itemExtent: itemExtent?.toDouble(),
  ),
  [
    "key",
    "delegate",
    "itemExtent",
  ],
);
var _sliverGrid = MXFunctionInvoke(
  "SliverGrid",
  ({
    Key key,
    SliverChildDelegate delegate,
    SliverGridDelegate gridDelegate,
  }) =>
      SliverGrid(
    key: key,
    delegate: delegate,
    gridDelegate: gridDelegate,
  ),
  [
    "key",
    "delegate",
    "gridDelegate",
  ],
);
var _sliverGridCount = MXFunctionInvoke(
  "SliverGrid.count",
  ({
    Key key,
    int crossAxisCount,
    dynamic mainAxisSpacing = 0.0,
    dynamic crossAxisSpacing = 0.0,
    dynamic childAspectRatio = 1.0,
    dynamic children = const <Widget>[],
  }) =>
      SliverGrid.count(
    key: key,
    crossAxisCount: crossAxisCount,
    mainAxisSpacing: mainAxisSpacing?.toDouble(),
    crossAxisSpacing: crossAxisSpacing?.toDouble(),
    childAspectRatio: childAspectRatio?.toDouble(),
    children: toListT<Widget>(children),
  ),
  [
    "key",
    "crossAxisCount",
    "mainAxisSpacing",
    "crossAxisSpacing",
    "childAspectRatio",
    "children",
  ],
);
var _sliverGridExtent = MXFunctionInvoke(
  "SliverGrid.extent",
  ({
    Key key,
    dynamic maxCrossAxisExtent,
    dynamic mainAxisSpacing = 0.0,
    dynamic crossAxisSpacing = 0.0,
    dynamic childAspectRatio = 1.0,
    dynamic children = const <Widget>[],
  }) =>
      SliverGrid.extent(
    key: key,
    maxCrossAxisExtent: maxCrossAxisExtent?.toDouble(),
    mainAxisSpacing: mainAxisSpacing?.toDouble(),
    crossAxisSpacing: crossAxisSpacing?.toDouble(),
    childAspectRatio: childAspectRatio?.toDouble(),
    children: toListT<Widget>(children),
  ),
  [
    "key",
    "maxCrossAxisExtent",
    "mainAxisSpacing",
    "crossAxisSpacing",
    "childAspectRatio",
    "children",
  ],
);
var _sliverMultiBoxAdaptorElement = MXFunctionInvoke(
  "SliverMultiBoxAdaptorElement",
  ({
    SliverMultiBoxAdaptorWidget widget,
  }) =>
      SliverMultiBoxAdaptorElement(
    widget,
  ),
  [
    "__mx_widget",
  ],
);
var _sliverOpacity = MXFunctionInvoke(
  "SliverOpacity",
  ({
    Key key,
    dynamic opacity,
    bool alwaysIncludeSemantics = false,
    Widget sliver,
  }) =>
      SliverOpacity(
    key: key,
    opacity: opacity?.toDouble(),
    alwaysIncludeSemantics: alwaysIncludeSemantics,
    sliver: sliver,
  ),
  [
    "key",
    "opacity",
    "alwaysIncludeSemantics",
    "sliver",
  ],
);
var _sliverIgnorePointer = MXFunctionInvoke(
  "SliverIgnorePointer",
  ({
    Key key,
    bool ignoring = true,
    bool ignoringSemantics,
    Widget sliver,
  }) =>
      SliverIgnorePointer(
    key: key,
    ignoring: ignoring,
    ignoringSemantics: ignoringSemantics,
    sliver: sliver,
  ),
  [
    "key",
    "ignoring",
    "ignoringSemantics",
    "sliver",
  ],
);
var _sliverOffstage = MXFunctionInvoke(
  "SliverOffstage",
  ({
    Key key,
    bool offstage = true,
    Widget sliver,
  }) =>
      SliverOffstage(
    key: key,
    offstage: offstage,
    sliver: sliver,
  ),
  [
    "key",
    "offstage",
    "sliver",
  ],
);
var _keepAlive = MXFunctionInvoke(
  "KeepAlive",
  ({
    Key key,
    bool keepAlive,
    Widget child,
  }) =>
      KeepAlive(
    key: key,
    keepAlive: keepAlive,
    child: child,
  ),
  [
    "key",
    "keepAlive",
    "child",
  ],
);

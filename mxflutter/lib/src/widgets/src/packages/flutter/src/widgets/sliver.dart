//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_sliverChildListDelegate_fixed.funName] = _sliverChildListDelegate_fixed;
  m[_sliverList.funName] = _sliverList;
  m[_sliverFixedExtentList.funName] = _sliverFixedExtentList;
  m[_sliverGrid.funName] = _sliverGrid;
  m[_sliverGrid_count.funName] = _sliverGrid_count;
  m[_sliverGrid_extent.funName] = _sliverGrid_extent;
  m[_sliverMultiBoxAdaptorElement.funName] = _sliverMultiBoxAdaptorElement;
  m[_sliverOpacity.funName] = _sliverOpacity;
  m[_sliverIgnorePointer.funName] = _sliverIgnorePointer;
  m[_sliverOffstage.funName] = _sliverOffstage;
  m[_keepAlive.funName] = _keepAlive;
  return m;
}
var _sliverChildBuilderDelegate = MXFunctionInvoke(
    "SliverChildBuilderDelegate",
    (
      {
      dynamic builder,
      dynamic findChildIndexCallback,
      int childCount,
      bool addAutomaticKeepAlives = true,
      bool addRepaintBoundaries = true,
      bool addSemanticIndexes = true,
      dynamic semanticIndexCallback,
      int semanticIndexOffset = 0,
      dynamic children,
      }
    ) =>
      SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        List<Widget> list = toListT<Widget>(children);
        return list[index];
      },
      findChildIndexCallback: null,
      childCount: childCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      semanticIndexCallback: semanticIndexCallback != null ? createGenericTwoParamsClosure<int, Widget, int>(_sliverChildListDelegate.buildOwner, semanticIndexCallback) : (Widget widget, int localIndex) {
        return localIndex;
      },
      semanticIndexOffset: semanticIndexOffset,
    ),
);
var _sliverChildListDelegate = MXFunctionInvoke(
    "SliverChildListDelegate",
    (
      {
      dynamic children,
      bool addAutomaticKeepAlives = true,
      bool addRepaintBoundaries = true,
      bool addSemanticIndexes = true,
      dynamic semanticIndexCallback,
      int semanticIndexOffset = 0,
      }
    ) =>
      SliverChildListDelegate(
      toListT<Widget>(children),
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      semanticIndexCallback: semanticIndexCallback != null ? createGenericTwoParamsClosure<int, Widget, int>(_sliverChildListDelegate.buildOwner, semanticIndexCallback) : (Widget widget, int localIndex) {
        return localIndex;
      },
      semanticIndexOffset: semanticIndexOffset,
    ),
);
var _sliverChildListDelegate_fixed = MXFunctionInvoke(
  "SliverChildListDelegate.fixed",
    (
      {
      dynamic children,
      bool addAutomaticKeepAlives = true,
      bool addRepaintBoundaries = true,
      bool addSemanticIndexes = true,
      dynamic semanticIndexCallback,
      int semanticIndexOffset = 0,
      }
    ) =>
      SliverChildListDelegate.fixed(
      toListT<Widget>(children),
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      semanticIndexCallback: semanticIndexCallback != null ? createGenericTwoParamsClosure<int, Widget, int>(_sliverChildListDelegate.buildOwner, semanticIndexCallback) : (Widget widget, int localIndex) {
        return localIndex;
      },
      semanticIndexOffset: semanticIndexOffset,
    ),
);
var _sliverList = MXFunctionInvoke(
    "SliverList",
    (
      {
      Key key,
      SliverChildDelegate delegate,
      }
    ) =>
      SliverList(
      key: key,
      delegate: delegate,
    ),
);
var _sliverFixedExtentList = MXFunctionInvoke(
    "SliverFixedExtentList",
    (
      {
      Key key,
      SliverChildDelegate delegate,
      dynamic itemExtent,
      }
    ) =>
      SliverFixedExtentList(
      key: key,
      delegate: delegate,
      itemExtent: itemExtent?.toDouble(),
    ),
);
var _sliverGrid = MXFunctionInvoke(
    "SliverGrid",
    (
      {
      Key key,
      SliverChildDelegate delegate,
      SliverGridDelegate gridDelegate,
      }
    ) =>
      SliverGrid(
      key: key,
      delegate: delegate,
      gridDelegate: gridDelegate,
    ),
);
var _sliverGrid_count = MXFunctionInvoke(
  "SliverGrid.count",
    (
      {
      Key key,
      int crossAxisCount,
      dynamic mainAxisSpacing = 0.0,
      dynamic crossAxisSpacing = 0.0,
      dynamic childAspectRatio = 1.0,
      dynamic children = const <Widget>[],
      }
    ) =>
      SliverGrid.count(
      key: key,
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: mainAxisSpacing?.toDouble(),
      crossAxisSpacing: crossAxisSpacing?.toDouble(),
      childAspectRatio: childAspectRatio?.toDouble(),
      children: toListT<Widget>(children),
    ),
);
var _sliverGrid_extent = MXFunctionInvoke(
  "SliverGrid.extent",
    (
      {
      Key key,
      dynamic maxCrossAxisExtent,
      dynamic mainAxisSpacing = 0.0,
      dynamic crossAxisSpacing = 0.0,
      dynamic childAspectRatio = 1.0,
      dynamic children = const <Widget>[],
      }
    ) =>
      SliverGrid.extent(
      key: key,
      maxCrossAxisExtent: maxCrossAxisExtent?.toDouble(),
      mainAxisSpacing: mainAxisSpacing?.toDouble(),
      crossAxisSpacing: crossAxisSpacing?.toDouble(),
      childAspectRatio: childAspectRatio?.toDouble(),
      children: toListT<Widget>(children),
    ),
);
var _sliverMultiBoxAdaptorElement = MXFunctionInvoke(
    "SliverMultiBoxAdaptorElement",
    (
      {
      SliverMultiBoxAdaptorWidget widget,
      }
    ) =>
      SliverMultiBoxAdaptorElement(
      widget,
    ),
);
var _sliverOpacity = MXFunctionInvoke(
    "SliverOpacity",
    (
      {
      Key key,
      dynamic opacity,
      bool alwaysIncludeSemantics = false,
      Widget sliver,
      }
    ) =>
      SliverOpacity(
      key: key,
      opacity: opacity?.toDouble(),
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      sliver: sliver,
    ),
);
var _sliverIgnorePointer = MXFunctionInvoke(
    "SliverIgnorePointer",
    (
      {
      Key key,
      bool ignoring = true,
      bool ignoringSemantics,
      Widget sliver,
      }
    ) =>
      SliverIgnorePointer(
      key: key,
      ignoring: ignoring,
      ignoringSemantics: ignoringSemantics,
      sliver: sliver,
    ),
);
var _sliverOffstage = MXFunctionInvoke(
    "SliverOffstage",
    (
      {
      Key key,
      bool offstage = true,
      Widget sliver,
      }
    ) =>
      SliverOffstage(
      key: key,
      offstage: offstage,
      sliver: sliver,
    ),
);
var _keepAlive = MXFunctionInvoke(
    "KeepAlive",
    (
      {
      Key key,
      bool keepAlive,
      Widget child,
      }
    ) =>
      KeepAlive(
      key: key,
      keepAlive: keepAlive,
      child: child,
    ),
);

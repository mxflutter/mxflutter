//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';


class MXProxySliverGrid {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[sliverGridGeometry.funName] = sliverGridGeometry;
    m[sliverGridRegularTileLayout.funName] = sliverGridRegularTileLayout;
    m[sliverGridDelegateWithFixedCrossAxisCount.funName] = sliverGridDelegateWithFixedCrossAxisCount;
    m[sliverGridDelegateWithMaxCrossAxisExtent.funName] = sliverGridDelegateWithMaxCrossAxisExtent;
    m[sliverGridParentData.funName] = sliverGridParentData;
    m[renderSliverGrid.funName] = renderSliverGrid;
    return m;
  }
  static var sliverGridGeometry = MXFunctionInvoke(
      "SliverGridGeometry",
      ({
        dynamic scrollOffset,
        dynamic crossAxisOffset,
        dynamic mainAxisExtent,
        dynamic crossAxisExtent,
      }) =>
        SliverGridGeometry(
        scrollOffset: scrollOffset?.toDouble(),
        crossAxisOffset: crossAxisOffset?.toDouble(),
        mainAxisExtent: mainAxisExtent?.toDouble(),
        crossAxisExtent: crossAxisExtent?.toDouble(),
      ),
    );
  static var sliverGridRegularTileLayout = MXFunctionInvoke(
      "SliverGridRegularTileLayout",
      ({
        int crossAxisCount,
        dynamic mainAxisStride,
        dynamic crossAxisStride,
        dynamic childMainAxisExtent,
        dynamic childCrossAxisExtent,
        bool reverseCrossAxis,
      }) =>
        SliverGridRegularTileLayout(
        crossAxisCount: crossAxisCount,
        mainAxisStride: mainAxisStride?.toDouble(),
        crossAxisStride: crossAxisStride?.toDouble(),
        childMainAxisExtent: childMainAxisExtent?.toDouble(),
        childCrossAxisExtent: childCrossAxisExtent?.toDouble(),
        reverseCrossAxis: reverseCrossAxis,
      ),
    );
  static var sliverGridDelegateWithFixedCrossAxisCount = MXFunctionInvoke(
      "SliverGridDelegateWithFixedCrossAxisCount",
      ({
        int crossAxisCount,
        dynamic mainAxisSpacing = 0.0,
        dynamic crossAxisSpacing = 0.0,
        dynamic childAspectRatio = 1.0,
      }) =>
        SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing?.toDouble(),
        crossAxisSpacing: crossAxisSpacing?.toDouble(),
        childAspectRatio: childAspectRatio?.toDouble(),
      ),
    );
  static var sliverGridDelegateWithMaxCrossAxisExtent = MXFunctionInvoke(
      "SliverGridDelegateWithMaxCrossAxisExtent",
      ({
        dynamic maxCrossAxisExtent,
        dynamic mainAxisSpacing = 0.0,
        dynamic crossAxisSpacing = 0.0,
        dynamic childAspectRatio = 1.0,
      }) =>
        SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: maxCrossAxisExtent?.toDouble(),
        mainAxisSpacing: mainAxisSpacing?.toDouble(),
        crossAxisSpacing: crossAxisSpacing?.toDouble(),
        childAspectRatio: childAspectRatio?.toDouble(),
      ),
    );
  static var sliverGridParentData = MXFunctionInvoke(
      "SliverGridParentData",
      ({
      }) =>
        SliverGridParentData(
      ),
    );
  static var renderSliverGrid = MXFunctionInvoke(
      "RenderSliverGrid",
      ({
        RenderSliverBoxChildManager childManager,
        SliverGridDelegate gridDelegate,
      }) =>
        RenderSliverGrid(
        childManager: childManager,
        gridDelegate: gridDelegate,
      ),
    );
}

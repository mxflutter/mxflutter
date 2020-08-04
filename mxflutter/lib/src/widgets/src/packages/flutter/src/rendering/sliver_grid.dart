//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverGridSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[sliverGridGeometry.funName] = sliverGridGeometry;
  m[sliverGridRegularTileLayout.funName] = sliverGridRegularTileLayout;
  m[sliverGridDelegateWithFixedCrossAxisCount.funName] = sliverGridDelegateWithFixedCrossAxisCount;
  m[sliverGridDelegateWithMaxCrossAxisExtent.funName] = sliverGridDelegateWithMaxCrossAxisExtent;
  m[sliverGridParentData.funName] = sliverGridParentData;
  m[renderSliverGrid.funName] = renderSliverGrid;
  return m;
}
var sliverGridGeometry = MXFunctionInvoke(
    "SliverGridGeometry",
    ({
      dynamic scrollOffset,
      dynamic crossAxisOffset,
      dynamic mainAxisExtent,
      dynamic crossAxisExtent,
    }) =>
      SliverGridGeometry(
      scrollOffset: scrollOffset,
      crossAxisOffset: crossAxisOffset,
      mainAxisExtent: mainAxisExtent,
      crossAxisExtent: crossAxisExtent,
    ),
);
var sliverGridRegularTileLayout = MXFunctionInvoke(
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
      mainAxisStride: mainAxisStride,
      crossAxisStride: crossAxisStride,
      childMainAxisExtent: childMainAxisExtent,
      childCrossAxisExtent: childCrossAxisExtent,
      reverseCrossAxis: reverseCrossAxis,
    ),
);
var sliverGridDelegateWithFixedCrossAxisCount = MXFunctionInvoke(
    "SliverGridDelegateWithFixedCrossAxisCount",
    ({
      int crossAxisCount,
      dynamic mainAxisSpacing = 0.0,
      dynamic crossAxisSpacing = 0.0,
      dynamic childAspectRatio = 1.0,
    }) =>
      SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: mainAxisSpacing,
      crossAxisSpacing: crossAxisSpacing,
      childAspectRatio: childAspectRatio,
    ),
);
var sliverGridDelegateWithMaxCrossAxisExtent = MXFunctionInvoke(
    "SliverGridDelegateWithMaxCrossAxisExtent",
    ({
      dynamic maxCrossAxisExtent,
      dynamic mainAxisSpacing = 0.0,
      dynamic crossAxisSpacing = 0.0,
      dynamic childAspectRatio = 1.0,
    }) =>
      SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: maxCrossAxisExtent,
      mainAxisSpacing: mainAxisSpacing,
      crossAxisSpacing: crossAxisSpacing,
      childAspectRatio: childAspectRatio,
    ),
);
var sliverGridParentData = MXFunctionInvoke(
    "SliverGridParentData",
    ({
    }) =>
      SliverGridParentData(
    ),
);
var renderSliverGrid = MXFunctionInvoke(
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

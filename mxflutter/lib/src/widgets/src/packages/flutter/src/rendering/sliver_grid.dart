//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverGridSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_sliverGridGeometry.funName] = _sliverGridGeometry;
  m[_sliverGridRegularTileLayout.funName] = _sliverGridRegularTileLayout;
  m[_sliverGridDelegateWithFixedCrossAxisCount.funName] = _sliverGridDelegateWithFixedCrossAxisCount;
  m[_sliverGridDelegateWithMaxCrossAxisExtent.funName] = _sliverGridDelegateWithMaxCrossAxisExtent;
  m[_sliverGridParentData.funName] = _sliverGridParentData;
  m[_renderSliverGrid.funName] = _renderSliverGrid;
  return m;
}

var _sliverGridGeometry = MXFunctionInvoke(
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
  [
    "scrollOffset",
    "crossAxisOffset",
    "mainAxisExtent",
    "crossAxisExtent",
  ],
);
var _sliverGridRegularTileLayout = MXFunctionInvoke(
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
  [
    "crossAxisCount",
    "mainAxisStride",
    "crossAxisStride",
    "childMainAxisExtent",
    "childCrossAxisExtent",
    "reverseCrossAxis",
  ],
);
var _sliverGridDelegateWithFixedCrossAxisCount = MXFunctionInvoke(
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
  [
    "crossAxisCount",
    "mainAxisSpacing",
    "crossAxisSpacing",
    "childAspectRatio",
  ],
);
var _sliverGridDelegateWithMaxCrossAxisExtent = MXFunctionInvoke(
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
  [
    "maxCrossAxisExtent",
    "mainAxisSpacing",
    "crossAxisSpacing",
    "childAspectRatio",
  ],
);
var _sliverGridParentData = MXFunctionInvoke(
  "SliverGridParentData",
  () => SliverGridParentData(),
  [],
);
var _renderSliverGrid = MXFunctionInvoke(
  "RenderSliverGrid",
  ({
    RenderSliverBoxChildManager childManager,
    SliverGridDelegate gridDelegate,
  }) =>
      RenderSliverGrid(
    childManager: childManager,
    gridDelegate: gridDelegate,
  ),
  [
    "childManager",
    "gridDelegate",
  ],
);

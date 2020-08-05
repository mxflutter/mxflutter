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
    (
      {
      double scrollOffset,
      double crossAxisOffset,
      double mainAxisExtent,
      double crossAxisExtent,
      }
    ) =>
      SliverGridGeometry(
      scrollOffset: scrollOffset?.toDouble(),
      crossAxisOffset: crossAxisOffset?.toDouble(),
      mainAxisExtent: mainAxisExtent?.toDouble(),
      crossAxisExtent: crossAxisExtent?.toDouble(),
    ),
);
var _sliverGridRegularTileLayout = MXFunctionInvoke(
    "SliverGridRegularTileLayout",
    (
      {
      int crossAxisCount,
      double mainAxisStride,
      double crossAxisStride,
      double childMainAxisExtent,
      double childCrossAxisExtent,
      bool reverseCrossAxis,
      }
    ) =>
      SliverGridRegularTileLayout(
      crossAxisCount: crossAxisCount,
      mainAxisStride: mainAxisStride?.toDouble(),
      crossAxisStride: crossAxisStride?.toDouble(),
      childMainAxisExtent: childMainAxisExtent?.toDouble(),
      childCrossAxisExtent: childCrossAxisExtent?.toDouble(),
      reverseCrossAxis: reverseCrossAxis,
    ),
);
var _sliverGridDelegateWithFixedCrossAxisCount = MXFunctionInvoke(
    "SliverGridDelegateWithFixedCrossAxisCount",
    (
      {
      int crossAxisCount,
      double mainAxisSpacing = 0.0,
      double crossAxisSpacing = 0.0,
      double childAspectRatio = 1.0,
      }
    ) =>
      SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: mainAxisSpacing?.toDouble(),
      crossAxisSpacing: crossAxisSpacing?.toDouble(),
      childAspectRatio: childAspectRatio?.toDouble(),
    ),
);
var _sliverGridDelegateWithMaxCrossAxisExtent = MXFunctionInvoke(
    "SliverGridDelegateWithMaxCrossAxisExtent",
    (
      {
      double maxCrossAxisExtent,
      double mainAxisSpacing = 0.0,
      double crossAxisSpacing = 0.0,
      double childAspectRatio = 1.0,
      }
    ) =>
      SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: maxCrossAxisExtent?.toDouble(),
      mainAxisSpacing: mainAxisSpacing?.toDouble(),
      crossAxisSpacing: crossAxisSpacing?.toDouble(),
      childAspectRatio: childAspectRatio?.toDouble(),
    ),
);
var _sliverGridParentData = MXFunctionInvoke(
    "SliverGridParentData",
    (
    ) =>
      SliverGridParentData(
    ),
);
var _renderSliverGrid = MXFunctionInvoke(
    "RenderSliverGrid",
    (
      {
      RenderSliverBoxChildManager childManager,
      SliverGridDelegate gridDelegate,
      }
    ) =>
      RenderSliverGrid(
      childManager: childManager,
      gridDelegate: gridDelegate,
    ),
);

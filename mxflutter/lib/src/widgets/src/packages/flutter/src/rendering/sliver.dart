//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/binding.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/viewport.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';
import 'package:flutter/src/rendering/viewport.dart';
import 'dart:math';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/semantics.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[growthDirection.funName] = growthDirection;
  m[sliverConstraints.funName] = sliverConstraints;
  m[sliverGeometry.funName] = sliverGeometry;
  m[sliverHitTestResult.funName] = sliverHitTestResult;
  m[sliverHitTestResult_wrap.funName] = sliverHitTestResult_wrap;
  m[sliverHitTestEntry.funName] = sliverHitTestEntry;
  m[sliverLogicalParentData.funName] = sliverLogicalParentData;
  m[sliverLogicalContainerParentData.funName] = sliverLogicalContainerParentData;
  m[sliverPhysicalParentData.funName] = sliverPhysicalParentData;
  m[sliverPhysicalContainerParentData.funName] = sliverPhysicalContainerParentData;
  m[renderSliverToBoxAdapter.funName] = renderSliverToBoxAdapter;
  m[cacheExtentStyle.funName] = cacheExtentStyle;
  m[revealedOffset.funName] = revealedOffset;
  m[renderViewport.funName] = renderViewport;
  m[renderShrinkWrappingViewport.funName] = renderShrinkWrappingViewport;
  return m;
}
var growthDirection = MXFunctionInvoke(
    "GrowthDirection",
    ({Map args}) => MXGrowthDirection.parse(args),
  );
var sliverConstraints = MXFunctionInvoke(
    "SliverConstraints",
    ({
      AxisDirection axisDirection,
      GrowthDirection growthDirection,
      ScrollDirection userScrollDirection,
      dynamic scrollOffset,
      dynamic precedingScrollExtent,
      dynamic overlap,
      dynamic remainingPaintExtent,
      dynamic crossAxisExtent,
      AxisDirection crossAxisDirection,
      dynamic viewportMainAxisExtent,
      dynamic remainingCacheExtent,
      dynamic cacheOrigin,
    }) =>
      SliverConstraints(
      axisDirection: axisDirection,
      growthDirection: growthDirection,
      userScrollDirection: userScrollDirection,
      scrollOffset: scrollOffset,
      precedingScrollExtent: precedingScrollExtent,
      overlap: overlap,
      remainingPaintExtent: remainingPaintExtent,
      crossAxisExtent: crossAxisExtent,
      crossAxisDirection: crossAxisDirection,
      viewportMainAxisExtent: viewportMainAxisExtent,
      remainingCacheExtent: remainingCacheExtent,
      cacheOrigin: cacheOrigin,
    ),
);
var sliverGeometry = MXFunctionInvoke(
    "SliverGeometry",
    ({
      dynamic scrollExtent = 0.0,
      dynamic paintExtent = 0.0,
      dynamic paintOrigin = 0.0,
      dynamic layoutExtent,
      dynamic maxPaintExtent = 0.0,
      dynamic maxScrollObstructionExtent = 0.0,
      dynamic hitTestExtent,
      bool visible,
      bool hasVisualOverflow = false,
      dynamic scrollOffsetCorrection,
      dynamic cacheExtent,
    }) =>
      SliverGeometry(
      scrollExtent: scrollExtent,
      paintExtent: paintExtent,
      paintOrigin: paintOrigin,
      layoutExtent: layoutExtent,
      maxPaintExtent: maxPaintExtent,
      maxScrollObstructionExtent: maxScrollObstructionExtent,
      hitTestExtent: hitTestExtent,
      visible: visible,
      hasVisualOverflow: hasVisualOverflow,
      scrollOffsetCorrection: scrollOffsetCorrection,
      cacheExtent: cacheExtent,
    ),
);
var sliverHitTestResult = MXFunctionInvoke(
    "SliverHitTestResult",
    ({
    }) =>
      SliverHitTestResult(
    ),
);
var sliverHitTestResult_wrap = MXFunctionInvoke(
  "sliverHitTestResult.wrap",
    ({
      HitTestResult result,
    }) =>
      SliverHitTestResult.wrap(
      result,
    ),
);
var sliverHitTestEntry = MXFunctionInvoke(
    "SliverHitTestEntry",
    ({
      RenderSliver target,
      dynamic mainAxisPosition,
      dynamic crossAxisPosition,
    }) =>
      SliverHitTestEntry(
      target,
      mainAxisPosition: mainAxisPosition,
      crossAxisPosition: crossAxisPosition,
    ),
);
var sliverLogicalParentData = MXFunctionInvoke(
    "SliverLogicalParentData",
    ({
    }) =>
      SliverLogicalParentData(
    ),
);
var sliverLogicalContainerParentData = MXFunctionInvoke(
    "SliverLogicalContainerParentData",
    ({
    }) =>
      SliverLogicalContainerParentData(
    ),
);
var sliverPhysicalParentData = MXFunctionInvoke(
    "SliverPhysicalParentData",
    ({
    }) =>
      SliverPhysicalParentData(
    ),
);
var sliverPhysicalContainerParentData = MXFunctionInvoke(
    "SliverPhysicalContainerParentData",
    ({
    }) =>
      SliverPhysicalContainerParentData(
    ),
);
var renderSliverToBoxAdapter = MXFunctionInvoke(
    "RenderSliverToBoxAdapter",
    ({
      RenderBox child,
    }) =>
      RenderSliverToBoxAdapter(
      child: child,
    ),
);
var cacheExtentStyle = MXFunctionInvoke(
    "CacheExtentStyle",
    ({Map args}) => MXCacheExtentStyle.parse(args),
  );
var revealedOffset = MXFunctionInvoke(
    "RevealedOffset",
    ({
      dynamic offset,
      Rect rect,
    }) =>
      RevealedOffset(
      offset: offset,
      rect: rect,
    ),
);
var renderViewport = MXFunctionInvoke(
    "RenderViewport",
    ({
      AxisDirection axisDirection = AxisDirection.down,
      AxisDirection crossAxisDirection,
      ViewportOffset offset,
      dynamic anchor = 0.0,
      List<RenderSliver> children,
      RenderSliver center,
      dynamic cacheExtent,
      CacheExtentStyle cacheExtentStyle = CacheExtentStyle.pixel,
    }) =>
      RenderViewport(
      axisDirection: axisDirection,
      crossAxisDirection: crossAxisDirection,
      offset: offset,
      anchor: anchor,
      children: children,
      center: center,
      cacheExtent: cacheExtent,
      cacheExtentStyle: cacheExtentStyle,
    ),
);
var renderShrinkWrappingViewport = MXFunctionInvoke(
    "RenderShrinkWrappingViewport",
    ({
      AxisDirection axisDirection = AxisDirection.down,
      AxisDirection crossAxisDirection,
      ViewportOffset offset,
      List<RenderSliver> children,
    }) =>
      RenderShrinkWrappingViewport(
      axisDirection: axisDirection,
      crossAxisDirection: crossAxisDirection,
      offset: offset,
      children: children,
    ),
);
class MXGrowthDirection {
  static Map str2VMap = {
    'GrowthDirection.forward': GrowthDirection.forward,
    'GrowthDirection.reverse': GrowthDirection.reverse,
  };
  static GrowthDirection parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXCacheExtentStyle {
  static Map str2VMap = {
    'CacheExtentStyle.pixel': CacheExtentStyle.pixel,
    'CacheExtentStyle.viewport': CacheExtentStyle.viewport,
  };
  static CacheExtentStyle parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

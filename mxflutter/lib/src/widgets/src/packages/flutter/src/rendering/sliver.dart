//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart' ;
import 'package:flutter/gestures.dart' ;
import 'package:vector_math/vector_math_64.dart' ;
import 'package:flutter/src/rendering/binding.dart' ;
import 'package:flutter/src/rendering/box.dart' ;
import 'package:flutter/src/rendering/debug.dart' ;
import 'package:flutter/src/rendering/object.dart' ;
import 'package:flutter/src/rendering/viewport.dart' ;
import 'package:flutter/src/rendering/viewport_offset.dart' ;
import 'package:flutter/src/rendering/viewport.dart';
import 'package:flutter/animation.dart' ;
import 'package:flutter/semantics.dart' ;
import 'package:flutter/src/rendering/sliver.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_growthDirection.funName] = _growthDirection;
  m[_sliverConstraints.funName] = _sliverConstraints;
  m[_sliverGeometry.funName] = _sliverGeometry;
  m[_sliverHitTestResult.funName] = _sliverHitTestResult;
  m[_sliverHitTestResult_wrap.funName] = _sliverHitTestResult_wrap;
  m[_sliverHitTestEntry.funName] = _sliverHitTestEntry;
  m[_sliverLogicalParentData.funName] = _sliverLogicalParentData;
  m[_sliverLogicalContainerParentData.funName] = _sliverLogicalContainerParentData;
  m[_sliverPhysicalParentData.funName] = _sliverPhysicalParentData;
  m[_sliverPhysicalContainerParentData.funName] = _sliverPhysicalContainerParentData;
  m[_renderSliverToBoxAdapter.funName] = _renderSliverToBoxAdapter;
  m[_cacheExtentStyle.funName] = _cacheExtentStyle;
  m[_revealedOffset.funName] = _revealedOffset;
  m[_renderViewport.funName] = _renderViewport;
  m[_renderShrinkWrappingViewport.funName] = _renderShrinkWrappingViewport;
  return m;
}
var _growthDirection = MXFunctionInvoke(
    "GrowthDirection",
    ({Map args}) => MXGrowthDirection.parse(args),
  );
var _sliverConstraints = MXFunctionInvoke(
    "SliverConstraints",
    (
      {
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
      }
    ) =>
      SliverConstraints(
      axisDirection: axisDirection,
      growthDirection: growthDirection,
      userScrollDirection: userScrollDirection,
      scrollOffset: scrollOffset?.toDouble(),
      precedingScrollExtent: precedingScrollExtent?.toDouble(),
      overlap: overlap?.toDouble(),
      remainingPaintExtent: remainingPaintExtent?.toDouble(),
      crossAxisExtent: crossAxisExtent?.toDouble(),
      crossAxisDirection: crossAxisDirection,
      viewportMainAxisExtent: viewportMainAxisExtent?.toDouble(),
      remainingCacheExtent: remainingCacheExtent?.toDouble(),
      cacheOrigin: cacheOrigin?.toDouble(),
    ),
);
var _sliverGeometry = MXFunctionInvoke(
    "SliverGeometry",
    (
      {
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
      }
    ) =>
      SliverGeometry(
      scrollExtent: scrollExtent?.toDouble(),
      paintExtent: paintExtent?.toDouble(),
      paintOrigin: paintOrigin?.toDouble(),
      layoutExtent: layoutExtent?.toDouble(),
      maxPaintExtent: maxPaintExtent?.toDouble(),
      maxScrollObstructionExtent: maxScrollObstructionExtent?.toDouble(),
      hitTestExtent: hitTestExtent?.toDouble(),
      visible: visible,
      hasVisualOverflow: hasVisualOverflow,
      scrollOffsetCorrection: scrollOffsetCorrection?.toDouble(),
      cacheExtent: cacheExtent?.toDouble(),
    ),
);
var _sliverHitTestResult = MXFunctionInvoke(
    "SliverHitTestResult",
    (
    ) =>
      SliverHitTestResult(
    ),
);
var _sliverHitTestResult_wrap = MXFunctionInvoke(
  "SliverHitTestResult.wrap",
    (
      {
      HitTestResult result,
      }
    ) =>
      SliverHitTestResult.wrap(
      result,
    ),
);
var _sliverHitTestEntry = MXFunctionInvoke(
    "SliverHitTestEntry",
    (
      {
      RenderSliver target,
      dynamic mainAxisPosition,
      dynamic crossAxisPosition,
      }
    ) =>
      SliverHitTestEntry(
      target,
      mainAxisPosition: mainAxisPosition?.toDouble(),
      crossAxisPosition: crossAxisPosition?.toDouble(),
    ),
);
var _sliverLogicalParentData = MXFunctionInvoke(
    "SliverLogicalParentData",
    (
    ) =>
      SliverLogicalParentData(
    ),
);
var _sliverLogicalContainerParentData = MXFunctionInvoke(
    "SliverLogicalContainerParentData",
    (
    ) =>
      SliverLogicalContainerParentData(
    ),
);
var _sliverPhysicalParentData = MXFunctionInvoke(
    "SliverPhysicalParentData",
    (
    ) =>
      SliverPhysicalParentData(
    ),
);
var _sliverPhysicalContainerParentData = MXFunctionInvoke(
    "SliverPhysicalContainerParentData",
    (
    ) =>
      SliverPhysicalContainerParentData(
    ),
);
var _renderSliverToBoxAdapter = MXFunctionInvoke(
    "RenderSliverToBoxAdapter",
    (
      {
      RenderBox child,
      }
    ) =>
      RenderSliverToBoxAdapter(
      child: child,
    ),
);
var _cacheExtentStyle = MXFunctionInvoke(
    "CacheExtentStyle",
    ({Map args}) => MXCacheExtentStyle.parse(args),
  );
var _revealedOffset = MXFunctionInvoke(
    "RevealedOffset",
    (
      {
      dynamic offset,
      Rect rect,
      }
    ) =>
      RevealedOffset(
      offset: offset?.toDouble(),
      rect: rect,
    ),
);
var _renderViewport = MXFunctionInvoke(
    "RenderViewport",
    (
      {
      AxisDirection axisDirection = AxisDirection.down,
      AxisDirection crossAxisDirection,
      ViewportOffset offset,
      dynamic anchor = 0.0,
      List<RenderSliver> children,
      RenderSliver center,
      dynamic cacheExtent,
      CacheExtentStyle cacheExtentStyle = CacheExtentStyle.pixel,
      }
    ) =>
      RenderViewport(
      axisDirection: axisDirection,
      crossAxisDirection: crossAxisDirection,
      offset: offset,
      anchor: anchor?.toDouble(),
      children: children,
      center: center,
      cacheExtent: cacheExtent?.toDouble(),
      cacheExtentStyle: cacheExtentStyle,
    ),
);
var _renderShrinkWrappingViewport = MXFunctionInvoke(
    "RenderShrinkWrappingViewport",
    (
      {
      AxisDirection axisDirection = AxisDirection.down,
      AxisDirection crossAxisDirection,
      ViewportOffset offset,
      List<RenderSliver> children,
      }
    ) =>
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

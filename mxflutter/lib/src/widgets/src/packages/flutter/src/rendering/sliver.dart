//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/viewport.dart';


class MXProxySliver {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
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
  static var growthDirection = MXFunctionInvoke(
      "GrowthDirection",
      ({Map args}) => MXGrowthDirection.parse(args),
  );
  static var sliverConstraints = MXFunctionInvoke(
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
  static var sliverGeometry = MXFunctionInvoke(
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
  static var sliverHitTestResult = MXFunctionInvoke(
      "SliverHitTestResult",
      ({
      }) =>
        SliverHitTestResult(
      ),
    );
  static var sliverHitTestResult_wrap = MXFunctionInvoke(
    "sliverHitTestResult.wrap",
      ({
        HitTestResult result,
      }) =>
        SliverHitTestResult.wrap(
        result,
      ),
    );
  static var sliverHitTestEntry = MXFunctionInvoke(
      "SliverHitTestEntry",
      ({
        RenderSliver target,
        dynamic mainAxisPosition,
        dynamic crossAxisPosition,
      }) =>
        SliverHitTestEntry(
        target,
        mainAxisPosition: mainAxisPosition?.toDouble(),
        crossAxisPosition: crossAxisPosition?.toDouble(),
      ),
    );
  static var sliverLogicalParentData = MXFunctionInvoke(
      "SliverLogicalParentData",
      ({
      }) =>
        SliverLogicalParentData(
      ),
    );
  static var sliverLogicalContainerParentData = MXFunctionInvoke(
      "SliverLogicalContainerParentData",
      ({
      }) =>
        SliverLogicalContainerParentData(
      ),
    );
  static var sliverPhysicalParentData = MXFunctionInvoke(
      "SliverPhysicalParentData",
      ({
      }) =>
        SliverPhysicalParentData(
      ),
    );
  static var sliverPhysicalContainerParentData = MXFunctionInvoke(
      "SliverPhysicalContainerParentData",
      ({
      }) =>
        SliverPhysicalContainerParentData(
      ),
    );
  static var renderSliverToBoxAdapter = MXFunctionInvoke(
      "RenderSliverToBoxAdapter",
      ({
        RenderBox child,
      }) =>
        RenderSliverToBoxAdapter(
        child: child,
      ),
    );
  static var cacheExtentStyle = MXFunctionInvoke(
      "CacheExtentStyle",
      ({Map args}) => MXCacheExtentStyle.parse(args),
  );
  static var revealedOffset = MXFunctionInvoke(
      "RevealedOffset",
      ({
        dynamic offset,
        Rect rect,
      }) =>
        RevealedOffset(
        offset: offset?.toDouble(),
        rect: rect,
      ),
    );
  static var renderViewport = MXFunctionInvoke(
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
        anchor: anchor?.toDouble(),
        children: children,
        center: center,
        cacheExtent: cacheExtent?.toDouble(),
        cacheExtentStyle: cacheExtentStyle,
      ),
    );
  static var renderShrinkWrappingViewport = MXFunctionInvoke(
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
}
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

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/viewport.dart';
import 'dart:math' as math;
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
Map<String, MXFunctionInvoke> registerViewportSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cacheExtentStyle.funName] = _cacheExtentStyle;
  m[_renderAbstractViewportDefaultCacheExtent.funName] = _renderAbstractViewportDefaultCacheExtent;
  m[_revealedOffset.funName] = _revealedOffset;
  m[_renderViewport.funName] = _renderViewport;
  m[_renderViewportUseTwoPaneSemantics.funName] = _renderViewportUseTwoPaneSemantics;
  m[_renderViewportExcludeFromScrolling.funName] = _renderViewportExcludeFromScrolling;
  m[_renderShrinkWrappingViewport.funName] = _renderShrinkWrappingViewport;
  return m;
}

var _cacheExtentStyle = MXFunctionInvoke(
    "CacheExtentStyle", ({String name, int index}) => MXCacheExtentStyle.parse(name, index), ["name", "index"]);
var _renderAbstractViewportDefaultCacheExtent =
    MXFunctionInvoke("RenderAbstractViewport.defaultCacheExtent", () => RenderAbstractViewport.defaultCacheExtent);
var _revealedOffset = MXFunctionInvoke(
  "RevealedOffset",
  ({
    dynamic offset,
    Rect rect,
  }) =>
      RevealedOffset(
    offset: offset?.toDouble(),
    rect: rect,
  ),
  [
    "offset",
    "rect",
  ],
);
var _renderViewport = MXFunctionInvoke(
  "RenderViewport",
  ({
    AxisDirection axisDirection = AxisDirection.down,
    AxisDirection crossAxisDirection,
    ViewportOffset offset,
    dynamic anchor = 0.0,
    dynamic children,
    RenderSliver center,
    dynamic cacheExtent,
    CacheExtentStyle cacheExtentStyle = CacheExtentStyle.pixel,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      RenderViewport(
    axisDirection: axisDirection,
    crossAxisDirection: crossAxisDirection,
    offset: offset,
    anchor: anchor?.toDouble(),
    children: toListT<RenderSliver>(children),
    center: center,
    cacheExtent: cacheExtent?.toDouble(),
    cacheExtentStyle: cacheExtentStyle,
    clipBehavior: clipBehavior,
  ),
  [
    "axisDirection",
    "crossAxisDirection",
    "offset",
    "anchor",
    "children",
    "center",
    "cacheExtent",
    "cacheExtentStyle",
    "clipBehavior",
  ],
);
var _renderViewportUseTwoPaneSemantics =
    MXFunctionInvoke("RenderViewport.useTwoPaneSemantics", () => RenderViewport.useTwoPaneSemantics);
var _renderViewportExcludeFromScrolling =
    MXFunctionInvoke("RenderViewport.excludeFromScrolling", () => RenderViewport.excludeFromScrolling);
var _renderShrinkWrappingViewport = MXFunctionInvoke(
  "RenderShrinkWrappingViewport",
  ({
    AxisDirection axisDirection = AxisDirection.down,
    AxisDirection crossAxisDirection,
    ViewportOffset offset,
    Clip clipBehavior = Clip.hardEdge,
    dynamic children,
  }) =>
      RenderShrinkWrappingViewport(
    axisDirection: axisDirection,
    crossAxisDirection: crossAxisDirection,
    offset: offset,
    clipBehavior: clipBehavior,
    children: toListT<RenderSliver>(children),
  ),
  [
    "axisDirection",
    "crossAxisDirection",
    "offset",
    "clipBehavior",
    "children",
  ],
);

class MXCacheExtentStyle {
  static CacheExtentStyle parse(String name, int index) {
    switch (name) {
      case 'CacheExtentStyle.pixel':
        return CacheExtentStyle.pixel;
      case 'CacheExtentStyle.viewport':
        return CacheExtentStyle.viewport;
    }
    return null;
  }
}

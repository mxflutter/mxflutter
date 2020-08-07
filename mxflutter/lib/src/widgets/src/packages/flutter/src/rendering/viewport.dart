//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_revealedOffset.funName] = _revealedOffset;
  m[_renderViewport.funName] = _renderViewport;
  m[_renderShrinkWrappingViewport.funName] = _renderShrinkWrappingViewport;
  return m;
}
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

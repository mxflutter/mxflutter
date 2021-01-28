//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/viewport.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerViewportSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_viewport.funName] = _viewport;
  m[_shrinkWrappingViewport.funName] = _shrinkWrappingViewport;
  return m;
}

var _viewport = MXFunctionInvoke(
  "Viewport",
  ({
    Key key,
    AxisDirection axisDirection = AxisDirection.down,
    AxisDirection crossAxisDirection,
    dynamic anchor = 0.0,
    ViewportOffset offset,
    Key center,
    dynamic cacheExtent,
    CacheExtentStyle cacheExtentStyle = CacheExtentStyle.pixel,
    Clip clipBehavior = Clip.hardEdge,
    dynamic slivers = const <Widget>[],
  }) =>
      Viewport(
    key: key,
    axisDirection: axisDirection,
    crossAxisDirection: crossAxisDirection,
    anchor: anchor?.toDouble(),
    offset: offset,
    center: center,
    cacheExtent: cacheExtent?.toDouble(),
    cacheExtentStyle: cacheExtentStyle,
    clipBehavior: clipBehavior,
    slivers: toListT<Widget>(slivers),
  ),
  [
    "key",
    "axisDirection",
    "crossAxisDirection",
    "anchor",
    "offset",
    "center",
    "cacheExtent",
    "cacheExtentStyle",
    "clipBehavior",
    "slivers",
  ],
);
var _shrinkWrappingViewport = MXFunctionInvoke(
  "ShrinkWrappingViewport",
  ({
    Key key,
    AxisDirection axisDirection = AxisDirection.down,
    AxisDirection crossAxisDirection,
    ViewportOffset offset,
    Clip clipBehavior = Clip.hardEdge,
    dynamic slivers = const <Widget>[],
  }) =>
      ShrinkWrappingViewport(
    key: key,
    axisDirection: axisDirection,
    crossAxisDirection: crossAxisDirection,
    offset: offset,
    clipBehavior: clipBehavior,
    slivers: toListT<Widget>(slivers),
  ),
  [
    "key",
    "axisDirection",
    "crossAxisDirection",
    "offset",
    "clipBehavior",
    "slivers",
  ],
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/sliver_fill.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_fixed_extent_list.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverFillSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderSliverFillViewport.funName] = _renderSliverFillViewport;
  m[_renderSliverFillRemainingWithScrollable.funName] = _renderSliverFillRemainingWithScrollable;
  m[_renderSliverFillRemaining.funName] = _renderSliverFillRemaining;
  m[_renderSliverFillRemainingAndOverscroll.funName] = _renderSliverFillRemainingAndOverscroll;
  return m;
}

var _renderSliverFillViewport = MXFunctionInvoke(
  "RenderSliverFillViewport",
  ({
    RenderSliverBoxChildManager childManager,
    dynamic viewportFraction = 1.0,
  }) =>
      RenderSliverFillViewport(
    childManager: childManager,
    viewportFraction: viewportFraction?.toDouble(),
  ),
  [
    "childManager",
    "viewportFraction",
  ],
);
var _renderSliverFillRemainingWithScrollable = MXFunctionInvoke(
  "RenderSliverFillRemainingWithScrollable",
  ({
    RenderBox child,
  }) =>
      RenderSliverFillRemainingWithScrollable(
    child: child,
  ),
  [
    "child",
  ],
);
var _renderSliverFillRemaining = MXFunctionInvoke(
  "RenderSliverFillRemaining",
  ({
    RenderBox child,
  }) =>
      RenderSliverFillRemaining(
    child: child,
  ),
  [
    "child",
  ],
);
var _renderSliverFillRemainingAndOverscroll = MXFunctionInvoke(
  "RenderSliverFillRemainingAndOverscroll",
  ({
    RenderBox child,
  }) =>
      RenderSliverFillRemainingAndOverscroll(
    child: child,
  ),
  [
    "child",
  ],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/sliver_fill.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_fixed_extent_list.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverFillSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[renderSliverFillViewport.funName] = renderSliverFillViewport;
  m[renderSliverFillRemainingWithScrollable.funName] = renderSliverFillRemainingWithScrollable;
  m[renderSliverFillRemaining.funName] = renderSliverFillRemaining;
  m[renderSliverFillRemainingAndOverscroll.funName] = renderSliverFillRemainingAndOverscroll;
  return m;
}
var renderSliverFillViewport = MXFunctionInvoke(
    "RenderSliverFillViewport",
    ({
      RenderSliverBoxChildManager childManager,
      dynamic viewportFraction = 1.0,
    }) =>
      RenderSliverFillViewport(
      childManager: childManager,
      viewportFraction: viewportFraction,
    ),
);
var renderSliverFillRemainingWithScrollable = MXFunctionInvoke(
    "RenderSliverFillRemainingWithScrollable",
    ({
      RenderBox child,
    }) =>
      RenderSliverFillRemainingWithScrollable(
      child: child,
    ),
);
var renderSliverFillRemaining = MXFunctionInvoke(
    "RenderSliverFillRemaining",
    ({
      RenderBox child,
    }) =>
      RenderSliverFillRemaining(
      child: child,
    ),
);
var renderSliverFillRemainingAndOverscroll = MXFunctionInvoke(
    "RenderSliverFillRemainingAndOverscroll",
    ({
      RenderBox child,
    }) =>
      RenderSliverFillRemainingAndOverscroll(
      child: child,
    ),
);

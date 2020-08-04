//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_fill.dart';


class MXProxySliverFill {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[renderSliverFillViewport.funName] = renderSliverFillViewport;
    m[renderSliverFillRemainingWithScrollable.funName] = renderSliverFillRemainingWithScrollable;
    m[renderSliverFillRemaining.funName] = renderSliverFillRemaining;
    m[renderSliverFillRemainingAndOverscroll.funName] = renderSliverFillRemainingAndOverscroll;
    return m;
  }
  static var renderSliverFillViewport = MXFunctionInvoke(
      "RenderSliverFillViewport",
      ({
        RenderSliverBoxChildManager childManager,
        dynamic viewportFraction = 1.0,
      }) =>
        RenderSliverFillViewport(
        childManager: childManager,
        viewportFraction: viewportFraction?.toDouble(),
      ),
    );
  static var renderSliverFillRemainingWithScrollable = MXFunctionInvoke(
      "RenderSliverFillRemainingWithScrollable",
      ({
        RenderBox child,
      }) =>
        RenderSliverFillRemainingWithScrollable(
        child: child,
      ),
    );
  static var renderSliverFillRemaining = MXFunctionInvoke(
      "RenderSliverFillRemaining",
      ({
        RenderBox child,
      }) =>
        RenderSliverFillRemaining(
        child: child,
      ),
    );
  static var renderSliverFillRemainingAndOverscroll = MXFunctionInvoke(
      "RenderSliverFillRemainingAndOverscroll",
      ({
        RenderBox child,
      }) =>
        RenderSliverFillRemainingAndOverscroll(
        child: child,
      ),
    );
}

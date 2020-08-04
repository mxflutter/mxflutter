//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/sliver_fill.dart';


class MXProxySliverFill {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[sliverFillViewport.funName] = sliverFillViewport;
    m[sliverFillRemaining.funName] = sliverFillRemaining;
    return m;
  }
  static var sliverFillViewport = MXFunctionInvoke(
      "SliverFillViewport",
      ({
        Key key,
        SliverChildDelegate delegate,
        dynamic viewportFraction = 1.0,
        bool padEnds = true,
      }) =>
        SliverFillViewport(
        key: key,
        delegate: delegate,
        viewportFraction: viewportFraction?.toDouble(),
        padEnds: padEnds,
      ),
    );
  static var sliverFillRemaining = MXFunctionInvoke(
      "SliverFillRemaining",
      ({
        Key key,
        Widget child,
        bool hasScrollBody = true,
        bool fillOverscroll = false,
      }) =>
        SliverFillRemaining(
        key: key,
        child: child,
        hasScrollBody: hasScrollBody,
        fillOverscroll: fillOverscroll,
      ),
    );
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/sliver_fill.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/sliver.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverFillSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[sliverFillViewport.funName] = sliverFillViewport;
  m[sliverFillRemaining.funName] = sliverFillRemaining;
  return m;
}
var sliverFillViewport = MXFunctionInvoke(
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
      viewportFraction: viewportFraction,
      padEnds: padEnds,
    ),
);
var sliverFillRemaining = MXFunctionInvoke(
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

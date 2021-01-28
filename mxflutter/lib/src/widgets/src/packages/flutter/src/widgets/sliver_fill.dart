//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_sliverFillViewport.funName] = _sliverFillViewport;
  m[_sliverFillRemaining.funName] = _sliverFillRemaining;
  return m;
}

var _sliverFillViewport = MXFunctionInvoke(
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
  [
    "key",
    "delegate",
    "viewportFraction",
    "padEnds",
  ],
);
var _sliverFillRemaining = MXFunctionInvoke(
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
  [
    "key",
    "child",
    "hasScrollBody",
    "fillOverscroll",
  ],
);

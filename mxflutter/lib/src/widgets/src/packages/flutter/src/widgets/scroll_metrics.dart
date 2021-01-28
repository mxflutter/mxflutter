//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollMetricsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_fixedScrollMetrics.funName] = _fixedScrollMetrics;
  return m;
}

var _fixedScrollMetrics = MXFunctionInvoke(
  "FixedScrollMetrics",
  ({
    dynamic minScrollExtent,
    dynamic maxScrollExtent,
    dynamic pixels,
    dynamic viewportDimension,
    AxisDirection axisDirection,
  }) =>
      FixedScrollMetrics(
    minScrollExtent: minScrollExtent?.toDouble(),
    maxScrollExtent: maxScrollExtent?.toDouble(),
    pixels: pixels?.toDouble(),
    viewportDimension: viewportDimension?.toDouble(),
    axisDirection: axisDirection,
  ),
  [
    "minScrollExtent",
    "maxScrollExtent",
    "pixels",
    "viewportDimension",
    "axisDirection",
  ],
);

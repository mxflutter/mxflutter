//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/activity_indicator.dart';
import 'dart:math' as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerActivityIndicatorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoActivityIndicator.funName] = _cupertinoActivityIndicator;
  m[_cupertinoActivityIndicatorPartiallyRevealed.funName] = _cupertinoActivityIndicatorPartiallyRevealed;
  return m;
}

var _cupertinoActivityIndicator = MXFunctionInvoke(
  "CupertinoActivityIndicator",
  ({
    Key key,
    bool animating = true,
    dynamic radius = 10.0,
  }) =>
      CupertinoActivityIndicator(
    key: key,
    animating: animating,
    radius: radius?.toDouble(),
  ),
  [
    "key",
    "animating",
    "radius",
  ],
);
var _cupertinoActivityIndicatorPartiallyRevealed = MXFunctionInvoke(
  "CupertinoActivityIndicator.partiallyRevealed",
  ({
    Key key,
    dynamic radius = 10.0,
    dynamic progress = 1.0,
  }) =>
      CupertinoActivityIndicator.partiallyRevealed(
    key: key,
    radius: radius?.toDouble(),
    progress: progress?.toDouble(),
  ),
  [
    "key",
    "radius",
    "progress",
  ],
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/sliver_padding.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverPaddingSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderSliverPadding.funName] = _renderSliverPadding;
  return m;
}

var _renderSliverPadding = MXFunctionInvoke(
  "RenderSliverPadding",
  ({
    EdgeInsetsGeometry padding,
    TextDirection textDirection,
    RenderSliver child,
  }) =>
      RenderSliverPadding(
    padding: padding,
    textDirection: textDirection,
    child: child,
  ),
  [
    "padding",
    "textDirection",
    "child",
  ],
);

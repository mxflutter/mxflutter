//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/custom_paint.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/semantics.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/proxy_box.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCustomPaintSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_customPainterSemantics.funName] = _customPainterSemantics;
  m[_renderCustomPaint.funName] = _renderCustomPaint;
  return m;
}

var _customPainterSemantics = MXFunctionInvoke(
  "CustomPainterSemantics",
  ({
    Key key,
    Rect rect,
    SemanticsProperties properties,
    Matrix4 transform,
    Set<SemanticsTag> tags,
  }) =>
      CustomPainterSemantics(
    key: key,
    rect: rect,
    properties: properties,
    transform: transform,
    tags: tags,
  ),
  [
    "key",
    "rect",
    "properties",
    "transform",
    "tags",
  ],
);
var _renderCustomPaint = MXFunctionInvoke(
  "RenderCustomPaint",
  ({
    CustomPainter painter,
    CustomPainter foregroundPainter,
    Size preferredSize = Size.zero,
    bool isComplex = false,
    bool willChange = false,
    RenderBox child,
  }) =>
      RenderCustomPaint(
    painter: painter,
    foregroundPainter: foregroundPainter,
    preferredSize: preferredSize,
    isComplex: isComplex,
    willChange: willChange,
    child: child,
  ),
  [
    "painter",
    "foregroundPainter",
    "preferredSize",
    "isComplex",
    "willChange",
    "child",
  ],
);

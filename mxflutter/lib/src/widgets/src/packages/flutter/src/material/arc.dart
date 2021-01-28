//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/arc.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerArcSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_materialPointArcTween.funName] = _materialPointArcTween;
  m[_materialRectArcTween.funName] = _materialRectArcTween;
  m[_materialRectCenterArcTween.funName] = _materialRectCenterArcTween;
  return m;
}

var _materialPointArcTween = MXFunctionInvoke(
  "MaterialPointArcTween",
  ({
    Offset begin,
    Offset end,
  }) =>
      MaterialPointArcTween(
    begin: begin,
    end: end,
  ),
  [
    "__mx_begin",
    "__mx_end",
  ],
);
var _materialRectArcTween = MXFunctionInvoke(
  "MaterialRectArcTween",
  ({
    Rect begin,
    Rect end,
  }) =>
      MaterialRectArcTween(
    begin: begin,
    end: end,
  ),
  [
    "__mx_begin",
    "__mx_end",
  ],
);
var _materialRectCenterArcTween = MXFunctionInvoke(
  "MaterialRectCenterArcTween",
  ({
    Rect begin,
    Rect end,
  }) =>
      MaterialRectCenterArcTween(
    begin: begin,
    end: end,
  ),
  [
    "__mx_begin",
    "__mx_end",
  ],
);

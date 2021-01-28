//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/box_shadow.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/debug.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBoxShadowSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_boxShadow.funName] = _boxShadow;
  return m;
}

var _boxShadow = MXFunctionInvoke(
  "BoxShadow",
  ({
    ui.Color color = const Color(0xFF000000),
    ui.Offset offset = Offset.zero,
    dynamic blurRadius = 0.0,
    dynamic spreadRadius = 0.0,
  }) =>
      BoxShadow(
    color: color,
    offset: offset,
    blurRadius: blurRadius?.toDouble(),
    spreadRadius: spreadRadius?.toDouble(),
  ),
  [
    "color",
    "offset",
    "blurRadius",
    "spreadRadius",
  ],
);

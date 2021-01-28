//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/input_border.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/widgets.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInputBorderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_inputBorderNone.funName] = _inputBorderNone;
  m[_underlineInputBorder.funName] = _underlineInputBorder;
  m[_outlineInputBorder.funName] = _outlineInputBorder;
  return m;
}

var _inputBorderNone = MXFunctionInvoke("InputBorder.none", () => InputBorder.none);
var _underlineInputBorder = MXFunctionInvoke(
  "UnderlineInputBorder",
  ({
    BorderSide borderSide = const BorderSide(),
    BorderRadius borderRadius =
        const BorderRadius.only(topLeft: const Radius.circular(4.0), topRight: const Radius.circular(4.0)),
  }) =>
      UnderlineInputBorder(
    borderSide: borderSide,
    borderRadius: borderRadius,
  ),
  [
    "borderSide",
    "borderRadius",
  ],
);
var _outlineInputBorder = MXFunctionInvoke(
  "OutlineInputBorder",
  ({
    BorderSide borderSide = const BorderSide(),
    BorderRadius borderRadius = const BorderRadius.all(const Radius.circular(4.0)),
    dynamic gapPadding = 4.0,
  }) =>
      OutlineInputBorder(
    borderSide: borderSide,
    borderRadius: borderRadius,
    gapPadding: gapPadding?.toDouble(),
  ),
  [
    "borderSide",
    "borderRadius",
    "gapPadding",
  ],
);

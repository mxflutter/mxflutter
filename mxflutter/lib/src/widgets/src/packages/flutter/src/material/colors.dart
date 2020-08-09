//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/colors.dart';
import 'dart:ui';
import 'package:flutter/painting.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerColorsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_materialColor.funName] = _materialColor;
  m[_materialAccentColor.funName] = _materialAccentColor;
  return m;
}
var _materialColor = MXFunctionInvoke(
    "MaterialColor",
    (
      {
      int primary,
      dynamic swatch,
      }
    ) =>
      MaterialColor(
      primary,
      toMapT<int, Color>(swatch),
    ),
);
var _materialAccentColor = MXFunctionInvoke(
    "MaterialAccentColor",
    (
      {
      int primary,
      dynamic swatch,
      }
    ) =>
      MaterialAccentColor(
      primary,
      toMapT<int, Color>(swatch),
    ),
);

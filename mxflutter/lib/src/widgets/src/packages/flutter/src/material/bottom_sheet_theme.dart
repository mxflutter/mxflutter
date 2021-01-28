//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/bottom_sheet_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBottomSheetThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_bottomSheetThemeData.funName] = _bottomSheetThemeData;
  return m;
}

var _bottomSheetThemeData = MXFunctionInvoke(
  "BottomSheetThemeData",
  ({
    Color backgroundColor,
    dynamic elevation,
    Color modalBackgroundColor,
    dynamic modalElevation,
    ShapeBorder shape,
    Clip clipBehavior,
  }) =>
      BottomSheetThemeData(
    backgroundColor: backgroundColor,
    elevation: elevation?.toDouble(),
    modalBackgroundColor: modalBackgroundColor,
    modalElevation: modalElevation?.toDouble(),
    shape: shape,
    clipBehavior: clipBehavior,
  ),
  [
    "backgroundColor",
    "elevation",
    "modalBackgroundColor",
    "modalElevation",
    "shape",
    "clipBehavior",
  ],
);

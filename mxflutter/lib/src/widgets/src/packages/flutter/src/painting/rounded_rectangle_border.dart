//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/rounded_rectangle_border.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/circle_border.dart';
import 'package:flutter/src/painting/edge_insets.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRoundedRectangleBorderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_roundedRectangleBorder.funName] = _roundedRectangleBorder;
  return m;
}

var _roundedRectangleBorder = MXFunctionInvoke(
  "RoundedRectangleBorder",
  ({
    BorderSide side = BorderSide.none,
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
  }) =>
      RoundedRectangleBorder(
    side: side,
    borderRadius: borderRadius,
  ),
  [
    "side",
    "borderRadius",
  ],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/icon_theme_data.dart';
import 'dart:ui';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/framework.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIconThemeDataSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[iconThemeData.funName] = iconThemeData;
  m[iconThemeData_fallback.funName] = iconThemeData_fallback;
  return m;
}
var iconThemeData = MXFunctionInvoke(
    "IconThemeData",
    ({
      Color color,
      dynamic opacity,
      dynamic size,
    }) =>
      IconThemeData(
      color: color,
      opacity: opacity,
      size: size,
    ),
);
var iconThemeData_fallback = MXFunctionInvoke(
  "iconThemeData.fallback",
    ({
    }) =>
      IconThemeData.fallback(
    ),
);

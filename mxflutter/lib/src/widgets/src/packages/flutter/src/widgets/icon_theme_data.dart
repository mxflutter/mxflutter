//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/icon_theme_data.dart';
import 'dart:ui';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIconThemeDataSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_iconThemeData.funName] = _iconThemeData;
  m[_iconThemeDataFallback.funName] = _iconThemeDataFallback;
  return m;
}

var _iconThemeData = MXFunctionInvoke(
  "IconThemeData",
  ({
    ui.Color color,
    dynamic opacity,
    dynamic size,
  }) =>
      IconThemeData(
    color: color,
    opacity: opacity?.toDouble(),
    size: size?.toDouble(),
  ),
  [
    "color",
    "opacity",
    "size",
  ],
);
var _iconThemeDataFallback = MXFunctionInvoke(
  "IconThemeData.fallback",
  () => IconThemeData.fallback(),
  [],
);

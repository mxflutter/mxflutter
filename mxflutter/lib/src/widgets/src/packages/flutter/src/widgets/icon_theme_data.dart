//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/icon_theme_data.dart';


class MXProxyIconThemeData {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[iconThemeData.funName] = iconThemeData;
    m[iconThemeData_fallback.funName] = iconThemeData_fallback;
    return m;
  }
  static var iconThemeData = MXFunctionInvoke(
      "IconThemeData",
      ({
        Color color,
        dynamic opacity,
        dynamic size,
      }) =>
        IconThemeData(
        color: color,
        opacity: opacity?.toDouble(),
        size: size?.toDouble(),
      ),
    );
  static var iconThemeData_fallback = MXFunctionInvoke(
    "iconThemeData.fallback",
      ({
      }) =>
        IconThemeData.fallback(
      ),
    );
}

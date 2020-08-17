//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/icon_theme_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIconThemeDataSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoIconThemeData.funName] = _cupertinoIconThemeData;
  return m;
}

var _cupertinoIconThemeData = MXFunctionInvoke(
  "CupertinoIconThemeData",
  ({
    Color color,
    dynamic opacity,
    dynamic size,
  }) =>
      CupertinoIconThemeData(
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

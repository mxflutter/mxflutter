//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/icon_data.dart';
import 'package:flutter/src/widgets/icon_theme.dart';
import 'package:flutter/src/widgets/icon_theme_data.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIconSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[icon.funName] = icon;
  return m;
}
var icon = MXFunctionInvoke(
    "Icon",
    ({
      IconData icon,
      Key key,
      dynamic size,
      Color color,
      String semanticLabel,
      TextDirection textDirection,
    }) =>
      Icon(
      icon,
      key: key,
      size: size,
      color: color,
      semanticLabel: semanticLabel,
      textDirection: textDirection,
    ),
);

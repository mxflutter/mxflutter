//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_icon.funName] = _icon;
  return m;
}

var _icon = MXFunctionInvoke(
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
    size: size?.toDouble(),
    color: color,
    semanticLabel: semanticLabel,
    textDirection: textDirection,
  ),
  [
    "icon",
    "key",
    "size",
    "color",
    "semanticLabel",
    "textDirection",
  ],
);

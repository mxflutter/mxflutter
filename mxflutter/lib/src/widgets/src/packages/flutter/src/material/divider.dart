//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/material/divider_theme.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDividerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_divider.funName] = _divider;
  m[_verticalDivider.funName] = _verticalDivider;
  return m;
}

var _divider = MXFunctionInvoke(
  "Divider",
  ({
    Key key,
    dynamic height,
    dynamic thickness,
    dynamic indent,
    dynamic endIndent,
    Color color,
  }) =>
      Divider(
    key: key,
    height: height?.toDouble(),
    thickness: thickness?.toDouble(),
    indent: indent?.toDouble(),
    endIndent: endIndent?.toDouble(),
    color: color,
  ),
  [
    "key",
    "height",
    "thickness",
    "indent",
    "endIndent",
    "color",
  ],
);
var _verticalDivider = MXFunctionInvoke(
  "VerticalDivider",
  ({
    Key key,
    dynamic width,
    dynamic thickness,
    dynamic indent,
    dynamic endIndent,
    Color color,
  }) =>
      VerticalDivider(
    key: key,
    width: width?.toDouble(),
    thickness: thickness?.toDouble(),
    indent: indent?.toDouble(),
    endIndent: endIndent?.toDouble(),
    color: color,
  ),
  [
    "key",
    "width",
    "thickness",
    "indent",
    "endIndent",
    "color",
  ],
);

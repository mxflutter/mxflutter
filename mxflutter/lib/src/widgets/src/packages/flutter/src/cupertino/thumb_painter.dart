//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/thumb_painter.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/cupertino/colors.dart';
// MX modified begin 多import了material.dart
import 'package:flutter/material.dart';
// MX modified end

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerThumbPainterSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoThumbPainter.funName] = _cupertinoThumbPainter;
  m[_cupertinoThumbPainterRadius.funName] = _cupertinoThumbPainterRadius;
  m[_cupertinoThumbPainterExtension.funName] = _cupertinoThumbPainterExtension;
  m[_cupertinoThumbPainterSwitchThumb.funName] = _cupertinoThumbPainterSwitchThumb;
  return m;
}

var _cupertinoThumbPainter = MXFunctionInvoke(
  "CupertinoThumbPainter",
  ({
    Color color = Colors.white,
    dynamic shadows = const <BoxShadow>[
      BoxShadow(color: Color(0x26000000), offset: Offset(0.0, 3.0), blurRadius: 8.0),
      BoxShadow(color: Color(0x29000000), offset: Offset(0.0, 1.0), blurRadius: 1.0),
      BoxShadow(color: Color(0x1A000000), offset: Offset(0.0, 3.0), blurRadius: 1.0)
    ],
  }) =>
      CupertinoThumbPainter(
    color: color,
    shadows: toListT<BoxShadow>(shadows),
  ),
  [
    "color",
    "shadows",
  ],
);
var _cupertinoThumbPainterRadius = MXFunctionInvoke("CupertinoThumbPainter.radius", () => CupertinoThumbPainter.radius);
var _cupertinoThumbPainterExtension =
    MXFunctionInvoke("CupertinoThumbPainter.extension", () => CupertinoThumbPainter.extension);
var _cupertinoThumbPainterSwitchThumb = MXFunctionInvoke(
  "CupertinoThumbPainter.switchThumb",
  ({
    Color color = Colors.white,
    dynamic shadows = const <BoxShadow>[
      BoxShadow(color: Color(0x26000000), offset: Offset(0.0, 3.0), blurRadius: 8.0),
      BoxShadow(color: Color(0x0F000000), offset: Offset(0.0, 3.0), blurRadius: 1.0)
    ],
  }) =>
      CupertinoThumbPainter.switchThumb(
    color: color,
    shadows: toListT<BoxShadow>(shadows),
  ),
  [
    "color",
    "shadows",
  ],
);

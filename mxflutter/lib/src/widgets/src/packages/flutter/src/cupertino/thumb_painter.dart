//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/thumb_painter.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/cupertino/colors.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerThumbPainterSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[cupertinoThumbPainter.funName] = cupertinoThumbPainter;
  m[cupertinoThumbPainter_switchThumb.funName] = cupertinoThumbPainter_switchThumb;
  return m;
}
var cupertinoThumbPainter = MXFunctionInvoke(
    "CupertinoThumbPainter",
    ({
      Color color,
      List<BoxShadow> shadows,
    }) =>
      CupertinoThumbPainter(
      color: color,
      shadows: shadows,
    ),
);
var cupertinoThumbPainter_switchThumb = MXFunctionInvoke(
  "cupertinoThumbPainter.switchThumb",
    ({
      Color color,
      List<BoxShadow> shadows,
    }) =>
      CupertinoThumbPainter.switchThumb(
      color: color,
      shadows: shadows,
    ),
);

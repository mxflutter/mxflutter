//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/thumb_painter.dart';


class MXProxyThumbPainter {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[cupertinoThumbPainter.funName] = cupertinoThumbPainter;
    m[cupertinoThumbPainter_switchThumb.funName] = cupertinoThumbPainter_switchThumb;
    return m;
  }
  static var cupertinoThumbPainter = MXFunctionInvoke(
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
  static var cupertinoThumbPainter_switchThumb = MXFunctionInvoke(
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
}

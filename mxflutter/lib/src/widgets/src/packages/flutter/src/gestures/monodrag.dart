//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/monodrag.dart';


class MXProxyMonodrag {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[verticalDragGestureRecognizer.funName] = verticalDragGestureRecognizer;
    m[horizontalDragGestureRecognizer.funName] = horizontalDragGestureRecognizer;
    m[panGestureRecognizer.funName] = panGestureRecognizer;
    return m;
  }
  static var verticalDragGestureRecognizer = MXFunctionInvoke(
      "VerticalDragGestureRecognizer",
      ({
        Object debugOwner,
        PointerDeviceKind kind,
      }) =>
        VerticalDragGestureRecognizer(
        debugOwner: debugOwner,
        kind: kind,
      ),
    );
  static var horizontalDragGestureRecognizer = MXFunctionInvoke(
      "HorizontalDragGestureRecognizer",
      ({
        Object debugOwner,
        PointerDeviceKind kind,
      }) =>
        HorizontalDragGestureRecognizer(
        debugOwner: debugOwner,
        kind: kind,
      ),
    );
  static var panGestureRecognizer = MXFunctionInvoke(
      "PanGestureRecognizer",
      ({
        Object debugOwner,
      }) =>
        PanGestureRecognizer(
        debugOwner: debugOwner,
      ),
    );
}

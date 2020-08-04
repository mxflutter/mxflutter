//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/multidrag.dart';


class MXProxyMultidrag {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[immediateMultiDragGestureRecognizer.funName] = immediateMultiDragGestureRecognizer;
    m[horizontalMultiDragGestureRecognizer.funName] = horizontalMultiDragGestureRecognizer;
    m[verticalMultiDragGestureRecognizer.funName] = verticalMultiDragGestureRecognizer;
    m[delayedMultiDragGestureRecognizer.funName] = delayedMultiDragGestureRecognizer;
    return m;
  }
  static var immediateMultiDragGestureRecognizer = MXFunctionInvoke(
      "ImmediateMultiDragGestureRecognizer",
      ({
        Object debugOwner,
        PointerDeviceKind kind,
      }) =>
        ImmediateMultiDragGestureRecognizer(
        debugOwner: debugOwner,
        kind: kind,
      ),
    );
  static var horizontalMultiDragGestureRecognizer = MXFunctionInvoke(
      "HorizontalMultiDragGestureRecognizer",
      ({
        Object debugOwner,
        PointerDeviceKind kind,
      }) =>
        HorizontalMultiDragGestureRecognizer(
        debugOwner: debugOwner,
        kind: kind,
      ),
    );
  static var verticalMultiDragGestureRecognizer = MXFunctionInvoke(
      "VerticalMultiDragGestureRecognizer",
      ({
        Object debugOwner,
        PointerDeviceKind kind,
      }) =>
        VerticalMultiDragGestureRecognizer(
        debugOwner: debugOwner,
        kind: kind,
      ),
    );
  static var delayedMultiDragGestureRecognizer = MXFunctionInvoke(
      "DelayedMultiDragGestureRecognizer",
      ({
        Duration delay,
        Object debugOwner,
        PointerDeviceKind kind,
      }) =>
        DelayedMultiDragGestureRecognizer(
        delay: delay,
        debugOwner: debugOwner,
        kind: kind,
      ),
    );
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/multitap.dart';


class MXProxyMultitap {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[doubleTapGestureRecognizer.funName] = doubleTapGestureRecognizer;
    m[multiTapGestureRecognizer.funName] = multiTapGestureRecognizer;
    return m;
  }
  static var doubleTapGestureRecognizer = MXFunctionInvoke(
      "DoubleTapGestureRecognizer",
      ({
        Object debugOwner,
        PointerDeviceKind kind,
      }) =>
        DoubleTapGestureRecognizer(
        debugOwner: debugOwner,
        kind: kind,
      ),
    );
  static var multiTapGestureRecognizer = MXFunctionInvoke(
      "MultiTapGestureRecognizer",
      ({
        Duration longTapDelay,
        Object debugOwner,
        PointerDeviceKind kind,
      }) =>
        MultiTapGestureRecognizer(
        longTapDelay: longTapDelay,
        debugOwner: debugOwner,
        kind: kind,
      ),
    );
}

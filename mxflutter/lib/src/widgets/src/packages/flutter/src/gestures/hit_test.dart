//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/hit_test.dart';


class MXProxyHitTest {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[hitTestEntry.funName] = hitTestEntry;
    m[hitTestResult.funName] = hitTestResult;
    m[hitTestResult_wrap.funName] = hitTestResult_wrap;
    return m;
  }
  static var hitTestEntry = MXFunctionInvoke(
      "HitTestEntry",
      ({
        HitTestTarget target,
      }) =>
        HitTestEntry(
        target,
      ),
    );
  static var hitTestResult = MXFunctionInvoke(
      "HitTestResult",
      ({
      }) =>
        HitTestResult(
      ),
    );
  static var hitTestResult_wrap = MXFunctionInvoke(
    "hitTestResult.wrap",
      ({
        HitTestResult result,
      }) =>
        HitTestResult.wrap(
        result,
      ),
    );
}

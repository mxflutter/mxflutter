//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/hit_test.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/gestures/events.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerHitTestSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[hitTestEntry.funName] = hitTestEntry;
  m[hitTestResult.funName] = hitTestResult;
  m[hitTestResult_wrap.funName] = hitTestResult_wrap;
  return m;
}
var hitTestEntry = MXFunctionInvoke(
    "HitTestEntry",
    ({
      HitTestTarget target,
    }) =>
      HitTestEntry(
      target,
    ),
);
var hitTestResult = MXFunctionInvoke(
    "HitTestResult",
    ({
    }) =>
      HitTestResult(
    ),
);
var hitTestResult_wrap = MXFunctionInvoke(
  "hitTestResult.wrap",
    ({
      HitTestResult result,
    }) =>
      HitTestResult.wrap(
      result,
    ),
);

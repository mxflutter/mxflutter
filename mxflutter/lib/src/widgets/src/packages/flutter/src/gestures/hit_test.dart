//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/hit_test.dart';
import 'dart:collection' ;
import 'package:flutter/foundation.dart' ;
import 'package:vector_math/vector_math_64.dart' ;
import 'package:flutter/src/gestures/events.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerHitTestSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_hitTestEntry.funName] = _hitTestEntry;
  m[_hitTestResult.funName] = _hitTestResult;
  m[_hitTestResult_wrap.funName] = _hitTestResult_wrap;
  return m;
}
var _hitTestEntry = MXFunctionInvoke(
    "HitTestEntry",
    (
      {
      HitTestTarget target,
      }
    ) =>
      HitTestEntry(
      target,
    ),
);
var _hitTestResult = MXFunctionInvoke(
    "HitTestResult",
    (
    ) =>
      HitTestResult(
    ),
);
var _hitTestResult_wrap = MXFunctionInvoke(
  "HitTestResult.wrap",
    (
      {
      HitTestResult result,
      }
    ) =>
      HitTestResult.wrap(
      result,
    ),
);

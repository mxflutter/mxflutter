//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/gestures/events.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerHitTestSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_hitTestEntry.funName] = _hitTestEntry;
  m[_hitTestResult.funName] = _hitTestResult;
  m[_hitTestResultWrap.funName] = _hitTestResultWrap;
  return m;
}

var _hitTestEntry = MXFunctionInvoke(
  "HitTestEntry",
  ({
    HitTestTarget target,
  }) =>
      HitTestEntry(
    target,
  ),
  [
    "target",
  ],
);
var _hitTestResult = MXFunctionInvoke(
  "HitTestResult",
  () => HitTestResult(),
  [],
);
var _hitTestResultWrap = MXFunctionInvoke(
  "HitTestResult.wrap",
  ({
    HitTestResult result,
  }) =>
      HitTestResult.wrap(
    result,
  ),
  [
    "result",
  ],
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/multitap.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/binding.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/pointer_router.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:flutter/src/gestures/tap.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMultitapSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_doubleTapGestureRecognizer.funName] = _doubleTapGestureRecognizer;
  m[_multiTapGestureRecognizer.funName] = _multiTapGestureRecognizer;
  return m;
}

var _doubleTapGestureRecognizer = MXFunctionInvoke(
  "DoubleTapGestureRecognizer",
  ({
    Object debugOwner,
    PointerDeviceKind kind,
  }) =>
      DoubleTapGestureRecognizer(
    debugOwner: debugOwner,
    kind: kind,
  ),
  [
    "debugOwner",
    "kind",
  ],
);
var _multiTapGestureRecognizer = MXFunctionInvoke(
  "MultiTapGestureRecognizer",
  ({
    Duration longTapDelay = Duration.zero,
    Object debugOwner,
    PointerDeviceKind kind,
  }) =>
      MultiTapGestureRecognizer(
    longTapDelay: longTapDelay,
    debugOwner: debugOwner,
    kind: kind,
  ),
  [
    "longTapDelay",
    "debugOwner",
    "kind",
  ],
);

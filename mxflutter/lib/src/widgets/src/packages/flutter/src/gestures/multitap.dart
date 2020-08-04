//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[doubleTapGestureRecognizer.funName] = doubleTapGestureRecognizer;
  m[multiTapGestureRecognizer.funName] = multiTapGestureRecognizer;
  return m;
}
var doubleTapGestureRecognizer = MXFunctionInvoke(
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
var multiTapGestureRecognizer = MXFunctionInvoke(
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

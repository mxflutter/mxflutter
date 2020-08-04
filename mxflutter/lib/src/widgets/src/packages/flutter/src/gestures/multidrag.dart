//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/multidrag.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/binding.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/drag.dart';
import 'package:flutter/src/gestures/drag_details.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMultidragSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[immediateMultiDragGestureRecognizer.funName] = immediateMultiDragGestureRecognizer;
  m[horizontalMultiDragGestureRecognizer.funName] = horizontalMultiDragGestureRecognizer;
  m[verticalMultiDragGestureRecognizer.funName] = verticalMultiDragGestureRecognizer;
  m[delayedMultiDragGestureRecognizer.funName] = delayedMultiDragGestureRecognizer;
  return m;
}
var immediateMultiDragGestureRecognizer = MXFunctionInvoke(
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
var horizontalMultiDragGestureRecognizer = MXFunctionInvoke(
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
var verticalMultiDragGestureRecognizer = MXFunctionInvoke(
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
var delayedMultiDragGestureRecognizer = MXFunctionInvoke(
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

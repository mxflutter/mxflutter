//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/monodrag.dart';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/drag_details.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMonodragSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_verticalDragGestureRecognizer.funName] = _verticalDragGestureRecognizer;
  m[_horizontalDragGestureRecognizer.funName] = _horizontalDragGestureRecognizer;
  m[_panGestureRecognizer.funName] = _panGestureRecognizer;
  return m;
}

var _verticalDragGestureRecognizer = MXFunctionInvoke(
  "VerticalDragGestureRecognizer",
  ({
    Object debugOwner,
    PointerDeviceKind kind,
  }) =>
      VerticalDragGestureRecognizer(
    debugOwner: debugOwner,
    kind: kind,
  ),
  [
    "debugOwner",
    "kind",
  ],
);
var _horizontalDragGestureRecognizer = MXFunctionInvoke(
  "HorizontalDragGestureRecognizer",
  ({
    Object debugOwner,
    PointerDeviceKind kind,
  }) =>
      HorizontalDragGestureRecognizer(
    debugOwner: debugOwner,
    kind: kind,
  ),
  [
    "debugOwner",
    "kind",
  ],
);
var _panGestureRecognizer = MXFunctionInvoke(
  "PanGestureRecognizer",
  ({
    Object debugOwner,
  }) =>
      PanGestureRecognizer(
    debugOwner: debugOwner,
  ),
  [
    "debugOwner",
  ],
);

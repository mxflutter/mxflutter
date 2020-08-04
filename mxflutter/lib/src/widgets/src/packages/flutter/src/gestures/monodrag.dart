//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[verticalDragGestureRecognizer.funName] = verticalDragGestureRecognizer;
  m[horizontalDragGestureRecognizer.funName] = horizontalDragGestureRecognizer;
  m[panGestureRecognizer.funName] = panGestureRecognizer;
  return m;
}
var verticalDragGestureRecognizer = MXFunctionInvoke(
    "VerticalDragGestureRecognizer",
    ({
      Object debugOwner,
      PointerDeviceKind kind,
    }) =>
      VerticalDragGestureRecognizer(
      debugOwner: debugOwner,
      kind: kind,
    ),
);
var horizontalDragGestureRecognizer = MXFunctionInvoke(
    "HorizontalDragGestureRecognizer",
    ({
      Object debugOwner,
      PointerDeviceKind kind,
    }) =>
      HorizontalDragGestureRecognizer(
      debugOwner: debugOwner,
      kind: kind,
    ),
);
var panGestureRecognizer = MXFunctionInvoke(
    "PanGestureRecognizer",
    ({
      Object debugOwner,
    }) =>
      PanGestureRecognizer(
      debugOwner: debugOwner,
    ),
);

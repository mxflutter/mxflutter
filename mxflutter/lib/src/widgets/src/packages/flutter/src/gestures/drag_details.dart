//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/drag_details.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDragDetailsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[dragDownDetails.funName] = dragDownDetails;
  m[dragStartDetails.funName] = dragStartDetails;
  m[dragUpdateDetails.funName] = dragUpdateDetails;
  m[dragEndDetails.funName] = dragEndDetails;
  return m;
}
var dragDownDetails = MXFunctionInvoke(
    "DragDownDetails",
    ({
      Offset globalPosition,
      Offset localPosition,
    }) =>
      DragDownDetails(
      globalPosition: globalPosition,
      localPosition: localPosition,
    ),
);
var dragStartDetails = MXFunctionInvoke(
    "DragStartDetails",
    ({
      Duration sourceTimeStamp,
      Offset globalPosition,
      Offset localPosition,
    }) =>
      DragStartDetails(
      sourceTimeStamp: sourceTimeStamp,
      globalPosition: globalPosition,
      localPosition: localPosition,
    ),
);
var dragUpdateDetails = MXFunctionInvoke(
    "DragUpdateDetails",
    ({
      Duration sourceTimeStamp,
      Offset delta,
      dynamic primaryDelta,
      Offset globalPosition,
      Offset localPosition,
    }) =>
      DragUpdateDetails(
      sourceTimeStamp: sourceTimeStamp,
      delta: delta,
      primaryDelta: primaryDelta,
      globalPosition: globalPosition,
      localPosition: localPosition,
    ),
);
var dragEndDetails = MXFunctionInvoke(
    "DragEndDetails",
    ({
      Velocity velocity,
      dynamic primaryVelocity,
    }) =>
      DragEndDetails(
      velocity: velocity,
      primaryVelocity: primaryVelocity,
    ),
);

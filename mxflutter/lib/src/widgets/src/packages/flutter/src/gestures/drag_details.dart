//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/drag_details.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDragDetailsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dragDownDetails.funName] = _dragDownDetails;
  m[_dragStartDetails.funName] = _dragStartDetails;
  m[_dragUpdateDetails.funName] = _dragUpdateDetails;
  m[_dragEndDetails.funName] = _dragEndDetails;
  return m;
}

var _dragDownDetails = MXFunctionInvoke(
  "DragDownDetails",
  ({
    Offset globalPosition = Offset.zero,
    Offset localPosition,
  }) =>
      DragDownDetails(
    globalPosition: globalPosition,
    localPosition: localPosition,
  ),
  [
    "globalPosition",
    "localPosition",
  ],
);
var _dragStartDetails = MXFunctionInvoke(
  "DragStartDetails",
  ({
    Duration sourceTimeStamp,
    Offset globalPosition = Offset.zero,
    Offset localPosition,
  }) =>
      DragStartDetails(
    sourceTimeStamp: sourceTimeStamp,
    globalPosition: globalPosition,
    localPosition: localPosition,
  ),
  [
    "sourceTimeStamp",
    "globalPosition",
    "localPosition",
  ],
);
var _dragUpdateDetails = MXFunctionInvoke(
  "DragUpdateDetails",
  ({
    Duration sourceTimeStamp,
    Offset delta = Offset.zero,
    dynamic primaryDelta,
    Offset globalPosition,
    Offset localPosition,
  }) =>
      DragUpdateDetails(
    sourceTimeStamp: sourceTimeStamp,
    delta: delta,
    primaryDelta: primaryDelta?.toDouble(),
    globalPosition: globalPosition,
    localPosition: localPosition,
  ),
  [
    "sourceTimeStamp",
    "delta",
    "primaryDelta",
    "globalPosition",
    "localPosition",
  ],
);
var _dragEndDetails = MXFunctionInvoke(
  "DragEndDetails",
  ({
    Velocity velocity = Velocity.zero,
    dynamic primaryVelocity,
  }) =>
      DragEndDetails(
    velocity: velocity,
    primaryVelocity: primaryVelocity?.toDouble(),
  ),
  [
    "velocity",
    "primaryVelocity",
  ],
);

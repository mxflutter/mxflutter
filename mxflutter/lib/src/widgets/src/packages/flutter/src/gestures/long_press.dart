//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/long_press.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerLongPressSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_longPressStartDetails.funName] = _longPressStartDetails;
  m[_longPressMoveUpdateDetails.funName] = _longPressMoveUpdateDetails;
  m[_longPressEndDetails.funName] = _longPressEndDetails;
  m[_longPressGestureRecognizer.funName] = _longPressGestureRecognizer;
  return m;
}

var _longPressStartDetails = MXFunctionInvoke(
  "LongPressStartDetails",
  ({
    Offset globalPosition = Offset.zero,
    Offset localPosition,
  }) =>
      LongPressStartDetails(
    globalPosition: globalPosition,
    localPosition: localPosition,
  ),
  [
    "globalPosition",
    "localPosition",
  ],
);
var _longPressMoveUpdateDetails = MXFunctionInvoke(
  "LongPressMoveUpdateDetails",
  ({
    Offset globalPosition = Offset.zero,
    Offset localPosition,
    Offset offsetFromOrigin = Offset.zero,
    Offset localOffsetFromOrigin,
  }) =>
      LongPressMoveUpdateDetails(
    globalPosition: globalPosition,
    localPosition: localPosition,
    offsetFromOrigin: offsetFromOrigin,
    localOffsetFromOrigin: localOffsetFromOrigin,
  ),
  [
    "globalPosition",
    "localPosition",
    "offsetFromOrigin",
    "localOffsetFromOrigin",
  ],
);
var _longPressEndDetails = MXFunctionInvoke(
  "LongPressEndDetails",
  ({
    Offset globalPosition = Offset.zero,
    Offset localPosition,
    Velocity velocity = Velocity.zero,
  }) =>
      LongPressEndDetails(
    globalPosition: globalPosition,
    localPosition: localPosition,
    velocity: velocity,
  ),
  [
    "globalPosition",
    "localPosition",
    "velocity",
  ],
);
var _longPressGestureRecognizer = MXFunctionInvoke(
  "LongPressGestureRecognizer",
  ({
    Duration duration,
    dynamic postAcceptSlopTolerance,
    PointerDeviceKind kind,
    Object debugOwner,
  }) =>
      LongPressGestureRecognizer(
    duration: duration,
    postAcceptSlopTolerance: postAcceptSlopTolerance?.toDouble(),
    kind: kind,
    debugOwner: debugOwner,
  ),
  [
    "duration",
    "postAcceptSlopTolerance",
    "kind",
    "debugOwner",
  ],
);

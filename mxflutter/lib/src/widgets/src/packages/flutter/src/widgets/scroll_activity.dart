//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_activity.dart';
import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollActivitySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_idleScrollActivity.funName] = _idleScrollActivity;
  m[_holdScrollActivity.funName] = _holdScrollActivity;
  m[_scrollDragController.funName] = _scrollDragController;
  m[_scrollDragControllerMomentumRetainStationaryDurationThreshold.funName] =
      _scrollDragControllerMomentumRetainStationaryDurationThreshold;
  m[_scrollDragControllerMotionStoppedDurationThreshold.funName] = _scrollDragControllerMotionStoppedDurationThreshold;
  m[_dragScrollActivity.funName] = _dragScrollActivity;
  m[_ballisticScrollActivity.funName] = _ballisticScrollActivity;
  m[_drivenScrollActivity.funName] = _drivenScrollActivity;
  return m;
}

var _idleScrollActivity = MXFunctionInvoke(
  "IdleScrollActivity",
  ({
    ScrollActivityDelegate delegate,
  }) =>
      IdleScrollActivity(
    delegate,
  ),
  [
    "delegate",
  ],
);
var _holdScrollActivity = MXFunctionInvoke(
  "HoldScrollActivity",
  ({
    ScrollActivityDelegate delegate,
    dynamic onHoldCanceled,
  }) =>
      HoldScrollActivity(
    delegate: delegate,
    onHoldCanceled: createVoidCallbackClosure(_holdScrollActivity.buildOwner, onHoldCanceled),
  ),
  [
    "delegate",
    "onHoldCanceled",
  ],
);
var _scrollDragController = MXFunctionInvoke(
  "ScrollDragController",
  ({
    ScrollActivityDelegate delegate,
    DragStartDetails details,
    dynamic onDragCanceled,
    dynamic carriedVelocity,
    dynamic motionStartDistanceThreshold,
  }) =>
      ScrollDragController(
    delegate: delegate,
    details: details,
    onDragCanceled: createVoidCallbackClosure(_scrollDragController.buildOwner, onDragCanceled),
    carriedVelocity: carriedVelocity?.toDouble(),
    motionStartDistanceThreshold: motionStartDistanceThreshold?.toDouble(),
  ),
  [
    "delegate",
    "details",
    "onDragCanceled",
    "carriedVelocity",
    "motionStartDistanceThreshold",
  ],
);
var _scrollDragControllerMomentumRetainStationaryDurationThreshold = MXFunctionInvoke(
    "ScrollDragController.momentumRetainStationaryDurationThreshold",
    () => ScrollDragController.momentumRetainStationaryDurationThreshold);
var _scrollDragControllerMotionStoppedDurationThreshold = MXFunctionInvoke(
    "ScrollDragController.motionStoppedDurationThreshold", () => ScrollDragController.motionStoppedDurationThreshold);
var _dragScrollActivity = MXFunctionInvoke(
  "DragScrollActivity",
  ({
    ScrollActivityDelegate delegate,
    ScrollDragController controller,
  }) =>
      DragScrollActivity(
    delegate,
    controller,
  ),
  [
    "delegate",
    "controller",
  ],
);
var _ballisticScrollActivity = MXFunctionInvoke(
  "BallisticScrollActivity",
  ({
    ScrollActivityDelegate delegate,
    Simulation simulation,
    TickerProvider vsync,
  }) =>
      BallisticScrollActivity(
    delegate,
    simulation,
    vsync,
  ),
  [
    "delegate",
    "simulation",
    "vsync",
  ],
);
var _drivenScrollActivity = MXFunctionInvoke(
  "DrivenScrollActivity",
  ({
    ScrollActivityDelegate delegate,
    dynamic from,
    dynamic to,
    Duration duration,
    Curve curve,
    TickerProvider vsync,
  }) =>
      DrivenScrollActivity(
    delegate,
    from: from?.toDouble(),
    to: to?.toDouble(),
    duration: duration,
    curve: curve,
    vsync: vsync,
  ),
  [
    "delegate",
    "from",
    "to",
    "duration",
    "curve",
    "vsync",
  ],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:ui';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/binding.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/debug.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/pointer_router.dart';
import 'package:flutter/src/gestures/team.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRecognizerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dragStartBehavior.funName] = _dragStartBehavior;
  m[_gestureRecognizerState.funName] = _gestureRecognizerState;
  m[_offsetPair.funName] = _offsetPair;
  m[_offsetPair_zero.funName] = _offsetPair_zero;
  m[_offsetPair_fromEventPosition.funName] = _offsetPair_fromEventPosition;
  m[_offsetPair_fromEventDelta.funName] = _offsetPair_fromEventDelta;
  return m;
}

var _dragStartBehavior = MXFunctionInvoke(
  "DragStartBehavior",
  ({String name, int index}) => MXDragStartBehavior.parse(name, index),
);
var _gestureRecognizerState = MXFunctionInvoke(
  "GestureRecognizerState",
  ({String name, int index}) => MXGestureRecognizerState.parse(name, index),
);
var _offsetPair = MXFunctionInvoke(
  "OffsetPair",
  ({
    Offset local,
    Offset global,
  }) =>
      OffsetPair(
    local: local,
    global: global,
  ),
  [
    "local",
    "global",
  ],
);
var _offsetPair_zero =
    MXFunctionInvoke("OffsetPair.zero", () => OffsetPair.zero);
var _offsetPair_fromEventPosition = MXFunctionInvoke(
  "OffsetPair.fromEventPosition",
  ({
    PointerEvent event,
  }) =>
      OffsetPair.fromEventPosition(
    event,
  ),
  [
    "event",
  ],
);
var _offsetPair_fromEventDelta = MXFunctionInvoke(
  "OffsetPair.fromEventDelta",
  ({
    PointerEvent event,
  }) =>
      OffsetPair.fromEventDelta(
    event,
  ),
  [
    "event",
  ],
);

class MXDragStartBehavior {
  static DragStartBehavior parse(String name, int index) {
    switch (name) {
      case 'DragStartBehavior.down':
        return DragStartBehavior.down;
      case 'DragStartBehavior.start':
        return DragStartBehavior.start;
    }
    return null;
  }
}

class MXGestureRecognizerState {
  static GestureRecognizerState parse(String name, int index) {
    switch (name) {
      case 'GestureRecognizerState.ready':
        return GestureRecognizerState.ready;
      case 'GestureRecognizerState.possible':
        return GestureRecognizerState.possible;
      case 'GestureRecognizerState.defunct':
        return GestureRecognizerState.defunct;
    }
    return null;
  }
}

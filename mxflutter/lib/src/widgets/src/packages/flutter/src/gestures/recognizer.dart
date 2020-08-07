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
  m[_offsetPair_fromEventPosition.funName] = _offsetPair_fromEventPosition;
  m[_offsetPair_fromEventDelta.funName] = _offsetPair_fromEventDelta;
  return m;
}
var _dragStartBehavior = MXFunctionInvoke(
    "DragStartBehavior",
    ({Map args}) => MXDragStartBehavior.parse(args),
  );
var _gestureRecognizerState = MXFunctionInvoke(
    "GestureRecognizerState",
    ({Map args}) => MXGestureRecognizerState.parse(args),
  );
var _offsetPair = MXFunctionInvoke(
    "OffsetPair",
    (
      {
      Offset local,
      Offset global,
      }
    ) =>
      OffsetPair(
      local: local,
      global: global,
    ),
);
var _offsetPair_fromEventPosition = MXFunctionInvoke(
  "OffsetPair.fromEventPosition",
    (
      {
      PointerEvent event,
      }
    ) =>
      OffsetPair.fromEventPosition(
      event,
    ),
);
var _offsetPair_fromEventDelta = MXFunctionInvoke(
  "OffsetPair.fromEventDelta",
    (
      {
      PointerEvent event,
      }
    ) =>
      OffsetPair.fromEventDelta(
      event,
    ),
);
class MXDragStartBehavior {
  static Map str2VMap = {
    'DragStartBehavior.down': DragStartBehavior.down,
    'DragStartBehavior.start': DragStartBehavior.start,
  };
  static DragStartBehavior parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXGestureRecognizerState {
  static Map str2VMap = {
    'GestureRecognizerState.ready': GestureRecognizerState.ready,
    'GestureRecognizerState.possible': GestureRecognizerState.possible,
    'GestureRecognizerState.defunct': GestureRecognizerState.defunct,
  };
  static GestureRecognizerState parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/mouse_tracking.dart';
import 'dart:collection';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/rendering/mouse_cursor.dart';
import 'package:flutter/src/rendering/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMouseTrackingSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_mouseTrackerAnnotation.funName] = _mouseTrackerAnnotation;
  m[_mouseTrackerUpdateDetailsByNewFrame.funName] = _mouseTrackerUpdateDetailsByNewFrame;
  m[_mouseTrackerUpdateDetailsByPointerEvent.funName] = _mouseTrackerUpdateDetailsByPointerEvent;
  m[_baseMouseTracker.funName] = _baseMouseTracker;
  m[_mouseTracker.funName] = _mouseTracker;
  return m;
}

var _mouseTrackerAnnotation = MXFunctionInvoke(
  "MouseTrackerAnnotation",
  ({
    dynamic onEnter,
    dynamic onHover,
    dynamic onExit,
    MouseCursor cursor = MouseCursor.defer,
  }) =>
      MouseTrackerAnnotation(
    onEnter: createValueChangedGenericClosure<PointerEnterEvent>(_mouseTrackerAnnotation.buildOwner, onEnter),
    onHover: createValueChangedGenericClosure<PointerHoverEvent>(_mouseTrackerAnnotation.buildOwner, onHover),
    onExit: createValueChangedGenericClosure<PointerExitEvent>(_mouseTrackerAnnotation.buildOwner, onExit),
    cursor: cursor,
  ),
  [
    "onEnter",
    "onHover",
    "onExit",
    "cursor",
  ],
);
var _mouseTrackerUpdateDetailsByNewFrame = MXFunctionInvoke(
  "MouseTrackerUpdateDetails.byNewFrame",
  ({
    LinkedHashSet<MouseTrackerAnnotation> lastAnnotations,
    LinkedHashSet<MouseTrackerAnnotation> nextAnnotations,
    PointerEvent previousEvent,
  }) =>
      MouseTrackerUpdateDetails.byNewFrame(
    lastAnnotations: lastAnnotations,
    nextAnnotations: nextAnnotations,
    previousEvent: previousEvent,
  ),
  [
    "lastAnnotations",
    "nextAnnotations",
    "previousEvent",
  ],
);
var _mouseTrackerUpdateDetailsByPointerEvent = MXFunctionInvoke(
  "MouseTrackerUpdateDetails.byPointerEvent",
  ({
    LinkedHashSet<MouseTrackerAnnotation> lastAnnotations,
    LinkedHashSet<MouseTrackerAnnotation> nextAnnotations,
    PointerEvent previousEvent,
    PointerEvent triggeringEvent,
  }) =>
      MouseTrackerUpdateDetails.byPointerEvent(
    lastAnnotations: lastAnnotations,
    nextAnnotations: nextAnnotations,
    previousEvent: previousEvent,
    triggeringEvent: triggeringEvent,
  ),
  [
    "lastAnnotations",
    "nextAnnotations",
    "previousEvent",
    "triggeringEvent",
  ],
);
var _baseMouseTracker = MXFunctionInvoke(
  "BaseMouseTracker",
  ({
    PointerRouter router,
    dynamic annotationFinder,
  }) =>
      BaseMouseTracker(
    router,
    null,
  ),
  [
    "router",
    "annotationFinder",
  ],
);
var _mouseTracker = MXFunctionInvoke(
  "MouseTracker",
  ({
    PointerRouter router,
    dynamic annotationFinder,
  }) =>
      MouseTracker(
    router,
    null,
  ),
  [
    "router",
    "annotationFinder",
  ],
);

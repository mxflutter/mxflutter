//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/mouse_tracking.dart';
import 'dart:collection';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/scheduler.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMouseTrackingSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_mouseTrackerAnnotation.funName] = _mouseTrackerAnnotation;
  m[_mouseTracker.funName] = _mouseTracker;
  return m;
}
var _mouseTrackerAnnotation = MXFunctionInvoke(
    "MouseTrackerAnnotation",
    (
      {
      dynamic onEnter,
      dynamic onHover,
      dynamic onExit,
      }
    ) =>
      MouseTrackerAnnotation(
      onEnter: createValueChangedGenericClosure<PointerEnterEvent>(_mouseTrackerAnnotation.buildOwner, onEnter),
      onHover: createValueChangedGenericClosure<PointerHoverEvent>(_mouseTrackerAnnotation.buildOwner, onHover),
      onExit: createValueChangedGenericClosure<PointerExitEvent>(_mouseTrackerAnnotation.buildOwner, onExit),
    ),
);
var _mouseTracker = MXFunctionInvoke(
    "MouseTracker",
    (
      {
      PointerRouter router,
      dynamic annotationFinder,
      }
    ) =>
      MouseTracker(
      router,
      annotationFinder,
    ),
);

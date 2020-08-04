//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/mouse_tracking.dart';


class MXProxyMouseTracking {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[mouseTrackerAnnotation.funName] = mouseTrackerAnnotation;
    m[mouseTracker.funName] = mouseTracker;
    return m;
  }
  static var mouseTrackerAnnotation = MXFunctionInvoke(
      "MouseTrackerAnnotation",
      ({
        dynamic onEnter,
        dynamic onHover,
        dynamic onExit,
      }) =>
        MouseTrackerAnnotation(
        onEnter: createValueChangedGenericClosure<PointerEnterEvent>(mouseTrackerAnnotation.buildOwner, onEnter),
        onHover: createValueChangedGenericClosure<PointerHoverEvent>(mouseTrackerAnnotation.buildOwner, onHover),
        onExit: createValueChangedGenericClosure<PointerExitEvent>(mouseTrackerAnnotation.buildOwner, onExit),
      ),
    );
  static var mouseTracker = MXFunctionInvoke(
      "MouseTracker",
      ({
        PointerRouter _router,
        dynamic annotationFinder,
      }) =>
        MouseTracker(
        _router,
        annotationFinder,
      ),
    );
}

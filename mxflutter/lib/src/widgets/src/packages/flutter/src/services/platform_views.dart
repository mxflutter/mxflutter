//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/platform_views.dart';
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/services/message_codec.dart';
import 'package:flutter/src/services/system_channels.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPlatformViewsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[platformViewsRegistry_instance.funName] = platformViewsRegistry_instance;
  m[androidPointerProperties.funName] = androidPointerProperties;
  m[androidPointerCoords.funName] = androidPointerCoords;
  m[androidMotionEvent.funName] = androidMotionEvent;
  return m;
}
var platformViewsRegistry_instance = MXFunctionInvoke(
  "platformViewsRegistry.instance",
    ({
    }) =>
      PlatformViewsRegistry.instance(
    ),
);
var androidPointerProperties = MXFunctionInvoke(
    "AndroidPointerProperties",
    ({
      int id,
      int toolType,
    }) =>
      AndroidPointerProperties(
      id: id,
      toolType: toolType,
    ),
);
var androidPointerCoords = MXFunctionInvoke(
    "AndroidPointerCoords",
    ({
      dynamic orientation,
      dynamic pressure,
      dynamic size,
      dynamic toolMajor,
      dynamic toolMinor,
      dynamic touchMajor,
      dynamic touchMinor,
      dynamic x,
      dynamic y,
    }) =>
      AndroidPointerCoords(
      orientation: orientation,
      pressure: pressure,
      size: size,
      toolMajor: toolMajor,
      toolMinor: toolMinor,
      touchMajor: touchMajor,
      touchMinor: touchMinor,
      x: x,
      y: y,
    ),
);
var androidMotionEvent = MXFunctionInvoke(
    "AndroidMotionEvent",
    ({
      int downTime,
      int eventTime,
      int action,
      int pointerCount,
      List<AndroidPointerProperties> pointerProperties,
      List<AndroidPointerCoords> pointerCoords,
      int metaState,
      int buttonState,
      dynamic xPrecision,
      dynamic yPrecision,
      int deviceId,
      int edgeFlags,
      int source,
      int flags,
    }) =>
      AndroidMotionEvent(
      downTime: downTime,
      eventTime: eventTime,
      action: action,
      pointerCount: pointerCount,
      pointerProperties: pointerProperties,
      pointerCoords: pointerCoords,
      metaState: metaState,
      buttonState: buttonState,
      xPrecision: xPrecision,
      yPrecision: yPrecision,
      deviceId: deviceId,
      edgeFlags: edgeFlags,
      source: source,
      flags: flags,
    ),
);

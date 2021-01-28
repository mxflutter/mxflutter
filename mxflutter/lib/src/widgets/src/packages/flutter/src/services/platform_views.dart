//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_androidPointerProperties.funName] = _androidPointerProperties;
  m[_androidPointerPropertiesKToolTypeUnknown.funName] = _androidPointerPropertiesKToolTypeUnknown;
  m[_androidPointerPropertiesKToolTypeFinger.funName] = _androidPointerPropertiesKToolTypeFinger;
  m[_androidPointerPropertiesKToolTypeStylus.funName] = _androidPointerPropertiesKToolTypeStylus;
  m[_androidPointerPropertiesKToolTypeMouse.funName] = _androidPointerPropertiesKToolTypeMouse;
  m[_androidPointerPropertiesKToolTypeEraser.funName] = _androidPointerPropertiesKToolTypeEraser;
  m[_androidPointerCoords.funName] = _androidPointerCoords;
  m[_androidMotionEvent.funName] = _androidMotionEvent;
  m[_androidViewControllerKActionDown.funName] = _androidViewControllerKActionDown;
  m[_androidViewControllerKActionUp.funName] = _androidViewControllerKActionUp;
  m[_androidViewControllerKActionMove.funName] = _androidViewControllerKActionMove;
  m[_androidViewControllerKActionCancel.funName] = _androidViewControllerKActionCancel;
  m[_androidViewControllerKActionPointerDown.funName] = _androidViewControllerKActionPointerDown;
  m[_androidViewControllerKActionPointerUp.funName] = _androidViewControllerKActionPointerUp;
  m[_androidViewControllerKAndroidLayoutDirectionLtr.funName] = _androidViewControllerKAndroidLayoutDirectionLtr;
  m[_androidViewControllerKAndroidLayoutDirectionRtl.funName] = _androidViewControllerKAndroidLayoutDirectionRtl;
  return m;
}

var _androidPointerProperties = MXFunctionInvoke(
  "AndroidPointerProperties",
  ({
    int id,
    int toolType,
  }) =>
      AndroidPointerProperties(
    id: id,
    toolType: toolType,
  ),
  [
    "id",
    "toolType",
  ],
);
var _androidPointerPropertiesKToolTypeUnknown =
    MXFunctionInvoke("AndroidPointerProperties.kToolTypeUnknown", () => AndroidPointerProperties.kToolTypeUnknown);
var _androidPointerPropertiesKToolTypeFinger =
    MXFunctionInvoke("AndroidPointerProperties.kToolTypeFinger", () => AndroidPointerProperties.kToolTypeFinger);
var _androidPointerPropertiesKToolTypeStylus =
    MXFunctionInvoke("AndroidPointerProperties.kToolTypeStylus", () => AndroidPointerProperties.kToolTypeStylus);
var _androidPointerPropertiesKToolTypeMouse =
    MXFunctionInvoke("AndroidPointerProperties.kToolTypeMouse", () => AndroidPointerProperties.kToolTypeMouse);
var _androidPointerPropertiesKToolTypeEraser =
    MXFunctionInvoke("AndroidPointerProperties.kToolTypeEraser", () => AndroidPointerProperties.kToolTypeEraser);
var _androidPointerCoords = MXFunctionInvoke(
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
    orientation: orientation?.toDouble(),
    pressure: pressure?.toDouble(),
    size: size?.toDouble(),
    toolMajor: toolMajor?.toDouble(),
    toolMinor: toolMinor?.toDouble(),
    touchMajor: touchMajor?.toDouble(),
    touchMinor: touchMinor?.toDouble(),
    x: x?.toDouble(),
    y: y?.toDouble(),
  ),
  [
    "orientation",
    "pressure",
    "size",
    "toolMajor",
    "toolMinor",
    "touchMajor",
    "touchMinor",
    "x",
    "y",
  ],
);
var _androidMotionEvent = MXFunctionInvoke(
  "AndroidMotionEvent",
  ({
    int downTime,
    int eventTime,
    int action,
    int pointerCount,
    dynamic pointerProperties,
    dynamic pointerCoords,
    int metaState,
    int buttonState,
    dynamic xPrecision,
    dynamic yPrecision,
    int deviceId,
    int edgeFlags,
    int source,
    int flags,
    int motionEventId,
  }) =>
      AndroidMotionEvent(
    downTime: downTime,
    eventTime: eventTime,
    action: action,
    pointerCount: pointerCount,
    pointerProperties: toListT<AndroidPointerProperties>(pointerProperties),
    pointerCoords: toListT<AndroidPointerCoords>(pointerCoords),
    metaState: metaState,
    buttonState: buttonState,
    xPrecision: xPrecision?.toDouble(),
    yPrecision: yPrecision?.toDouble(),
    deviceId: deviceId,
    edgeFlags: edgeFlags,
    source: source,
    flags: flags,
    motionEventId: motionEventId,
  ),
  [
    "downTime",
    "eventTime",
    "action",
    "pointerCount",
    "pointerProperties",
    "pointerCoords",
    "metaState",
    "buttonState",
    "xPrecision",
    "yPrecision",
    "deviceId",
    "edgeFlags",
    "source",
    "flags",
    "motionEventId",
  ],
);
var _androidViewControllerKActionDown =
    MXFunctionInvoke("AndroidViewController.kActionDown", () => AndroidViewController.kActionDown);
var _androidViewControllerKActionUp =
    MXFunctionInvoke("AndroidViewController.kActionUp", () => AndroidViewController.kActionUp);
var _androidViewControllerKActionMove =
    MXFunctionInvoke("AndroidViewController.kActionMove", () => AndroidViewController.kActionMove);
var _androidViewControllerKActionCancel =
    MXFunctionInvoke("AndroidViewController.kActionCancel", () => AndroidViewController.kActionCancel);
var _androidViewControllerKActionPointerDown =
    MXFunctionInvoke("AndroidViewController.kActionPointerDown", () => AndroidViewController.kActionPointerDown);
var _androidViewControllerKActionPointerUp =
    MXFunctionInvoke("AndroidViewController.kActionPointerUp", () => AndroidViewController.kActionPointerUp);
var _androidViewControllerKAndroidLayoutDirectionLtr = MXFunctionInvoke(
    "AndroidViewController.kAndroidLayoutDirectionLtr", () => AndroidViewController.kAndroidLayoutDirectionLtr);
var _androidViewControllerKAndroidLayoutDirectionRtl = MXFunctionInvoke(
    "AndroidViewController.kAndroidLayoutDirectionRtl", () => AndroidViewController.kAndroidLayoutDirectionRtl);

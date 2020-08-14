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
  m[_androidPointerProperties.funName] = _androidPointerProperties;
  m[_androidPointerProperties_kToolTypeUnknown.funName] = _androidPointerProperties_kToolTypeUnknown;
  m[_androidPointerProperties_kToolTypeFinger.funName] = _androidPointerProperties_kToolTypeFinger;
  m[_androidPointerProperties_kToolTypeStylus.funName] = _androidPointerProperties_kToolTypeStylus;
  m[_androidPointerProperties_kToolTypeMouse.funName] = _androidPointerProperties_kToolTypeMouse;
  m[_androidPointerProperties_kToolTypeEraser.funName] = _androidPointerProperties_kToolTypeEraser;
  m[_androidPointerCoords.funName] = _androidPointerCoords;
  m[_androidMotionEvent.funName] = _androidMotionEvent;
  m[_androidViewController_kActionDown.funName] = _androidViewController_kActionDown;
  m[_androidViewController_kActionUp.funName] = _androidViewController_kActionUp;
  m[_androidViewController_kActionMove.funName] = _androidViewController_kActionMove;
  m[_androidViewController_kActionCancel.funName] = _androidViewController_kActionCancel;
  m[_androidViewController_kActionPointerDown.funName] = _androidViewController_kActionPointerDown;
  m[_androidViewController_kActionPointerUp.funName] = _androidViewController_kActionPointerUp;
  m[_androidViewController_kAndroidLayoutDirectionLtr.funName] = _androidViewController_kAndroidLayoutDirectionLtr;
  m[_androidViewController_kAndroidLayoutDirectionRtl.funName] = _androidViewController_kAndroidLayoutDirectionRtl;
  return m;
}
var _androidPointerProperties = MXFunctionInvoke(
    "AndroidPointerProperties",
    (
      {
      int id,
      int toolType,
      }
    ) =>
      AndroidPointerProperties(
      id: id,
      toolType: toolType,
    ),
);
var _androidPointerProperties_kToolTypeUnknown = MXFunctionInvoke(
  "AndroidPointerProperties.kToolTypeUnknown",
    (
    ) =>
      AndroidPointerProperties.kToolTypeUnknown
);
var _androidPointerProperties_kToolTypeFinger = MXFunctionInvoke(
  "AndroidPointerProperties.kToolTypeFinger",
    (
    ) =>
      AndroidPointerProperties.kToolTypeFinger
);
var _androidPointerProperties_kToolTypeStylus = MXFunctionInvoke(
  "AndroidPointerProperties.kToolTypeStylus",
    (
    ) =>
      AndroidPointerProperties.kToolTypeStylus
);
var _androidPointerProperties_kToolTypeMouse = MXFunctionInvoke(
  "AndroidPointerProperties.kToolTypeMouse",
    (
    ) =>
      AndroidPointerProperties.kToolTypeMouse
);
var _androidPointerProperties_kToolTypeEraser = MXFunctionInvoke(
  "AndroidPointerProperties.kToolTypeEraser",
    (
    ) =>
      AndroidPointerProperties.kToolTypeEraser
);
var _androidPointerCoords = MXFunctionInvoke(
    "AndroidPointerCoords",
    (
      {
      dynamic orientation,
      dynamic pressure,
      dynamic size,
      dynamic toolMajor,
      dynamic toolMinor,
      dynamic touchMajor,
      dynamic touchMinor,
      dynamic x,
      dynamic y,
      }
    ) =>
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
);
var _androidMotionEvent = MXFunctionInvoke(
    "AndroidMotionEvent",
    (
      {
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
      }
    ) =>
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
    ),
);
var _androidViewController_kActionDown = MXFunctionInvoke(
  "AndroidViewController.kActionDown",
    (
    ) =>
      AndroidViewController.kActionDown
);
var _androidViewController_kActionUp = MXFunctionInvoke(
  "AndroidViewController.kActionUp",
    (
    ) =>
      AndroidViewController.kActionUp
);
var _androidViewController_kActionMove = MXFunctionInvoke(
  "AndroidViewController.kActionMove",
    (
    ) =>
      AndroidViewController.kActionMove
);
var _androidViewController_kActionCancel = MXFunctionInvoke(
  "AndroidViewController.kActionCancel",
    (
    ) =>
      AndroidViewController.kActionCancel
);
var _androidViewController_kActionPointerDown = MXFunctionInvoke(
  "AndroidViewController.kActionPointerDown",
    (
    ) =>
      AndroidViewController.kActionPointerDown
);
var _androidViewController_kActionPointerUp = MXFunctionInvoke(
  "AndroidViewController.kActionPointerUp",
    (
    ) =>
      AndroidViewController.kActionPointerUp
);
var _androidViewController_kAndroidLayoutDirectionLtr = MXFunctionInvoke(
  "AndroidViewController.kAndroidLayoutDirectionLtr",
    (
    ) =>
      AndroidViewController.kAndroidLayoutDirectionLtr
);
var _androidViewController_kAndroidLayoutDirectionRtl = MXFunctionInvoke(
  "AndroidViewController.kAndroidLayoutDirectionRtl",
    (
    ) =>
      AndroidViewController.kAndroidLayoutDirectionRtl
);

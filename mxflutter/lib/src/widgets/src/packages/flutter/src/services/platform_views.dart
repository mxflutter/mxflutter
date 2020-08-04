//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/platform_views.dart';


class MXProxyPlatformViews {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[platformViewsRegistry_instance.funName] = platformViewsRegistry_instance;
    m[platformViewsService_.funName] = platformViewsService_;
    m[androidPointerProperties.funName] = androidPointerProperties;
    m[androidPointerCoords.funName] = androidPointerCoords;
    m[androidMotionEvent.funName] = androidMotionEvent;
    m[androidViewController_.funName] = androidViewController_;
    m[uiKitViewController_.funName] = uiKitViewController_;
    return m;
  }
  static var platformViewsRegistry_instance = MXFunctionInvoke(
    "platformViewsRegistry.instance",
      ({
      }) =>
        PlatformViewsRegistry.instance(
      ),
    );
  static var platformViewsService_ = MXFunctionInvoke(
    "platformViewsService.",
      ({
      }) =>
        PlatformViewsService.(
      ),
    );
  static var androidPointerProperties = MXFunctionInvoke(
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
  static var androidPointerCoords = MXFunctionInvoke(
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
    );
  static var androidMotionEvent = MXFunctionInvoke(
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
        xPrecision: xPrecision?.toDouble(),
        yPrecision: yPrecision?.toDouble(),
        deviceId: deviceId,
        edgeFlags: edgeFlags,
        source: source,
        flags: flags,
      ),
    );
  static var androidViewController_ = MXFunctionInvoke(
    "androidViewController.",
      ({
        int id,
        String viewType,
        dynamic creationParams,
        MessageCodec<dynamic> creationParamsCodec,
        TextDirection layoutDirection,
      }) =>
        AndroidViewController.(
        id,
        viewType,
        creationParams,
        creationParamsCodec,
        layoutDirection,
      ),
    );
  static var uiKitViewController_ = MXFunctionInvoke(
    "uiKitViewController.",
      ({
        int id,
        TextDirection layoutDirection,
      }) =>
        UiKitViewController.(
        id,
        layoutDirection,
      ),
    );
}

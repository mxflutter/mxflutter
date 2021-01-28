//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMediaQuerySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_orientation.funName] = _orientation;
  m[_mediaQueryData.funName] = _mediaQueryData;
  m[_mediaQueryDataFromWindow.funName] = _mediaQueryDataFromWindow;
  m[_mediaQuery.funName] = _mediaQuery;
  m[_mediaQueryRemovePadding.funName] = _mediaQueryRemovePadding;
  m[_mediaQueryRemoveViewInsets.funName] = _mediaQueryRemoveViewInsets;
  m[_mediaQueryRemoveViewPadding.funName] = _mediaQueryRemoveViewPadding;
  m[_navigationMode.funName] = _navigationMode;
  return m;
}

var _orientation =
    MXFunctionInvoke("Orientation", ({String name, int index}) => MXOrientation.parse(name, index), ["name", "index"]);
var _mediaQueryData = MXFunctionInvoke(
  "MediaQueryData",
  ({
    ui.Size size = Size.zero,
    dynamic devicePixelRatio = 1.0,
    dynamic textScaleFactor = 1.0,
    ui.Brightness platformBrightness = Brightness.light,
    EdgeInsets padding = EdgeInsets.zero,
    EdgeInsets viewInsets = EdgeInsets.zero,
    EdgeInsets systemGestureInsets = EdgeInsets.zero,
    EdgeInsets viewPadding = EdgeInsets.zero,
    bool alwaysUse24HourFormat = false,
    bool accessibleNavigation = false,
    bool invertColors = false,
    bool highContrast = false,
    bool disableAnimations = false,
    bool boldText = false,
    NavigationMode navigationMode = NavigationMode.traditional,
  }) =>
      MediaQueryData(
    size: size,
    devicePixelRatio: devicePixelRatio?.toDouble(),
    textScaleFactor: textScaleFactor?.toDouble(),
    platformBrightness: platformBrightness,
    padding: padding,
    viewInsets: viewInsets,
    systemGestureInsets: systemGestureInsets,
    viewPadding: viewPadding,
    alwaysUse24HourFormat: alwaysUse24HourFormat,
    accessibleNavigation: accessibleNavigation,
    invertColors: invertColors,
    highContrast: highContrast,
    disableAnimations: disableAnimations,
    boldText: boldText,
    navigationMode: navigationMode,
  ),
  [
    "size",
    "devicePixelRatio",
    "textScaleFactor",
    "platformBrightness",
    "padding",
    "viewInsets",
    "systemGestureInsets",
    "viewPadding",
    "alwaysUse24HourFormat",
    "accessibleNavigation",
    "invertColors",
    "highContrast",
    "disableAnimations",
    "boldText",
    "navigationMode",
  ],
);
var _mediaQueryDataFromWindow = MXFunctionInvoke(
  "MediaQueryData.fromWindow",
  ({
    ui.Window window,
  }) =>
      MediaQueryData.fromWindow(
    window,
  ),
  [
    "window",
  ],
);
var _mediaQuery = MXFunctionInvoke(
  "MediaQuery",
  ({
    Key key,
    MediaQueryData data,
    Widget child,
  }) =>
      MediaQuery(
    key: key,
    data: data,
    child: child,
  ),
  [
    "key",
    "data",
    "child",
  ],
);
var _mediaQueryRemovePadding = MXFunctionInvoke(
  "MediaQuery.removePadding",
  ({
    Key key,
    BuildContext context,
    bool removeLeft = false,
    bool removeTop = false,
    bool removeRight = false,
    bool removeBottom = false,
    Widget child,
  }) =>
      MediaQuery.removePadding(
    key: key,
    context: context,
    removeLeft: removeLeft,
    removeTop: removeTop,
    removeRight: removeRight,
    removeBottom: removeBottom,
    child: child,
  ),
  [
    "key",
    "context",
    "removeLeft",
    "removeTop",
    "removeRight",
    "removeBottom",
    "child",
  ],
);
var _mediaQueryRemoveViewInsets = MXFunctionInvoke(
  "MediaQuery.removeViewInsets",
  ({
    Key key,
    BuildContext context,
    bool removeLeft = false,
    bool removeTop = false,
    bool removeRight = false,
    bool removeBottom = false,
    Widget child,
  }) =>
      MediaQuery.removeViewInsets(
    key: key,
    context: context,
    removeLeft: removeLeft,
    removeTop: removeTop,
    removeRight: removeRight,
    removeBottom: removeBottom,
    child: child,
  ),
  [
    "key",
    "context",
    "removeLeft",
    "removeTop",
    "removeRight",
    "removeBottom",
    "child",
  ],
);
var _mediaQueryRemoveViewPadding = MXFunctionInvoke(
  "MediaQuery.removeViewPadding",
  ({
    Key key,
    BuildContext context,
    bool removeLeft = false,
    bool removeTop = false,
    bool removeRight = false,
    bool removeBottom = false,
    Widget child,
  }) =>
      MediaQuery.removeViewPadding(
    key: key,
    context: context,
    removeLeft: removeLeft,
    removeTop: removeTop,
    removeRight: removeRight,
    removeBottom: removeBottom,
    child: child,
  ),
  [
    "key",
    "context",
    "removeLeft",
    "removeTop",
    "removeRight",
    "removeBottom",
    "child",
  ],
);
var _navigationMode = MXFunctionInvoke(
    "NavigationMode", ({String name, int index}) => MXNavigationMode.parse(name, index), ["name", "index"]);

class MXOrientation {
  static Orientation parse(String name, int index) {
    switch (name) {
      case 'Orientation.portrait':
        return Orientation.portrait;
      case 'Orientation.landscape':
        return Orientation.landscape;
    }
    return null;
  }
}

class MXNavigationMode {
  static NavigationMode parse(String name, int index) {
    switch (name) {
      case 'NavigationMode.traditional':
        return NavigationMode.traditional;
      case 'NavigationMode.directional':
        return NavigationMode.directional;
    }
    return null;
  }
}

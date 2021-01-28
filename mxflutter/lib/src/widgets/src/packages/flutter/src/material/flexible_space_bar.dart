//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/flexible_space_bar.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFlexibleSpaceBarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_collapseMode.funName] = _collapseMode;
  m[_stretchMode.funName] = _stretchMode;
  m[_flexibleSpaceBar.funName] = _flexibleSpaceBar;
  m[_flexibleSpaceBarSettings.funName] = _flexibleSpaceBarSettings;
  return m;
}

var _collapseMode = MXFunctionInvoke(
    "CollapseMode", ({String name, int index}) => MXCollapseMode.parse(name, index), ["name", "index"]);
var _stretchMode =
    MXFunctionInvoke("StretchMode", ({String name, int index}) => MXStretchMode.parse(name, index), ["name", "index"]);
var _flexibleSpaceBar = MXFunctionInvoke(
  "FlexibleSpaceBar",
  ({
    Key key,
    Widget title,
    Widget background,
    bool centerTitle,
    EdgeInsetsGeometry titlePadding,
    CollapseMode collapseMode = CollapseMode.parallax,
    dynamic stretchModes = const <StretchMode>[StretchMode.zoomBackground],
  }) =>
      FlexibleSpaceBar(
    key: key,
    title: title,
    background: background,
    centerTitle: centerTitle,
    titlePadding: titlePadding,
    collapseMode: collapseMode,
    stretchModes: toListT<StretchMode>(stretchModes),
  ),
  [
    "key",
    "title",
    "background",
    "centerTitle",
    "titlePadding",
    "collapseMode",
    "stretchModes",
  ],
);
var _flexibleSpaceBarSettings = MXFunctionInvoke(
  "FlexibleSpaceBarSettings",
  ({
    Key key,
    dynamic toolbarOpacity,
    dynamic minExtent,
    dynamic maxExtent,
    dynamic currentExtent,
    Widget child,
  }) =>
      FlexibleSpaceBarSettings(
    key: key,
    toolbarOpacity: toolbarOpacity?.toDouble(),
    minExtent: minExtent?.toDouble(),
    maxExtent: maxExtent?.toDouble(),
    currentExtent: currentExtent?.toDouble(),
    child: child,
  ),
  [
    "key",
    "toolbarOpacity",
    "minExtent",
    "maxExtent",
    "currentExtent",
    "child",
  ],
);

class MXCollapseMode {
  static CollapseMode parse(String name, int index) {
    switch (name) {
      case 'CollapseMode.parallax':
        return CollapseMode.parallax;
      case 'CollapseMode.pin':
        return CollapseMode.pin;
      case 'CollapseMode.none':
        return CollapseMode.none;
    }
    return null;
  }
}

class MXStretchMode {
  static StretchMode parse(String name, int index) {
    switch (name) {
      case 'StretchMode.zoomBackground':
        return StretchMode.zoomBackground;
      case 'StretchMode.blurBackground':
        return StretchMode.blurBackground;
      case 'StretchMode.fadeTitle':
        return StretchMode.fadeTitle;
    }
    return null;
  }
}

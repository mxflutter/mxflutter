//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
    "CollapseMode",
    ({Map args}) => MXCollapseMode.parse(args),
  );
var _stretchMode = MXFunctionInvoke(
    "StretchMode",
    ({Map args}) => MXStretchMode.parse(args),
  );
var _flexibleSpaceBar = MXFunctionInvoke(
    "FlexibleSpaceBar",
    (
      {
      Key key,
      Widget title,
      Widget background,
      bool centerTitle,
      EdgeInsetsGeometry titlePadding,
      CollapseMode collapseMode = CollapseMode.parallax,
      List<StretchMode> stretchModes,
      }
    ) =>
      FlexibleSpaceBar(
      key: key,
      title: title,
      background: background,
      centerTitle: centerTitle,
      titlePadding: titlePadding,
      collapseMode: collapseMode,
      stretchModes: stretchModes,
    ),
);
var _flexibleSpaceBarSettings = MXFunctionInvoke(
    "FlexibleSpaceBarSettings",
    (
      {
      Key key,
      dynamic toolbarOpacity,
      dynamic minExtent,
      dynamic maxExtent,
      dynamic currentExtent,
      Widget child,
      }
    ) =>
      FlexibleSpaceBarSettings(
      key: key,
      toolbarOpacity: toolbarOpacity?.toDouble(),
      minExtent: minExtent?.toDouble(),
      maxExtent: maxExtent?.toDouble(),
      currentExtent: currentExtent?.toDouble(),
      child: child,
    ),
);
class MXCollapseMode {
  static Map str2VMap = {
    'CollapseMode.parallax': CollapseMode.parallax,
    'CollapseMode.pin': CollapseMode.pin,
    'CollapseMode.none': CollapseMode.none,
  };
  static CollapseMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXStretchMode {
  static Map str2VMap = {
    'StretchMode.zoomBackground': StretchMode.zoomBackground,
    'StretchMode.blurBackground': StretchMode.blurBackground,
    'StretchMode.fadeTitle': StretchMode.fadeTitle,
  };
  static StretchMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

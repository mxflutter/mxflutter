//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/tooltip_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTooltipThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tooltipThemeData.funName] = _tooltipThemeData;
  m[_tooltipTheme.funName] = _tooltipTheme;
  return m;
}

var _tooltipThemeData = MXFunctionInvoke(
  "TooltipThemeData",
  ({
    dynamic height,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    dynamic verticalOffset,
    bool preferBelow,
    bool excludeFromSemantics,
    Decoration decoration,
    TextStyle textStyle,
    Duration waitDuration,
    Duration showDuration,
  }) =>
      TooltipThemeData(
    height: height?.toDouble(),
    padding: padding,
    margin: margin,
    verticalOffset: verticalOffset?.toDouble(),
    preferBelow: preferBelow,
    excludeFromSemantics: excludeFromSemantics,
    decoration: decoration,
    textStyle: textStyle,
    waitDuration: waitDuration,
    showDuration: showDuration,
  ),
  [
    "height",
    "padding",
    "margin",
    "verticalOffset",
    "preferBelow",
    "excludeFromSemantics",
    "decoration",
    "textStyle",
    "waitDuration",
    "showDuration",
  ],
);
var _tooltipTheme = MXFunctionInvoke(
  "TooltipTheme",
  ({
    Key key,
    TooltipThemeData data,
    Widget child,
  }) =>
      TooltipTheme(
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

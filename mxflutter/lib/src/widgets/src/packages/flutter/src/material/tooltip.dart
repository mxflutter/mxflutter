//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/tooltip.dart';
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/tooltip_theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTooltipSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tooltip.funName] = _tooltip;
  return m;
}

var _tooltip = MXFunctionInvoke(
  "Tooltip",
  ({
    Key key,
    String message,
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
    Widget child,
  }) =>
      Tooltip(
    key: key,
    message: message,
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
    child: child,
  ),
  [
    "key",
    "message",
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
    "child",
  ],
);

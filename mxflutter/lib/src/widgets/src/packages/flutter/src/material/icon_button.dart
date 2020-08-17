//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/tooltip.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIconButtonSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_iconButton.funName] = _iconButton;
  return m;
}

var _iconButton = MXFunctionInvoke(
  "IconButton",
  ({
    Key key,
    dynamic iconSize = 24.0,
    VisualDensity visualDensity,
    EdgeInsetsGeometry padding = const EdgeInsets.all(8.0),
    AlignmentGeometry alignment = Alignment.center,
    Widget icon,
    Color color,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Color disabledColor,
    dynamic onPressed,
    FocusNode focusNode,
    bool autofocus = false,
    String tooltip,
    bool enableFeedback = true,
    BoxConstraints constraints,
  }) =>
      IconButton(
    key: key,
    iconSize: iconSize?.toDouble(),
    visualDensity: visualDensity,
    padding: padding,
    alignment: alignment,
    icon: icon,
    color: color,
    focusColor: focusColor,
    hoverColor: hoverColor,
    highlightColor: highlightColor,
    splashColor: splashColor,
    disabledColor: disabledColor,
    onPressed: createVoidCallbackClosure(_iconButton.buildOwner, onPressed),
    focusNode: focusNode,
    autofocus: autofocus,
    tooltip: tooltip,
    enableFeedback: enableFeedback,
    constraints: constraints,
  ),
  [
    "key",
    "iconSize",
    "visualDensity",
    "padding",
    "alignment",
    "icon",
    "color",
    "focusColor",
    "hoverColor",
    "highlightColor",
    "splashColor",
    "disabledColor",
    "onPressed",
    "focusNode",
    "autofocus",
    "tooltip",
    "enableFeedback",
    "constraints",
  ],
);

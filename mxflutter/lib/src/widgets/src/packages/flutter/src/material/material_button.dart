//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/material_button.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMaterialButtonSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_materialButton.funName] = _materialButton;
  return m;
}

var _materialButton = MXFunctionInvoke(
  "MaterialButton",
  ({
    Key key,
    dynamic onPressed,
    dynamic onLongPress,
    dynamic onHighlightChanged,
    MouseCursor mouseCursor,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    dynamic elevation,
    dynamic focusElevation,
    dynamic hoverElevation,
    dynamic highlightElevation,
    dynamic disabledElevation,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    FocusNode focusNode,
    bool autofocus = false,
    MaterialTapTargetSize materialTapTargetSize,
    Duration animationDuration,
    dynamic minWidth,
    dynamic height,
    bool enableFeedback = true,
    Widget child,
  }) =>
      MaterialButton(
    key: key,
    onPressed: createVoidCallbackClosure(_materialButton.buildOwner, onPressed),
    onLongPress: createVoidCallbackClosure(_materialButton.buildOwner, onLongPress),
    onHighlightChanged: createValueChangedGenericClosure<bool>(_materialButton.buildOwner, onHighlightChanged),
    mouseCursor: mouseCursor,
    textTheme: textTheme,
    textColor: textColor,
    disabledTextColor: disabledTextColor,
    color: color,
    disabledColor: disabledColor,
    focusColor: focusColor,
    hoverColor: hoverColor,
    highlightColor: highlightColor,
    splashColor: splashColor,
    colorBrightness: colorBrightness,
    elevation: elevation?.toDouble(),
    focusElevation: focusElevation?.toDouble(),
    hoverElevation: hoverElevation?.toDouble(),
    highlightElevation: highlightElevation?.toDouble(),
    disabledElevation: disabledElevation?.toDouble(),
    padding: padding,
    visualDensity: visualDensity,
    shape: shape,
    clipBehavior: clipBehavior,
    focusNode: focusNode,
    autofocus: autofocus,
    materialTapTargetSize: materialTapTargetSize,
    animationDuration: animationDuration,
    minWidth: minWidth?.toDouble(),
    height: height?.toDouble(),
    enableFeedback: enableFeedback,
    child: child,
  ),
  [
    "key",
    "onPressed",
    "onLongPress",
    "onHighlightChanged",
    "mouseCursor",
    "textTheme",
    "textColor",
    "disabledTextColor",
    "color",
    "disabledColor",
    "focusColor",
    "hoverColor",
    "highlightColor",
    "splashColor",
    "colorBrightness",
    "elevation",
    "focusElevation",
    "hoverElevation",
    "highlightElevation",
    "disabledElevation",
    "padding",
    "visualDensity",
    "shape",
    "clipBehavior",
    "focusNode",
    "autofocus",
    "materialTapTargetSize",
    "animationDuration",
    "minWidth",
    "height",
    "enableFeedback",
    "child",
  ],
);

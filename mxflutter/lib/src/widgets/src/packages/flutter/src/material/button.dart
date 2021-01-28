//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/button.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerButtonSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_rawMaterialButton.funName] = _rawMaterialButton;
  return m;
}

var _rawMaterialButton = MXFunctionInvoke(
  "RawMaterialButton",
  ({
    Key key,
    dynamic onPressed,
    dynamic onLongPress,
    dynamic onHighlightChanged,
    MouseCursor mouseCursor,
    TextStyle textStyle,
    Color fillColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    dynamic elevation = 2.0,
    dynamic focusElevation = 4.0,
    dynamic hoverElevation = 4.0,
    dynamic highlightElevation = 8.0,
    dynamic disabledElevation = 0.0,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    VisualDensity visualDensity = const VisualDensity(),
    BoxConstraints constraints = const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
    ShapeBorder shape = const RoundedRectangleBorder(),
    Duration animationDuration = kThemeAnimationDuration,
    Clip clipBehavior = Clip.none,
    FocusNode focusNode,
    bool autofocus = false,
    MaterialTapTargetSize materialTapTargetSize,
    Widget child,
    bool enableFeedback = true,
  }) =>
      RawMaterialButton(
    key: key,
    onPressed: createVoidCallbackClosure(_rawMaterialButton.buildOwner, onPressed),
    onLongPress: createVoidCallbackClosure(_rawMaterialButton.buildOwner, onLongPress),
    onHighlightChanged: createValueChangedGenericClosure<bool>(_rawMaterialButton.buildOwner, onHighlightChanged),
    mouseCursor: mouseCursor,
    textStyle: textStyle,
    fillColor: fillColor,
    focusColor: focusColor,
    hoverColor: hoverColor,
    highlightColor: highlightColor,
    splashColor: splashColor,
    elevation: elevation?.toDouble(),
    focusElevation: focusElevation?.toDouble(),
    hoverElevation: hoverElevation?.toDouble(),
    highlightElevation: highlightElevation?.toDouble(),
    disabledElevation: disabledElevation?.toDouble(),
    padding: padding,
    visualDensity: visualDensity,
    constraints: constraints,
    shape: shape,
    animationDuration: animationDuration,
    clipBehavior: clipBehavior,
    focusNode: focusNode,
    autofocus: autofocus,
    materialTapTargetSize: materialTapTargetSize,
    child: child,
    enableFeedback: enableFeedback,
  ),
  [
    "key",
    "onPressed",
    "onLongPress",
    "onHighlightChanged",
    "mouseCursor",
    "textStyle",
    "fillColor",
    "focusColor",
    "hoverColor",
    "highlightColor",
    "splashColor",
    "elevation",
    "focusElevation",
    "hoverElevation",
    "highlightElevation",
    "disabledElevation",
    "padding",
    "visualDensity",
    "constraints",
    "shape",
    "animationDuration",
    "clipBehavior",
    "focusNode",
    "autofocus",
    "materialTapTargetSize",
    "child",
    "enableFeedback",
  ],
);

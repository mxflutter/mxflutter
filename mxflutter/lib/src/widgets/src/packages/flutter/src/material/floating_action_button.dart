//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/floating_action_button.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/floating_action_button_theme.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/tooltip.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFloatingActionButtonSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_floatingActionButton.funName] = _floatingActionButton;
  m[_floatingActionButtonExtended.funName] = _floatingActionButtonExtended;
  return m;
}

var _floatingActionButton = MXFunctionInvoke(
  "FloatingActionButton",
  ({
    Key key,
    Widget child,
    String tooltip,
    Color foregroundColor,
    Color backgroundColor,
    Color focusColor,
    Color hoverColor,
    Color splashColor,

    /// MX modified begin -delete heroTag
    // Object heroTag = const _DefaultHeroTag(),
    /// MX modified end
    dynamic elevation,
    dynamic focusElevation,
    dynamic hoverElevation,
    dynamic highlightElevation,
    dynamic disabledElevation,
    dynamic onPressed,
    MouseCursor mouseCursor,
    bool mini = false,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    FocusNode focusNode,
    bool autofocus = false,
    MaterialTapTargetSize materialTapTargetSize,
    bool isExtended = false,
  }) =>
      FloatingActionButton(
    key: key,
    child: child,
    tooltip: tooltip,
    foregroundColor: foregroundColor,
    backgroundColor: backgroundColor,
    focusColor: focusColor,
    hoverColor: hoverColor,
    splashColor: splashColor,

    /// MX modified begin -delete heroTag
    // heroTag: heroTag,
    /// MX modified end
    elevation: elevation?.toDouble(),
    focusElevation: focusElevation?.toDouble(),
    hoverElevation: hoverElevation?.toDouble(),
    highlightElevation: highlightElevation?.toDouble(),
    disabledElevation: disabledElevation?.toDouble(),
    onPressed: createVoidCallbackClosure(_floatingActionButton.buildOwner, onPressed),
    mouseCursor: mouseCursor,
    mini: mini,
    shape: shape,
    clipBehavior: clipBehavior,
    focusNode: focusNode,
    autofocus: autofocus,
    materialTapTargetSize: materialTapTargetSize,
    isExtended: isExtended,
  ),
  [
    "key",
    "child",
    "tooltip",
    "foregroundColor",
    "backgroundColor",
    "focusColor",
    "hoverColor",
    "splashColor",
    "heroTag",
    "elevation",
    "focusElevation",
    "hoverElevation",
    "highlightElevation",
    "disabledElevation",
    "onPressed",
    "mouseCursor",
    "mini",
    "shape",
    "clipBehavior",
    "focusNode",
    "autofocus",
    "materialTapTargetSize",
    "isExtended",
  ],
);
var _floatingActionButtonExtended = MXFunctionInvoke(
  "FloatingActionButton.extended",
  ({
    Key key,
    String tooltip,
    Color foregroundColor,
    Color backgroundColor,
    Color focusColor,
    Color hoverColor,

    /// MX modified begin -delete heroTag
    // Object heroTag = const _DefaultHeroTag(),
    /// MX modified end
    dynamic elevation,
    dynamic focusElevation,
    dynamic hoverElevation,
    Color splashColor,
    dynamic highlightElevation,
    dynamic disabledElevation,
    dynamic onPressed,
    MouseCursor mouseCursor = SystemMouseCursors.click,
    ShapeBorder shape,
    bool isExtended = true,
    MaterialTapTargetSize materialTapTargetSize,
    Clip clipBehavior = Clip.none,
    FocusNode focusNode,
    bool autofocus = false,
    Widget icon,
    Widget label,
  }) =>
      FloatingActionButton.extended(
    key: key,
    tooltip: tooltip,
    foregroundColor: foregroundColor,
    backgroundColor: backgroundColor,
    focusColor: focusColor,
    hoverColor: hoverColor,

    /// MX modified begin -delete heroTag
    // heroTag: heroTag,
    /// MX modified end
    elevation: elevation?.toDouble(),
    focusElevation: focusElevation?.toDouble(),
    hoverElevation: hoverElevation?.toDouble(),
    splashColor: splashColor,
    highlightElevation: highlightElevation?.toDouble(),
    disabledElevation: disabledElevation?.toDouble(),
    onPressed: createVoidCallbackClosure(_floatingActionButtonExtended.buildOwner, onPressed),
    mouseCursor: mouseCursor,
    shape: shape,
    isExtended: isExtended,
    materialTapTargetSize: materialTapTargetSize,
    clipBehavior: clipBehavior,
    focusNode: focusNode,
    autofocus: autofocus,
    icon: icon,
    label: label,
  ),
  [
    "key",
    "tooltip",
    "foregroundColor",
    "backgroundColor",
    "focusColor",
    "hoverColor",
    "heroTag",
    "elevation",
    "focusElevation",
    "hoverElevation",
    "splashColor",
    "highlightElevation",
    "disabledElevation",
    "onPressed",
    "mouseCursor",
    "shape",
    "isExtended",
    "materialTapTargetSize",
    "clipBehavior",
    "focusNode",
    "autofocus",
    "icon",
    "label",
  ],
);

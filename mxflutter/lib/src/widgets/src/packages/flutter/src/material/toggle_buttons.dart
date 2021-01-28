//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/toggle_buttons.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/toggle_buttons_theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerToggleButtonsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_toggleButtons.funName] = _toggleButtons;
  return m;
}

var _toggleButtons = MXFunctionInvoke(
  "ToggleButtons",
  ({
    Key key,
    dynamic children,
    dynamic isSelected,
    dynamic onPressed,
    MouseCursor mouseCursor,
    TextStyle textStyle,
    BoxConstraints constraints,
    Color color,
    Color selectedColor,
    Color disabledColor,
    Color fillColor,
    Color focusColor,
    Color highlightColor,
    Color hoverColor,
    Color splashColor,
    dynamic focusNodes,
    bool renderBorder = true,
    Color borderColor,
    Color selectedBorderColor,
    Color disabledBorderColor,
    BorderRadius borderRadius,
    dynamic borderWidth,
  }) =>
      ToggleButtons(
    key: key,
    children: toListT<Widget>(children),
    isSelected: toListT<bool>(isSelected),
    onPressed: createValueChangedGenericClosure<int>(_toggleButtons.buildOwner, onPressed),
    mouseCursor: mouseCursor,
    textStyle: textStyle,
    constraints: constraints,
    color: color,
    selectedColor: selectedColor,
    disabledColor: disabledColor,
    fillColor: fillColor,
    focusColor: focusColor,
    highlightColor: highlightColor,
    hoverColor: hoverColor,
    splashColor: splashColor,
    focusNodes: toListT<FocusNode>(focusNodes),
    renderBorder: renderBorder,
    borderColor: borderColor,
    selectedBorderColor: selectedBorderColor,
    disabledBorderColor: disabledBorderColor,
    borderRadius: borderRadius,
    borderWidth: borderWidth?.toDouble(),
  ),
  [
    "key",
    "children",
    "isSelected",
    "onPressed",
    "mouseCursor",
    "textStyle",
    "constraints",
    "color",
    "selectedColor",
    "disabledColor",
    "fillColor",
    "focusColor",
    "highlightColor",
    "hoverColor",
    "splashColor",
    "focusNodes",
    "renderBorder",
    "borderColor",
    "selectedBorderColor",
    "disabledBorderColor",
    "borderRadius",
    "borderWidth",
  ],
);

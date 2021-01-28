//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/checkbox.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/toggleable.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCheckboxSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_checkbox.funName] = _checkbox;
  m[_checkboxWidth.funName] = _checkboxWidth;
  return m;
}

var _checkbox = MXFunctionInvoke(
  "Checkbox",
  ({
    Key key,
    bool value,
    bool tristate = false,
    dynamic onChanged,
    MouseCursor mouseCursor,
    Color activeColor,
    Color checkColor,
    Color focusColor,
    Color hoverColor,
    MaterialTapTargetSize materialTapTargetSize,
    VisualDensity visualDensity,
    FocusNode focusNode,
    bool autofocus = false,
  }) =>
      Checkbox(
    key: key,
    value: value,
    tristate: tristate,
    onChanged: createValueChangedGenericClosure<bool>(_checkbox.buildOwner, onChanged),
    mouseCursor: mouseCursor,
    activeColor: activeColor,
    checkColor: checkColor,
    focusColor: focusColor,
    hoverColor: hoverColor,
    materialTapTargetSize: materialTapTargetSize,
    visualDensity: visualDensity,
    focusNode: focusNode,
    autofocus: autofocus,
  ),
  [
    "key",
    "value",
    "tristate",
    "onChanged",
    "mouseCursor",
    "activeColor",
    "checkColor",
    "focusColor",
    "hoverColor",
    "materialTapTargetSize",
    "visualDensity",
    "focusNode",
    "autofocus",
  ],
);
var _checkboxWidth = MXFunctionInvoke("Checkbox.width", () => Checkbox.width);

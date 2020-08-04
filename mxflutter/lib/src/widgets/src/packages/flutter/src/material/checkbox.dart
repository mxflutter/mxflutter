//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/checkbox.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/toggleable.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCheckboxSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[checkbox.funName] = checkbox;
  return m;
}
var checkbox = MXFunctionInvoke(
    "Checkbox",
    ({
      Key key,
      bool value,
      bool tristate = false,
      dynamic onChanged,
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
      onChanged: createValueChangedGenericClosure<bool>(checkbox.buildOwner, onChanged),
      activeColor: activeColor,
      checkColor: checkColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      materialTapTargetSize: materialTapTargetSize,
      visualDensity: visualDensity,
      focusNode: focusNode,
      autofocus: autofocus,
    ),
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/expand_icon.dart';
import 'dart:math' as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerExpandIconSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_expandIcon.funName] = _expandIcon;
  return m;
}

var _expandIcon = MXFunctionInvoke(
  "ExpandIcon",
  ({
    Key key,
    bool isExpanded = false,
    dynamic size = 24.0,
    dynamic onPressed,
    EdgeInsetsGeometry padding = const EdgeInsets.all(8.0),
    Color color,
    Color disabledColor,
    Color expandedColor,
  }) =>
      ExpandIcon(
    key: key,
    isExpanded: isExpanded,
    size: size?.toDouble(),
    onPressed: createValueChangedGenericClosure<bool>(_expandIcon.buildOwner, onPressed),
    padding: padding,
    color: color,
    disabledColor: disabledColor,
    expandedColor: expandedColor,
  ),
  [
    "key",
    "isExpanded",
    "size",
    "onPressed",
    "padding",
    "color",
    "disabledColor",
    "expandedColor",
  ],
);

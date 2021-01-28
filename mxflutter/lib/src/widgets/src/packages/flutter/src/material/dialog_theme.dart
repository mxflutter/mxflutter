//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/dialog_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDialogThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dialogTheme.funName] = _dialogTheme;
  return m;
}

var _dialogTheme = MXFunctionInvoke(
  "DialogTheme",
  ({
    Color backgroundColor,
    dynamic elevation,
    ShapeBorder shape,
    TextStyle titleTextStyle,
    TextStyle contentTextStyle,
  }) =>
      DialogTheme(
    backgroundColor: backgroundColor,
    elevation: elevation?.toDouble(),
    shape: shape,
    titleTextStyle: titleTextStyle,
    contentTextStyle: contentTextStyle,
  ),
  [
    "backgroundColor",
    "elevation",
    "shape",
    "titleTextStyle",
    "contentTextStyle",
  ],
);

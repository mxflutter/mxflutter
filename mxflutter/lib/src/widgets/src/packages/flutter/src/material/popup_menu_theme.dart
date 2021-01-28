//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/popup_menu_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPopupMenuThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_popupMenuThemeData.funName] = _popupMenuThemeData;
  m[_popupMenuTheme.funName] = _popupMenuTheme;
  return m;
}

var _popupMenuThemeData = MXFunctionInvoke(
  "PopupMenuThemeData",
  ({
    Color color,
    ShapeBorder shape,
    dynamic elevation,
    TextStyle textStyle,
  }) =>
      PopupMenuThemeData(
    color: color,
    shape: shape,
    elevation: elevation?.toDouble(),
    textStyle: textStyle,
  ),
  [
    "color",
    "shape",
    "elevation",
    "textStyle",
  ],
);
var _popupMenuTheme = MXFunctionInvoke(
  "PopupMenuTheme",
  ({
    Key key,
    PopupMenuThemeData data,
    Widget child,
  }) =>
      PopupMenuTheme(
    key: key,
    data: data,
    child: child,
  ),
  [
    "key",
    "data",
    "child",
  ],
);

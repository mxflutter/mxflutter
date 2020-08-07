//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/icon_theme_data.dart';
import 'package:flutter/src/cupertino/text_theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoTheme.funName] = _cupertinoTheme;
  m[_cupertinoThemeData.funName] = _cupertinoThemeData;
  m[_cupertinoThemeData_raw.funName] = _cupertinoThemeData_raw;
  return m;
}
var _cupertinoTheme = MXFunctionInvoke(
    "CupertinoTheme",
    (
      {
      Key key,
      CupertinoThemeData data,
      Widget child,
      }
    ) =>
      CupertinoTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var _cupertinoThemeData = MXFunctionInvoke(
    "CupertinoThemeData",
    (
      {
      Brightness brightness,
      Color primaryColor,
      Color primaryContrastingColor,
      CupertinoTextThemeData textTheme,
      Color barBackgroundColor,
      Color scaffoldBackgroundColor,
      }
    ) =>
      CupertinoThemeData(
      brightness: brightness,
      primaryColor: primaryColor,
      primaryContrastingColor: primaryContrastingColor,
      textTheme: textTheme,
      barBackgroundColor: barBackgroundColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
    ),
);
var _cupertinoThemeData_raw = MXFunctionInvoke(
  "CupertinoThemeData.raw",
    (
      {
      Brightness brightness,
      Color primaryColor,
      Color primaryContrastingColor,
      CupertinoTextThemeData textTheme,
      Color barBackgroundColor,
      Color scaffoldBackgroundColor,
      }
    ) =>
      CupertinoThemeData.raw(
      brightness,
      primaryColor,
      primaryContrastingColor,
      textTheme,
      barBackgroundColor,
      scaffoldBackgroundColor,
    ),
);

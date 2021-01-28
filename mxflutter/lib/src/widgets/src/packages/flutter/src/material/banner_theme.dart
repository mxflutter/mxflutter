//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/banner_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBannerThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_materialBannerThemeData.funName] = _materialBannerThemeData;
  m[_materialBannerTheme.funName] = _materialBannerTheme;
  return m;
}

var _materialBannerThemeData = MXFunctionInvoke(
  "MaterialBannerThemeData",
  ({
    Color backgroundColor,
    TextStyle contentTextStyle,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry leadingPadding,
  }) =>
      MaterialBannerThemeData(
    backgroundColor: backgroundColor,
    contentTextStyle: contentTextStyle,
    padding: padding,
    leadingPadding: leadingPadding,
  ),
  [
    "backgroundColor",
    "contentTextStyle",
    "padding",
    "leadingPadding",
  ],
);
var _materialBannerTheme = MXFunctionInvoke(
  "MaterialBannerTheme",
  ({
    Key key,
    MaterialBannerThemeData data,
    Widget child,
  }) =>
      MaterialBannerTheme(
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

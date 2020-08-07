//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/cupertino/interface_level.dart';
import 'package:flutter/src/cupertino/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerColorsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoDynamicColor.funName] = _cupertinoDynamicColor;
  m[_cupertinoDynamicColor_withBrightnessAndContrast.funName] = _cupertinoDynamicColor_withBrightnessAndContrast;
  m[_cupertinoDynamicColor_withBrightness.funName] = _cupertinoDynamicColor_withBrightness;
  return m;
}
var _cupertinoDynamicColor = MXFunctionInvoke(
    "CupertinoDynamicColor",
    (
      {
      String debugLabel,
      Color color,
      Color darkColor,
      Color highContrastColor,
      Color darkHighContrastColor,
      Color elevatedColor,
      Color darkElevatedColor,
      Color highContrastElevatedColor,
      Color darkHighContrastElevatedColor,
      }
    ) =>
      CupertinoDynamicColor(
      debugLabel: debugLabel,
      color: color,
      darkColor: darkColor,
      highContrastColor: highContrastColor,
      darkHighContrastColor: darkHighContrastColor,
      elevatedColor: elevatedColor,
      darkElevatedColor: darkElevatedColor,
      highContrastElevatedColor: highContrastElevatedColor,
      darkHighContrastElevatedColor: darkHighContrastElevatedColor,
    ),
);
var _cupertinoDynamicColor_withBrightnessAndContrast = MXFunctionInvoke(
  "CupertinoDynamicColor.withBrightnessAndContrast",
    (
      {
      String debugLabel,
      Color color,
      Color darkColor,
      Color highContrastColor,
      Color darkHighContrastColor,
      }
    ) =>
      CupertinoDynamicColor.withBrightnessAndContrast(
      debugLabel: debugLabel,
      color: color,
      darkColor: darkColor,
      highContrastColor: highContrastColor,
      darkHighContrastColor: darkHighContrastColor,
    ),
);
var _cupertinoDynamicColor_withBrightness = MXFunctionInvoke(
  "CupertinoDynamicColor.withBrightness",
    (
      {
      String debugLabel,
      Color color,
      Color darkColor,
      }
    ) =>
      CupertinoDynamicColor.withBrightness(
      debugLabel: debugLabel,
      color: color,
      darkColor: darkColor,
    ),
);

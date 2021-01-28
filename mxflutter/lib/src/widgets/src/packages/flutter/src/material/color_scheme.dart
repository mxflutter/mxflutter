//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/theme_data.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerColorSchemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_colorScheme.funName] = _colorScheme;
  m[_colorSchemeFromSwatch.funName] = _colorSchemeFromSwatch;
  m[_colorSchemeLight.funName] = _colorSchemeLight;
  m[_colorSchemeDark.funName] = _colorSchemeDark;
  return m;
}

var _colorScheme = MXFunctionInvoke(
  "ColorScheme",
  ({
    Color primary,
    Color primaryVariant,
    Color secondary,
    Color secondaryVariant,
    Color surface,
    Color background,
    Color error,
    Color onPrimary,
    Color onSecondary,
    Color onSurface,
    Color onBackground,
    Color onError,
    Brightness brightness,
  }) =>
      ColorScheme(
    primary: primary,
    primaryVariant: primaryVariant,
    secondary: secondary,
    secondaryVariant: secondaryVariant,
    surface: surface,
    background: background,
    error: error,
    onPrimary: onPrimary,
    onSecondary: onSecondary,
    onSurface: onSurface,
    onBackground: onBackground,
    onError: onError,
    brightness: brightness,
  ),
  [
    "primary",
    "primaryVariant",
    "secondary",
    "secondaryVariant",
    "surface",
    "background",
    "error",
    "onPrimary",
    "onSecondary",
    "onSurface",
    "onBackground",
    "onError",
    "brightness",
  ],
);
var _colorSchemeFromSwatch = MXFunctionInvoke(
  "ColorScheme.fromSwatch",
  ({
    MaterialColor primarySwatch = Colors.blue,
    Color primaryColorDark,
    Color accentColor,
    Color cardColor,
    Color backgroundColor,
    Color errorColor,
    Brightness brightness = Brightness.light,
  }) =>
      ColorScheme.fromSwatch(
    primarySwatch: primarySwatch,
    primaryColorDark: primaryColorDark,
    accentColor: accentColor,
    cardColor: cardColor,
    backgroundColor: backgroundColor,
    errorColor: errorColor,
    brightness: brightness,
  ),
  [
    "primarySwatch",
    "primaryColorDark",
    "accentColor",
    "cardColor",
    "backgroundColor",
    "errorColor",
    "brightness",
  ],
);
var _colorSchemeLight = MXFunctionInvoke(
  "ColorScheme.light",
  ({
    Color primary = const Color(0xff6200ee),
    Color primaryVariant = const Color(0xff3700b3),
    Color secondary = const Color(0xff03dac6),
    Color secondaryVariant = const Color(0xff018786),
    Color surface = Colors.white,
    Color background = Colors.white,
    Color error = const Color(0xffb00020),
    Color onPrimary = Colors.white,
    Color onSecondary = const Color(0xFF000000),
    Color onSurface = const Color(0xFF000000),
    Color onBackground = const Color(0xFF000000),
    Color onError = Colors.white,
    Brightness brightness = Brightness.light,
  }) =>
      ColorScheme.light(
    primary: primary,
    primaryVariant: primaryVariant,
    secondary: secondary,
    secondaryVariant: secondaryVariant,
    surface: surface,
    background: background,
    error: error,
    onPrimary: onPrimary,
    onSecondary: onSecondary,
    onSurface: onSurface,
    onBackground: onBackground,
    onError: onError,
    brightness: brightness,
  ),
  [
    "primary",
    "primaryVariant",
    "secondary",
    "secondaryVariant",
    "surface",
    "background",
    "error",
    "onPrimary",
    "onSecondary",
    "onSurface",
    "onBackground",
    "onError",
    "brightness",
  ],
);
var _colorSchemeDark = MXFunctionInvoke(
  "ColorScheme.dark",
  ({
    Color primary = const Color(0xffbb86fc),
    Color primaryVariant = const Color(0xff3700b3),
    Color secondary = const Color(0xff03dac6),
    Color secondaryVariant = const Color(0xff03dac6),
    Color surface = const Color(0xff121212),
    Color background = const Color(0xff121212),
    Color error = const Color(0xffcf6679),
    Color onPrimary = const Color(0xFF000000),
    Color onSecondary = const Color(0xFF000000),
    Color onSurface = Colors.white,
    Color onBackground = Colors.white,
    Color onError = const Color(0xFF000000),
    Brightness brightness = Brightness.dark,
  }) =>
      ColorScheme.dark(
    primary: primary,
    primaryVariant: primaryVariant,
    secondary: secondary,
    secondaryVariant: secondaryVariant,
    surface: surface,
    background: background,
    error: error,
    onPrimary: onPrimary,
    onSecondary: onSecondary,
    onSurface: onSurface,
    onBackground: onBackground,
    onError: onError,
    brightness: brightness,
  ),
  [
    "primary",
    "primaryVariant",
    "secondary",
    "secondaryVariant",
    "surface",
    "background",
    "error",
    "onPrimary",
    "onSecondary",
    "onSurface",
    "onBackground",
    "onError",
    "brightness",
  ],
);

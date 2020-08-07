//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_colorScheme_fromSwatch.funName] = _colorScheme_fromSwatch;
  m[_colorScheme_light.funName] = _colorScheme_light;
  m[_colorScheme_dark.funName] = _colorScheme_dark;
  return m;
}
var _colorScheme = MXFunctionInvoke(
    "ColorScheme",
    (
      {
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
      }
    ) =>
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
);
var _colorScheme_fromSwatch = MXFunctionInvoke(
  "ColorScheme.fromSwatch",
    (
      {
      MaterialColor primarySwatch,
      Color primaryColorDark,
      Color accentColor,
      Color cardColor,
      Color backgroundColor,
      Color errorColor,
      Brightness brightness = Brightness.light,
      }
    ) =>
      ColorScheme.fromSwatch(
      primarySwatch: primarySwatch,
      primaryColorDark: primaryColorDark,
      accentColor: accentColor,
      cardColor: cardColor,
      backgroundColor: backgroundColor,
      errorColor: errorColor,
      brightness: brightness,
    ),
);
var _colorScheme_light = MXFunctionInvoke(
  "ColorScheme.light",
    (
      {
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
      Brightness brightness = Brightness.light,
      }
    ) =>
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
);
var _colorScheme_dark = MXFunctionInvoke(
  "ColorScheme.dark",
    (
      {
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
      Brightness brightness = Brightness.dark,
      }
    ) =>
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
);

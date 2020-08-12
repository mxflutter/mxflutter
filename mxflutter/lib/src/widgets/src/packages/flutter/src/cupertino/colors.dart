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
  m[_cupertinoColors_activeBlue.funName] = _cupertinoColors_activeBlue;
  m[_cupertinoColors_activeGreen.funName] = _cupertinoColors_activeGreen;
  m[_cupertinoColors_activeOrange.funName] = _cupertinoColors_activeOrange;
  m[_cupertinoColors_white.funName] = _cupertinoColors_white;
  m[_cupertinoColors_black.funName] = _cupertinoColors_black;
  m[_cupertinoColors_lightBackgroundGray.funName] = _cupertinoColors_lightBackgroundGray;
  m[_cupertinoColors_extraLightBackgroundGray.funName] = _cupertinoColors_extraLightBackgroundGray;
  m[_cupertinoColors_darkBackgroundGray.funName] = _cupertinoColors_darkBackgroundGray;
  m[_cupertinoColors_inactiveGray.funName] = _cupertinoColors_inactiveGray;
  m[_cupertinoColors_destructiveRed.funName] = _cupertinoColors_destructiveRed;
  m[_cupertinoColors_systemBlue.funName] = _cupertinoColors_systemBlue;
  m[_cupertinoColors_systemGreen.funName] = _cupertinoColors_systemGreen;
  m[_cupertinoColors_systemIndigo.funName] = _cupertinoColors_systemIndigo;
  m[_cupertinoColors_systemOrange.funName] = _cupertinoColors_systemOrange;
  m[_cupertinoColors_systemPink.funName] = _cupertinoColors_systemPink;
  m[_cupertinoColors_systemPurple.funName] = _cupertinoColors_systemPurple;
  m[_cupertinoColors_systemRed.funName] = _cupertinoColors_systemRed;
  m[_cupertinoColors_systemTeal.funName] = _cupertinoColors_systemTeal;
  m[_cupertinoColors_systemYellow.funName] = _cupertinoColors_systemYellow;
  m[_cupertinoColors_systemGrey.funName] = _cupertinoColors_systemGrey;
  m[_cupertinoColors_systemGrey2.funName] = _cupertinoColors_systemGrey2;
  m[_cupertinoColors_systemGrey3.funName] = _cupertinoColors_systemGrey3;
  m[_cupertinoColors_systemGrey4.funName] = _cupertinoColors_systemGrey4;
  m[_cupertinoColors_systemGrey5.funName] = _cupertinoColors_systemGrey5;
  m[_cupertinoColors_systemGrey6.funName] = _cupertinoColors_systemGrey6;
  m[_cupertinoColors_label.funName] = _cupertinoColors_label;
  m[_cupertinoColors_secondaryLabel.funName] = _cupertinoColors_secondaryLabel;
  m[_cupertinoColors_tertiaryLabel.funName] = _cupertinoColors_tertiaryLabel;
  m[_cupertinoColors_quaternaryLabel.funName] = _cupertinoColors_quaternaryLabel;
  m[_cupertinoColors_systemFill.funName] = _cupertinoColors_systemFill;
  m[_cupertinoColors_secondarySystemFill.funName] = _cupertinoColors_secondarySystemFill;
  m[_cupertinoColors_tertiarySystemFill.funName] = _cupertinoColors_tertiarySystemFill;
  m[_cupertinoColors_quaternarySystemFill.funName] = _cupertinoColors_quaternarySystemFill;
  m[_cupertinoColors_placeholderText.funName] = _cupertinoColors_placeholderText;
  m[_cupertinoColors_systemBackground.funName] = _cupertinoColors_systemBackground;
  m[_cupertinoColors_secondarySystemBackground.funName] = _cupertinoColors_secondarySystemBackground;
  m[_cupertinoColors_tertiarySystemBackground.funName] = _cupertinoColors_tertiarySystemBackground;
  m[_cupertinoColors_systemGroupedBackground.funName] = _cupertinoColors_systemGroupedBackground;
  m[_cupertinoColors_secondarySystemGroupedBackground.funName] = _cupertinoColors_secondarySystemGroupedBackground;
  m[_cupertinoColors_tertiarySystemGroupedBackground.funName] = _cupertinoColors_tertiarySystemGroupedBackground;
  m[_cupertinoColors_separator.funName] = _cupertinoColors_separator;
  m[_cupertinoColors_opaqueSeparator.funName] = _cupertinoColors_opaqueSeparator;
  m[_cupertinoColors_link.funName] = _cupertinoColors_link;
  m[_cupertinoDynamicColor.funName] = _cupertinoDynamicColor;
  m[_cupertinoDynamicColor_withBrightnessAndContrast.funName] = _cupertinoDynamicColor_withBrightnessAndContrast;
  m[_cupertinoDynamicColor_withBrightness.funName] = _cupertinoDynamicColor_withBrightness;
  return m;
}
var _cupertinoColors_activeBlue = MXFunctionInvoke(
  "CupertinoColors.activeBlue",
    (
    ) =>
      CupertinoColors.activeBlue
);
var _cupertinoColors_activeGreen = MXFunctionInvoke(
  "CupertinoColors.activeGreen",
    (
    ) =>
      CupertinoColors.activeGreen
);
var _cupertinoColors_activeOrange = MXFunctionInvoke(
  "CupertinoColors.activeOrange",
    (
    ) =>
      CupertinoColors.activeOrange
);
var _cupertinoColors_white = MXFunctionInvoke(
  "CupertinoColors.white",
    (
    ) =>
      CupertinoColors.white
);
var _cupertinoColors_black = MXFunctionInvoke(
  "CupertinoColors.black",
    (
    ) =>
      CupertinoColors.black
);
var _cupertinoColors_lightBackgroundGray = MXFunctionInvoke(
  "CupertinoColors.lightBackgroundGray",
    (
    ) =>
      CupertinoColors.lightBackgroundGray
);
var _cupertinoColors_extraLightBackgroundGray = MXFunctionInvoke(
  "CupertinoColors.extraLightBackgroundGray",
    (
    ) =>
      CupertinoColors.extraLightBackgroundGray
);
var _cupertinoColors_darkBackgroundGray = MXFunctionInvoke(
  "CupertinoColors.darkBackgroundGray",
    (
    ) =>
      CupertinoColors.darkBackgroundGray
);
var _cupertinoColors_inactiveGray = MXFunctionInvoke(
  "CupertinoColors.inactiveGray",
    (
    ) =>
      CupertinoColors.inactiveGray
);
var _cupertinoColors_destructiveRed = MXFunctionInvoke(
  "CupertinoColors.destructiveRed",
    (
    ) =>
      CupertinoColors.destructiveRed
);
var _cupertinoColors_systemBlue = MXFunctionInvoke(
  "CupertinoColors.systemBlue",
    (
    ) =>
      CupertinoColors.systemBlue
);
var _cupertinoColors_systemGreen = MXFunctionInvoke(
  "CupertinoColors.systemGreen",
    (
    ) =>
      CupertinoColors.systemGreen
);
var _cupertinoColors_systemIndigo = MXFunctionInvoke(
  "CupertinoColors.systemIndigo",
    (
    ) =>
      CupertinoColors.systemIndigo
);
var _cupertinoColors_systemOrange = MXFunctionInvoke(
  "CupertinoColors.systemOrange",
    (
    ) =>
      CupertinoColors.systemOrange
);
var _cupertinoColors_systemPink = MXFunctionInvoke(
  "CupertinoColors.systemPink",
    (
    ) =>
      CupertinoColors.systemPink
);
var _cupertinoColors_systemPurple = MXFunctionInvoke(
  "CupertinoColors.systemPurple",
    (
    ) =>
      CupertinoColors.systemPurple
);
var _cupertinoColors_systemRed = MXFunctionInvoke(
  "CupertinoColors.systemRed",
    (
    ) =>
      CupertinoColors.systemRed
);
var _cupertinoColors_systemTeal = MXFunctionInvoke(
  "CupertinoColors.systemTeal",
    (
    ) =>
      CupertinoColors.systemTeal
);
var _cupertinoColors_systemYellow = MXFunctionInvoke(
  "CupertinoColors.systemYellow",
    (
    ) =>
      CupertinoColors.systemYellow
);
var _cupertinoColors_systemGrey = MXFunctionInvoke(
  "CupertinoColors.systemGrey",
    (
    ) =>
      CupertinoColors.systemGrey
);
var _cupertinoColors_systemGrey2 = MXFunctionInvoke(
  "CupertinoColors.systemGrey2",
    (
    ) =>
      CupertinoColors.systemGrey2
);
var _cupertinoColors_systemGrey3 = MXFunctionInvoke(
  "CupertinoColors.systemGrey3",
    (
    ) =>
      CupertinoColors.systemGrey3
);
var _cupertinoColors_systemGrey4 = MXFunctionInvoke(
  "CupertinoColors.systemGrey4",
    (
    ) =>
      CupertinoColors.systemGrey4
);
var _cupertinoColors_systemGrey5 = MXFunctionInvoke(
  "CupertinoColors.systemGrey5",
    (
    ) =>
      CupertinoColors.systemGrey5
);
var _cupertinoColors_systemGrey6 = MXFunctionInvoke(
  "CupertinoColors.systemGrey6",
    (
    ) =>
      CupertinoColors.systemGrey6
);
var _cupertinoColors_label = MXFunctionInvoke(
  "CupertinoColors.label",
    (
    ) =>
      CupertinoColors.label
);
var _cupertinoColors_secondaryLabel = MXFunctionInvoke(
  "CupertinoColors.secondaryLabel",
    (
    ) =>
      CupertinoColors.secondaryLabel
);
var _cupertinoColors_tertiaryLabel = MXFunctionInvoke(
  "CupertinoColors.tertiaryLabel",
    (
    ) =>
      CupertinoColors.tertiaryLabel
);
var _cupertinoColors_quaternaryLabel = MXFunctionInvoke(
  "CupertinoColors.quaternaryLabel",
    (
    ) =>
      CupertinoColors.quaternaryLabel
);
var _cupertinoColors_systemFill = MXFunctionInvoke(
  "CupertinoColors.systemFill",
    (
    ) =>
      CupertinoColors.systemFill
);
var _cupertinoColors_secondarySystemFill = MXFunctionInvoke(
  "CupertinoColors.secondarySystemFill",
    (
    ) =>
      CupertinoColors.secondarySystemFill
);
var _cupertinoColors_tertiarySystemFill = MXFunctionInvoke(
  "CupertinoColors.tertiarySystemFill",
    (
    ) =>
      CupertinoColors.tertiarySystemFill
);
var _cupertinoColors_quaternarySystemFill = MXFunctionInvoke(
  "CupertinoColors.quaternarySystemFill",
    (
    ) =>
      CupertinoColors.quaternarySystemFill
);
var _cupertinoColors_placeholderText = MXFunctionInvoke(
  "CupertinoColors.placeholderText",
    (
    ) =>
      CupertinoColors.placeholderText
);
var _cupertinoColors_systemBackground = MXFunctionInvoke(
  "CupertinoColors.systemBackground",
    (
    ) =>
      CupertinoColors.systemBackground
);
var _cupertinoColors_secondarySystemBackground = MXFunctionInvoke(
  "CupertinoColors.secondarySystemBackground",
    (
    ) =>
      CupertinoColors.secondarySystemBackground
);
var _cupertinoColors_tertiarySystemBackground = MXFunctionInvoke(
  "CupertinoColors.tertiarySystemBackground",
    (
    ) =>
      CupertinoColors.tertiarySystemBackground
);
var _cupertinoColors_systemGroupedBackground = MXFunctionInvoke(
  "CupertinoColors.systemGroupedBackground",
    (
    ) =>
      CupertinoColors.systemGroupedBackground
);
var _cupertinoColors_secondarySystemGroupedBackground = MXFunctionInvoke(
  "CupertinoColors.secondarySystemGroupedBackground",
    (
    ) =>
      CupertinoColors.secondarySystemGroupedBackground
);
var _cupertinoColors_tertiarySystemGroupedBackground = MXFunctionInvoke(
  "CupertinoColors.tertiarySystemGroupedBackground",
    (
    ) =>
      CupertinoColors.tertiarySystemGroupedBackground
);
var _cupertinoColors_separator = MXFunctionInvoke(
  "CupertinoColors.separator",
    (
    ) =>
      CupertinoColors.separator
);
var _cupertinoColors_opaqueSeparator = MXFunctionInvoke(
  "CupertinoColors.opaqueSeparator",
    (
    ) =>
      CupertinoColors.opaqueSeparator
);
var _cupertinoColors_link = MXFunctionInvoke(
  "CupertinoColors.link",
    (
    ) =>
      CupertinoColors.link
);
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

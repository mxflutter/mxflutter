//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_cupertinoColorsActiveBlue.funName] = _cupertinoColorsActiveBlue;
  m[_cupertinoColorsActiveGreen.funName] = _cupertinoColorsActiveGreen;
  m[_cupertinoColorsActiveOrange.funName] = _cupertinoColorsActiveOrange;
  m[_cupertinoColorsWhite.funName] = _cupertinoColorsWhite;
  m[_cupertinoColorsBlack.funName] = _cupertinoColorsBlack;
  m[_cupertinoColorsLightBackgroundGray.funName] = _cupertinoColorsLightBackgroundGray;
  m[_cupertinoColorsExtraLightBackgroundGray.funName] = _cupertinoColorsExtraLightBackgroundGray;
  m[_cupertinoColorsDarkBackgroundGray.funName] = _cupertinoColorsDarkBackgroundGray;
  m[_cupertinoColorsInactiveGray.funName] = _cupertinoColorsInactiveGray;
  m[_cupertinoColorsDestructiveRed.funName] = _cupertinoColorsDestructiveRed;
  m[_cupertinoColorsSystemBlue.funName] = _cupertinoColorsSystemBlue;
  m[_cupertinoColorsSystemGreen.funName] = _cupertinoColorsSystemGreen;
  m[_cupertinoColorsSystemIndigo.funName] = _cupertinoColorsSystemIndigo;
  m[_cupertinoColorsSystemOrange.funName] = _cupertinoColorsSystemOrange;
  m[_cupertinoColorsSystemPink.funName] = _cupertinoColorsSystemPink;
  m[_cupertinoColorsSystemPurple.funName] = _cupertinoColorsSystemPurple;
  m[_cupertinoColorsSystemRed.funName] = _cupertinoColorsSystemRed;
  m[_cupertinoColorsSystemTeal.funName] = _cupertinoColorsSystemTeal;
  m[_cupertinoColorsSystemYellow.funName] = _cupertinoColorsSystemYellow;
  m[_cupertinoColorsSystemGrey.funName] = _cupertinoColorsSystemGrey;
  m[_cupertinoColorsSystemGrey2.funName] = _cupertinoColorsSystemGrey2;
  m[_cupertinoColorsSystemGrey3.funName] = _cupertinoColorsSystemGrey3;
  m[_cupertinoColorsSystemGrey4.funName] = _cupertinoColorsSystemGrey4;
  m[_cupertinoColorsSystemGrey5.funName] = _cupertinoColorsSystemGrey5;
  m[_cupertinoColorsSystemGrey6.funName] = _cupertinoColorsSystemGrey6;
  m[_cupertinoColorsLabel.funName] = _cupertinoColorsLabel;
  m[_cupertinoColorsSecondaryLabel.funName] = _cupertinoColorsSecondaryLabel;
  m[_cupertinoColorsTertiaryLabel.funName] = _cupertinoColorsTertiaryLabel;
  m[_cupertinoColorsQuaternaryLabel.funName] = _cupertinoColorsQuaternaryLabel;
  m[_cupertinoColorsSystemFill.funName] = _cupertinoColorsSystemFill;
  m[_cupertinoColorsSecondarySystemFill.funName] = _cupertinoColorsSecondarySystemFill;
  m[_cupertinoColorsTertiarySystemFill.funName] = _cupertinoColorsTertiarySystemFill;
  m[_cupertinoColorsQuaternarySystemFill.funName] = _cupertinoColorsQuaternarySystemFill;
  m[_cupertinoColorsPlaceholderText.funName] = _cupertinoColorsPlaceholderText;
  m[_cupertinoColorsSystemBackground.funName] = _cupertinoColorsSystemBackground;
  m[_cupertinoColorsSecondarySystemBackground.funName] = _cupertinoColorsSecondarySystemBackground;
  m[_cupertinoColorsTertiarySystemBackground.funName] = _cupertinoColorsTertiarySystemBackground;
  m[_cupertinoColorsSystemGroupedBackground.funName] = _cupertinoColorsSystemGroupedBackground;
  m[_cupertinoColorsSecondarySystemGroupedBackground.funName] = _cupertinoColorsSecondarySystemGroupedBackground;
  m[_cupertinoColorsTertiarySystemGroupedBackground.funName] = _cupertinoColorsTertiarySystemGroupedBackground;
  m[_cupertinoColorsSeparator.funName] = _cupertinoColorsSeparator;
  m[_cupertinoColorsOpaqueSeparator.funName] = _cupertinoColorsOpaqueSeparator;
  m[_cupertinoColorsLink.funName] = _cupertinoColorsLink;
  m[_cupertinoDynamicColor.funName] = _cupertinoDynamicColor;
  m[_cupertinoDynamicColorWithBrightnessAndContrast.funName] = _cupertinoDynamicColorWithBrightnessAndContrast;
  m[_cupertinoDynamicColorWithBrightness.funName] = _cupertinoDynamicColorWithBrightness;
  return m;
}

var _cupertinoColorsActiveBlue = MXFunctionInvoke("CupertinoColors.activeBlue", () => CupertinoColors.activeBlue);
var _cupertinoColorsActiveGreen = MXFunctionInvoke("CupertinoColors.activeGreen", () => CupertinoColors.activeGreen);
var _cupertinoColorsActiveOrange = MXFunctionInvoke("CupertinoColors.activeOrange", () => CupertinoColors.activeOrange);
var _cupertinoColorsWhite = MXFunctionInvoke("CupertinoColors.white", () => CupertinoColors.white);
var _cupertinoColorsBlack = MXFunctionInvoke("CupertinoColors.black", () => CupertinoColors.black);
var _cupertinoColorsLightBackgroundGray =
    MXFunctionInvoke("CupertinoColors.lightBackgroundGray", () => CupertinoColors.lightBackgroundGray);
var _cupertinoColorsExtraLightBackgroundGray =
    MXFunctionInvoke("CupertinoColors.extraLightBackgroundGray", () => CupertinoColors.extraLightBackgroundGray);
var _cupertinoColorsDarkBackgroundGray =
    MXFunctionInvoke("CupertinoColors.darkBackgroundGray", () => CupertinoColors.darkBackgroundGray);
var _cupertinoColorsInactiveGray = MXFunctionInvoke("CupertinoColors.inactiveGray", () => CupertinoColors.inactiveGray);
var _cupertinoColorsDestructiveRed =
    MXFunctionInvoke("CupertinoColors.destructiveRed", () => CupertinoColors.destructiveRed);
var _cupertinoColorsSystemBlue = MXFunctionInvoke("CupertinoColors.systemBlue", () => CupertinoColors.systemBlue);
var _cupertinoColorsSystemGreen = MXFunctionInvoke("CupertinoColors.systemGreen", () => CupertinoColors.systemGreen);
var _cupertinoColorsSystemIndigo = MXFunctionInvoke("CupertinoColors.systemIndigo", () => CupertinoColors.systemIndigo);
var _cupertinoColorsSystemOrange = MXFunctionInvoke("CupertinoColors.systemOrange", () => CupertinoColors.systemOrange);
var _cupertinoColorsSystemPink = MXFunctionInvoke("CupertinoColors.systemPink", () => CupertinoColors.systemPink);
var _cupertinoColorsSystemPurple = MXFunctionInvoke("CupertinoColors.systemPurple", () => CupertinoColors.systemPurple);
var _cupertinoColorsSystemRed = MXFunctionInvoke("CupertinoColors.systemRed", () => CupertinoColors.systemRed);
var _cupertinoColorsSystemTeal = MXFunctionInvoke("CupertinoColors.systemTeal", () => CupertinoColors.systemTeal);
var _cupertinoColorsSystemYellow = MXFunctionInvoke("CupertinoColors.systemYellow", () => CupertinoColors.systemYellow);
var _cupertinoColorsSystemGrey = MXFunctionInvoke("CupertinoColors.systemGrey", () => CupertinoColors.systemGrey);
var _cupertinoColorsSystemGrey2 = MXFunctionInvoke("CupertinoColors.systemGrey2", () => CupertinoColors.systemGrey2);
var _cupertinoColorsSystemGrey3 = MXFunctionInvoke("CupertinoColors.systemGrey3", () => CupertinoColors.systemGrey3);
var _cupertinoColorsSystemGrey4 = MXFunctionInvoke("CupertinoColors.systemGrey4", () => CupertinoColors.systemGrey4);
var _cupertinoColorsSystemGrey5 = MXFunctionInvoke("CupertinoColors.systemGrey5", () => CupertinoColors.systemGrey5);
var _cupertinoColorsSystemGrey6 = MXFunctionInvoke("CupertinoColors.systemGrey6", () => CupertinoColors.systemGrey6);
var _cupertinoColorsLabel = MXFunctionInvoke("CupertinoColors.label", () => CupertinoColors.label);
var _cupertinoColorsSecondaryLabel =
    MXFunctionInvoke("CupertinoColors.secondaryLabel", () => CupertinoColors.secondaryLabel);
var _cupertinoColorsTertiaryLabel =
    MXFunctionInvoke("CupertinoColors.tertiaryLabel", () => CupertinoColors.tertiaryLabel);
var _cupertinoColorsQuaternaryLabel =
    MXFunctionInvoke("CupertinoColors.quaternaryLabel", () => CupertinoColors.quaternaryLabel);
var _cupertinoColorsSystemFill = MXFunctionInvoke("CupertinoColors.systemFill", () => CupertinoColors.systemFill);
var _cupertinoColorsSecondarySystemFill =
    MXFunctionInvoke("CupertinoColors.secondarySystemFill", () => CupertinoColors.secondarySystemFill);
var _cupertinoColorsTertiarySystemFill =
    MXFunctionInvoke("CupertinoColors.tertiarySystemFill", () => CupertinoColors.tertiarySystemFill);
var _cupertinoColorsQuaternarySystemFill =
    MXFunctionInvoke("CupertinoColors.quaternarySystemFill", () => CupertinoColors.quaternarySystemFill);
var _cupertinoColorsPlaceholderText =
    MXFunctionInvoke("CupertinoColors.placeholderText", () => CupertinoColors.placeholderText);
var _cupertinoColorsSystemBackground =
    MXFunctionInvoke("CupertinoColors.systemBackground", () => CupertinoColors.systemBackground);
var _cupertinoColorsSecondarySystemBackground =
    MXFunctionInvoke("CupertinoColors.secondarySystemBackground", () => CupertinoColors.secondarySystemBackground);
var _cupertinoColorsTertiarySystemBackground =
    MXFunctionInvoke("CupertinoColors.tertiarySystemBackground", () => CupertinoColors.tertiarySystemBackground);
var _cupertinoColorsSystemGroupedBackground =
    MXFunctionInvoke("CupertinoColors.systemGroupedBackground", () => CupertinoColors.systemGroupedBackground);
var _cupertinoColorsSecondarySystemGroupedBackground = MXFunctionInvoke(
    "CupertinoColors.secondarySystemGroupedBackground", () => CupertinoColors.secondarySystemGroupedBackground);
var _cupertinoColorsTertiarySystemGroupedBackground = MXFunctionInvoke(
    "CupertinoColors.tertiarySystemGroupedBackground", () => CupertinoColors.tertiarySystemGroupedBackground);
var _cupertinoColorsSeparator = MXFunctionInvoke("CupertinoColors.separator", () => CupertinoColors.separator);
var _cupertinoColorsOpaqueSeparator =
    MXFunctionInvoke("CupertinoColors.opaqueSeparator", () => CupertinoColors.opaqueSeparator);
var _cupertinoColorsLink = MXFunctionInvoke("CupertinoColors.link", () => CupertinoColors.link);
var _cupertinoDynamicColor = MXFunctionInvoke(
  "CupertinoDynamicColor",
  ({
    String debugLabel,
    Color color,
    Color darkColor,
    Color highContrastColor,
    Color darkHighContrastColor,
    Color elevatedColor,
    Color darkElevatedColor,
    Color highContrastElevatedColor,
    Color darkHighContrastElevatedColor,
  }) =>
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
  [
    "debugLabel",
    "color",
    "darkColor",
    "highContrastColor",
    "darkHighContrastColor",
    "elevatedColor",
    "darkElevatedColor",
    "highContrastElevatedColor",
    "darkHighContrastElevatedColor",
  ],
);
var _cupertinoDynamicColorWithBrightnessAndContrast = MXFunctionInvoke(
  "CupertinoDynamicColor.withBrightnessAndContrast",
  ({
    String debugLabel,
    Color color,
    Color darkColor,
    Color highContrastColor,
    Color darkHighContrastColor,
  }) =>
      CupertinoDynamicColor.withBrightnessAndContrast(
    debugLabel: debugLabel,
    color: color,
    darkColor: darkColor,
    highContrastColor: highContrastColor,
    darkHighContrastColor: darkHighContrastColor,
  ),
  [
    "debugLabel",
    "color",
    "darkColor",
    "highContrastColor",
    "darkHighContrastColor",
  ],
);
var _cupertinoDynamicColorWithBrightness = MXFunctionInvoke(
  "CupertinoDynamicColor.withBrightness",
  ({
    String debugLabel,
    Color color,
    Color darkColor,
  }) =>
      CupertinoDynamicColor.withBrightness(
    debugLabel: debugLabel,
    color: color,
    darkColor: darkColor,
  ),
  [
    "debugLabel",
    "color",
    "darkColor",
  ],
);

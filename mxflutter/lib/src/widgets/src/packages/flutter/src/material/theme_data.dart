//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/app_bar_theme.dart';
import 'package:flutter/src/material/banner_theme.dart';
import 'package:flutter/src/material/bottom_app_bar_theme.dart';
import 'package:flutter/src/material/bottom_navigation_bar_theme.dart';
import 'package:flutter/src/material/bottom_sheet_theme.dart';
import 'package:flutter/src/material/button_bar_theme.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/card_theme.dart';
import 'package:flutter/src/material/chip_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/dialog_theme.dart';
import 'package:flutter/src/material/divider_theme.dart';
import 'package:flutter/src/material/floating_action_button_theme.dart';
import 'package:flutter/src/material/ink_splash.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/navigation_rail_theme.dart';
import 'package:flutter/src/material/page_transitions_theme.dart';
import 'package:flutter/src/material/popup_menu_theme.dart';
import 'package:flutter/src/material/slider_theme.dart';
import 'package:flutter/src/material/snack_bar_theme.dart';
import 'package:flutter/src/material/tab_bar_theme.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/time_picker_theme.dart';
import 'package:flutter/src/material/toggle_buttons_theme.dart';
import 'package:flutter/src/material/tooltip_theme.dart';
import 'package:flutter/src/material/typography.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerThemeDataSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_materialTapTargetSize.funName] = _materialTapTargetSize;
  m[_themeData.funName] = _themeData;
  m[_themeDataFrom.funName] = _themeDataFrom;
  m[_themeDataLight.funName] = _themeDataLight;
  m[_themeDataDark.funName] = _themeDataDark;
  m[_themeDataFallback.funName] = _themeDataFallback;
  m[_themeDataRaw.funName] = _themeDataRaw;
  m[_materialBasedCupertinoThemeData.funName] = _materialBasedCupertinoThemeData;
  m[_visualDensity.funName] = _visualDensity;
  m[_visualDensityMinimumDensity.funName] = _visualDensityMinimumDensity;
  m[_visualDensityMaximumDensity.funName] = _visualDensityMaximumDensity;
  m[_visualDensityStandard.funName] = _visualDensityStandard;
  m[_visualDensityComfortable.funName] = _visualDensityComfortable;
  m[_visualDensityCompact.funName] = _visualDensityCompact;
  return m;
}

var _materialTapTargetSize = MXFunctionInvoke("MaterialTapTargetSize",
    ({String name, int index}) => MXMaterialTapTargetSize.parse(name, index), ["name", "index"]);
var _themeData = MXFunctionInvoke(
  "ThemeData",
  ({
    Brightness brightness,
    VisualDensity visualDensity,
    MaterialColor primarySwatch,
    Color primaryColor,
    Brightness primaryColorBrightness,
    Color primaryColorLight,
    Color primaryColorDark,
    Color accentColor,
    Brightness accentColorBrightness,
    Color canvasColor,
    Color scaffoldBackgroundColor,
    Color bottomAppBarColor,
    Color cardColor,
    Color dividerColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    InteractiveInkFeatureFactory splashFactory,
    Color selectedRowColor,
    Color unselectedWidgetColor,
    Color disabledColor,
    Color buttonColor,
    ButtonThemeData buttonTheme,
    ToggleButtonsThemeData toggleButtonsTheme,
    Color secondaryHeaderColor,
    Color textSelectionColor,
    Color cursorColor,
    Color textSelectionHandleColor,
    Color backgroundColor,
    Color dialogBackgroundColor,
    Color indicatorColor,
    Color hintColor,
    Color errorColor,
    Color toggleableActiveColor,
    String fontFamily,
    TextTheme textTheme,
    TextTheme primaryTextTheme,
    TextTheme accentTextTheme,
    InputDecorationTheme inputDecorationTheme,
    IconThemeData iconTheme,
    IconThemeData primaryIconTheme,
    IconThemeData accentIconTheme,
    SliderThemeData sliderTheme,
    TabBarTheme tabBarTheme,
    TooltipThemeData tooltipTheme,
    CardTheme cardTheme,
    ChipThemeData chipTheme,
    TargetPlatform platform,
    MaterialTapTargetSize materialTapTargetSize,
    bool applyElevationOverlayColor,
    PageTransitionsTheme pageTransitionsTheme,
    AppBarTheme appBarTheme,
    BottomAppBarTheme bottomAppBarTheme,
    ColorScheme colorScheme,
    DialogTheme dialogTheme,
    FloatingActionButtonThemeData floatingActionButtonTheme,
    NavigationRailThemeData navigationRailTheme,
    Typography typography,
    CupertinoThemeData cupertinoOverrideTheme,
    SnackBarThemeData snackBarTheme,
    BottomSheetThemeData bottomSheetTheme,
    PopupMenuThemeData popupMenuTheme,
    MaterialBannerThemeData bannerTheme,
    DividerThemeData dividerTheme,
    ButtonBarThemeData buttonBarTheme,
    BottomNavigationBarThemeData bottomNavigationBarTheme,
    TimePickerThemeData timePickerTheme,
    bool fixTextFieldOutlineLabel,
  }) =>
      ThemeData(
    brightness: brightness,
    visualDensity: visualDensity,
    primarySwatch: primarySwatch,
    primaryColor: primaryColor,
    primaryColorBrightness: primaryColorBrightness,
    primaryColorLight: primaryColorLight,
    primaryColorDark: primaryColorDark,
    accentColor: accentColor,
    accentColorBrightness: accentColorBrightness,
    canvasColor: canvasColor,
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    bottomAppBarColor: bottomAppBarColor,
    cardColor: cardColor,
    dividerColor: dividerColor,
    focusColor: focusColor,
    hoverColor: hoverColor,
    highlightColor: highlightColor,
    splashColor: splashColor,
    splashFactory: splashFactory,
    selectedRowColor: selectedRowColor,
    unselectedWidgetColor: unselectedWidgetColor,
    disabledColor: disabledColor,
    buttonColor: buttonColor,
    buttonTheme: buttonTheme,
    toggleButtonsTheme: toggleButtonsTheme,
    secondaryHeaderColor: secondaryHeaderColor,
    textSelectionColor: textSelectionColor,
    cursorColor: cursorColor,
    textSelectionHandleColor: textSelectionHandleColor,
    backgroundColor: backgroundColor,
    dialogBackgroundColor: dialogBackgroundColor,
    indicatorColor: indicatorColor,
    hintColor: hintColor,
    errorColor: errorColor,
    toggleableActiveColor: toggleableActiveColor,
    fontFamily: fontFamily,
    textTheme: textTheme,
    primaryTextTheme: primaryTextTheme,
    accentTextTheme: accentTextTheme,
    inputDecorationTheme: inputDecorationTheme,
    iconTheme: iconTheme,
    primaryIconTheme: primaryIconTheme,
    accentIconTheme: accentIconTheme,
    sliderTheme: sliderTheme,
    tabBarTheme: tabBarTheme,
    tooltipTheme: tooltipTheme,
    cardTheme: cardTheme,
    chipTheme: chipTheme,
    platform: platform,
    materialTapTargetSize: materialTapTargetSize,
    applyElevationOverlayColor: applyElevationOverlayColor,
    pageTransitionsTheme: pageTransitionsTheme,
    appBarTheme: appBarTheme,
    bottomAppBarTheme: bottomAppBarTheme,
    colorScheme: colorScheme,
    dialogTheme: dialogTheme,
    floatingActionButtonTheme: floatingActionButtonTheme,
    navigationRailTheme: navigationRailTheme,
    typography: typography,
    cupertinoOverrideTheme: cupertinoOverrideTheme,
    snackBarTheme: snackBarTheme,
    bottomSheetTheme: bottomSheetTheme,
    popupMenuTheme: popupMenuTheme,
    bannerTheme: bannerTheme,
    dividerTheme: dividerTheme,
    buttonBarTheme: buttonBarTheme,
    bottomNavigationBarTheme: bottomNavigationBarTheme,
    timePickerTheme: timePickerTheme,
    fixTextFieldOutlineLabel: fixTextFieldOutlineLabel,
  ),
  [
    // MX Modified begin
    "__mx_brightness",
    // MX Modified end
    "visualDensity",
    "primarySwatch",
    "primaryColor",
    "primaryColorBrightness",
    "primaryColorLight",
    "primaryColorDark",
    "accentColor",
    "accentColorBrightness",
    "canvasColor",
    "scaffoldBackgroundColor",
    "bottomAppBarColor",
    "cardColor",
    "dividerColor",
    "focusColor",
    "hoverColor",
    "highlightColor",
    "splashColor",
    "splashFactory",
    "selectedRowColor",
    "unselectedWidgetColor",
    "disabledColor",
    "buttonColor",
    "buttonTheme",
    "toggleButtonsTheme",
    "secondaryHeaderColor",
    "textSelectionColor",
    "cursorColor",
    "textSelectionHandleColor",
    "backgroundColor",
    "dialogBackgroundColor",
    "indicatorColor",
    "hintColor",
    "errorColor",
    "toggleableActiveColor",
    "fontFamily",
    "textTheme",
    "primaryTextTheme",
    "accentTextTheme",
    "inputDecorationTheme",
    "iconTheme",
    "primaryIconTheme",
    "accentIconTheme",
    "sliderTheme",
    "tabBarTheme",
    "tooltipTheme",
    "cardTheme",
    "chipTheme",
    "platform",
    "materialTapTargetSize",
    "applyElevationOverlayColor",
    "pageTransitionsTheme",
    "appBarTheme",
    "bottomAppBarTheme",
    "colorScheme",
    "dialogTheme",
    "floatingActionButtonTheme",
    "navigationRailTheme",
    "typography",
    "cupertinoOverrideTheme",
    "snackBarTheme",
    "bottomSheetTheme",
    "popupMenuTheme",
    "bannerTheme",
    "dividerTheme",
    "buttonBarTheme",
    "bottomNavigationBarTheme",
    "timePickerTheme",
    "fixTextFieldOutlineLabel",
  ],
);
var _themeDataFrom = MXFunctionInvoke(
  "ThemeData.from",
  ({
    ColorScheme colorScheme,
    TextTheme textTheme,
  }) =>
      ThemeData.from(
    colorScheme: colorScheme,
    textTheme: textTheme,
  ),
  [
    "colorScheme",
    "textTheme",
  ],
);
var _themeDataLight = MXFunctionInvoke(
  "ThemeData.light",
  () => ThemeData.light(),
  [],
);
var _themeDataDark = MXFunctionInvoke(
  "ThemeData.dark",
  () => ThemeData.dark(),
  [],
);
var _themeDataFallback = MXFunctionInvoke(
  "ThemeData.fallback",
  () => ThemeData.fallback(),
  [],
);
var _themeDataRaw = MXFunctionInvoke(
  "ThemeData.raw",
  ({
    VisualDensity visualDensity,
    Color primaryColor,
    Brightness primaryColorBrightness,
    Color primaryColorLight,
    Color primaryColorDark,
    Color canvasColor,
    Color accentColor,
    Brightness accentColorBrightness,
    Color scaffoldBackgroundColor,
    Color bottomAppBarColor,
    Color cardColor,
    Color dividerColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    InteractiveInkFeatureFactory splashFactory,
    Color selectedRowColor,
    Color unselectedWidgetColor,
    Color disabledColor,
    ButtonThemeData buttonTheme,
    Color buttonColor,
    ToggleButtonsThemeData toggleButtonsTheme,
    Color secondaryHeaderColor,
    Color textSelectionColor,
    Color cursorColor,
    Color textSelectionHandleColor,
    Color backgroundColor,
    Color dialogBackgroundColor,
    Color indicatorColor,
    Color hintColor,
    Color errorColor,
    Color toggleableActiveColor,
    TextTheme textTheme,
    TextTheme primaryTextTheme,
    TextTheme accentTextTheme,
    InputDecorationTheme inputDecorationTheme,
    IconThemeData iconTheme,
    IconThemeData primaryIconTheme,
    IconThemeData accentIconTheme,
    SliderThemeData sliderTheme,
    TabBarTheme tabBarTheme,
    TooltipThemeData tooltipTheme,
    CardTheme cardTheme,
    ChipThemeData chipTheme,
    TargetPlatform platform,
    MaterialTapTargetSize materialTapTargetSize,
    bool applyElevationOverlayColor,
    PageTransitionsTheme pageTransitionsTheme,
    AppBarTheme appBarTheme,
    BottomAppBarTheme bottomAppBarTheme,
    ColorScheme colorScheme,
    DialogTheme dialogTheme,
    FloatingActionButtonThemeData floatingActionButtonTheme,
    NavigationRailThemeData navigationRailTheme,
    Typography typography,
    CupertinoThemeData cupertinoOverrideTheme,
    SnackBarThemeData snackBarTheme,
    BottomSheetThemeData bottomSheetTheme,
    PopupMenuThemeData popupMenuTheme,
    MaterialBannerThemeData bannerTheme,
    DividerThemeData dividerTheme,
    ButtonBarThemeData buttonBarTheme,
    BottomNavigationBarThemeData bottomNavigationBarTheme,
    TimePickerThemeData timePickerTheme,
    bool fixTextFieldOutlineLabel,
  }) =>
      ThemeData.raw(
    visualDensity: visualDensity,
    primaryColor: primaryColor,
    primaryColorBrightness: primaryColorBrightness,
    primaryColorLight: primaryColorLight,
    primaryColorDark: primaryColorDark,
    canvasColor: canvasColor,
    accentColor: accentColor,
    accentColorBrightness: accentColorBrightness,
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    bottomAppBarColor: bottomAppBarColor,
    cardColor: cardColor,
    dividerColor: dividerColor,
    focusColor: focusColor,
    hoverColor: hoverColor,
    highlightColor: highlightColor,
    splashColor: splashColor,
    splashFactory: splashFactory,
    selectedRowColor: selectedRowColor,
    unselectedWidgetColor: unselectedWidgetColor,
    disabledColor: disabledColor,
    buttonTheme: buttonTheme,
    buttonColor: buttonColor,
    toggleButtonsTheme: toggleButtonsTheme,
    secondaryHeaderColor: secondaryHeaderColor,
    textSelectionColor: textSelectionColor,
    cursorColor: cursorColor,
    textSelectionHandleColor: textSelectionHandleColor,
    backgroundColor: backgroundColor,
    dialogBackgroundColor: dialogBackgroundColor,
    indicatorColor: indicatorColor,
    hintColor: hintColor,
    errorColor: errorColor,
    toggleableActiveColor: toggleableActiveColor,
    textTheme: textTheme,
    primaryTextTheme: primaryTextTheme,
    accentTextTheme: accentTextTheme,
    inputDecorationTheme: inputDecorationTheme,
    iconTheme: iconTheme,
    primaryIconTheme: primaryIconTheme,
    accentIconTheme: accentIconTheme,
    sliderTheme: sliderTheme,
    tabBarTheme: tabBarTheme,
    tooltipTheme: tooltipTheme,
    cardTheme: cardTheme,
    chipTheme: chipTheme,
    platform: platform,
    materialTapTargetSize: materialTapTargetSize,
    applyElevationOverlayColor: applyElevationOverlayColor,
    pageTransitionsTheme: pageTransitionsTheme,
    appBarTheme: appBarTheme,
    bottomAppBarTheme: bottomAppBarTheme,
    colorScheme: colorScheme,
    dialogTheme: dialogTheme,
    floatingActionButtonTheme: floatingActionButtonTheme,
    navigationRailTheme: navigationRailTheme,
    typography: typography,
    cupertinoOverrideTheme: cupertinoOverrideTheme,
    snackBarTheme: snackBarTheme,
    bottomSheetTheme: bottomSheetTheme,
    popupMenuTheme: popupMenuTheme,
    bannerTheme: bannerTheme,
    dividerTheme: dividerTheme,
    buttonBarTheme: buttonBarTheme,
    bottomNavigationBarTheme: bottomNavigationBarTheme,
    timePickerTheme: timePickerTheme,
    fixTextFieldOutlineLabel: fixTextFieldOutlineLabel,
  ),
  [
    "visualDensity",
    "primaryColor",
    "primaryColorBrightness",
    "primaryColorLight",
    "primaryColorDark",
    "canvasColor",
    "accentColor",
    "accentColorBrightness",
    "scaffoldBackgroundColor",
    "bottomAppBarColor",
    "cardColor",
    "dividerColor",
    "focusColor",
    "hoverColor",
    "highlightColor",
    "splashColor",
    "splashFactory",
    "selectedRowColor",
    "unselectedWidgetColor",
    "disabledColor",
    "buttonTheme",
    "buttonColor",
    "toggleButtonsTheme",
    "secondaryHeaderColor",
    "textSelectionColor",
    "cursorColor",
    "textSelectionHandleColor",
    "backgroundColor",
    "dialogBackgroundColor",
    "indicatorColor",
    "hintColor",
    "errorColor",
    "toggleableActiveColor",
    "textTheme",
    "primaryTextTheme",
    "accentTextTheme",
    "inputDecorationTheme",
    "iconTheme",
    "primaryIconTheme",
    "accentIconTheme",
    "sliderTheme",
    "tabBarTheme",
    "tooltipTheme",
    "cardTheme",
    "chipTheme",
    "platform",
    "materialTapTargetSize",
    "applyElevationOverlayColor",
    "pageTransitionsTheme",
    "appBarTheme",
    "bottomAppBarTheme",
    "colorScheme",
    "dialogTheme",
    "floatingActionButtonTheme",
    "navigationRailTheme",
    "typography",
    "cupertinoOverrideTheme",
    "snackBarTheme",
    "bottomSheetTheme",
    "popupMenuTheme",
    "bannerTheme",
    "dividerTheme",
    "buttonBarTheme",
    "bottomNavigationBarTheme",
    "timePickerTheme",
    "fixTextFieldOutlineLabel",
  ],
);
var _materialBasedCupertinoThemeData = MXFunctionInvoke(
  "MaterialBasedCupertinoThemeData",
  ({
    ThemeData materialTheme,
  }) =>
      MaterialBasedCupertinoThemeData(
    materialTheme: materialTheme,
  ),
  [
    "materialTheme",
  ],
);
var _visualDensity = MXFunctionInvoke(
  "VisualDensity",
  ({
    dynamic horizontal = 0.0,
    dynamic vertical = 0.0,
  }) =>
      VisualDensity(
    horizontal: horizontal?.toDouble(),
    vertical: vertical?.toDouble(),
  ),
  [
    "horizontal",
    "vertical",
  ],
);
var _visualDensityMinimumDensity = MXFunctionInvoke("VisualDensity.minimumDensity", () => VisualDensity.minimumDensity);
var _visualDensityMaximumDensity = MXFunctionInvoke("VisualDensity.maximumDensity", () => VisualDensity.maximumDensity);
var _visualDensityStandard = MXFunctionInvoke("VisualDensity.standard", () => VisualDensity.standard);
var _visualDensityComfortable = MXFunctionInvoke("VisualDensity.comfortable", () => VisualDensity.comfortable);
var _visualDensityCompact = MXFunctionInvoke("VisualDensity.compact", () => VisualDensity.compact);

class MXMaterialTapTargetSize {
  static MaterialTapTargetSize parse(String name, int index) {
    switch (name) {
      case 'MaterialTapTargetSize.padded':
        return MaterialTapTargetSize.padded;
      case 'MaterialTapTargetSize.shrinkWrap':
        return MaterialTapTargetSize.shrinkWrap;
    }
    return null;
  }
}

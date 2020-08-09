//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
import 'package:flutter/src/material/toggle_buttons_theme.dart';
import 'package:flutter/src/material/tooltip_theme.dart';
import 'package:flutter/src/material/typography.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerThemeDataSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_materialTapTargetSize.funName] = _materialTapTargetSize;
  m[_themeData.funName] = _themeData;
  m[_themeData_from.funName] = _themeData_from;
  m[_themeData_light.funName] = _themeData_light;
  m[_themeData_dark.funName] = _themeData_dark;
  m[_themeData_fallback.funName] = _themeData_fallback;
  m[_themeData_raw.funName] = _themeData_raw;
  m[_materialBasedCupertinoThemeData.funName] = _materialBasedCupertinoThemeData;
  m[_visualDensity.funName] = _visualDensity;
  return m;
}
var _materialTapTargetSize = MXFunctionInvoke(
    "MaterialTapTargetSize",
    ({String name, int index}) => MXMaterialTapTargetSize.parse(name, index),
  );
var _themeData = MXFunctionInvoke(
    "ThemeData",
    (
      {
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
      }
    ) =>
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
    ),
);
var _themeData_from = MXFunctionInvoke(
  "ThemeData.from",
    (
      {
      ColorScheme colorScheme,
      TextTheme textTheme,
      }
    ) =>
      ThemeData.from(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
);
var _themeData_light = MXFunctionInvoke(
  "ThemeData.light",
    (
    ) =>
      ThemeData.light(
    ),
);
var _themeData_dark = MXFunctionInvoke(
  "ThemeData.dark",
    (
    ) =>
      ThemeData.dark(
    ),
);
var _themeData_fallback = MXFunctionInvoke(
  "ThemeData.fallback",
    (
    ) =>
      ThemeData.fallback(
    ),
);
var _themeData_raw = MXFunctionInvoke(
  "ThemeData.raw",
    (
      {
      Brightness brightness,
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
      }
    ) =>
      ThemeData.raw(
      brightness: brightness,
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
    ),
);
var _materialBasedCupertinoThemeData = MXFunctionInvoke(
    "MaterialBasedCupertinoThemeData",
    (
      {
      ThemeData materialTheme,
      }
    ) =>
      MaterialBasedCupertinoThemeData(
      materialTheme: materialTheme,
    ),
);
var _visualDensity = MXFunctionInvoke(
    "VisualDensity",
    (
      {
      dynamic horizontal = 0.0,
      dynamic vertical = 0.0,
      }
    ) =>
      VisualDensity(
      horizontal: horizontal?.toDouble(),
      vertical: vertical?.toDouble(),
    ),
);
class MXMaterialTapTargetSize {
  static MaterialTapTargetSize parse(String name, int index) {
    switch(name) {
      case 'MaterialTapTargetSize.padded': 
       return MaterialTapTargetSize.padded;
      case 'MaterialTapTargetSize.shrinkWrap': 
       return MaterialTapTargetSize.shrinkWrap;
    }
    return null;
  }
}

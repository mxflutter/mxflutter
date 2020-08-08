//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/app.dart';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/arc.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/floating_action_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/page.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAppSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_themeMode.funName] = _themeMode;
  m[_materialApp.funName] = _materialApp;
  return m;
}
var _themeMode = MXFunctionInvoke(
    "ThemeMode",
    ({Map args}) => MXThemeMode.parse(args),
  );
var _materialApp = MXFunctionInvoke(
    "MaterialApp",
    (
      {
      Key key,
      GlobalKey<NavigatorState> navigatorKey,
      Widget home,
      Map<String, Widget Function(BuildContext)> routes,
      String initialRoute,
      dynamic onGenerateRoute,
      dynamic onGenerateInitialRoutes,
      dynamic onUnknownRoute,
      List<NavigatorObserver> navigatorObservers,
      dynamic builder,
      String title = '',
      dynamic onGenerateTitle,
      ui.Color color,
      ThemeData theme,
      ThemeData darkTheme,
      ThemeMode themeMode = ThemeMode.system,
      ui.Locale locale,
      Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates,
      dynamic localeListResolutionCallback,
      dynamic localeResolutionCallback,
      Iterable<ui.Locale> supportedLocales,
      bool debugShowMaterialGrid = false,
      bool showPerformanceOverlay = false,
      bool checkerboardRasterCacheImages = false,
      bool checkerboardOffscreenLayers = false,
      bool showSemanticsDebugger = false,
      bool debugShowCheckedModeBanner = true,
      Map<LogicalKeySet, Intent> shortcuts,
      Map<LocalKey, Action Function()> actions,
      }
    ) =>
      MaterialApp(
      key: key,
      navigatorKey: navigatorKey,
      home: home,
      routes: routes,
      initialRoute: initialRoute,
      onGenerateRoute: null,
      onGenerateInitialRoutes: null,
      onUnknownRoute: null,
      navigatorObservers: navigatorObservers,
      builder: null,
      title: title,
      onGenerateTitle: null,
      color: color,
      theme: theme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      locale: locale,
      localizationsDelegates: localizationsDelegates,
      localeListResolutionCallback: null,
      localeResolutionCallback: null,
      supportedLocales: supportedLocales,
      debugShowMaterialGrid: debugShowMaterialGrid,
      showPerformanceOverlay: showPerformanceOverlay,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
      showSemanticsDebugger: showSemanticsDebugger,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      shortcuts: shortcuts,
      actions: actions,
    ),
);
class MXThemeMode {
  static Map str2VMap = {
    'ThemeMode.system': ThemeMode.system,
    'ThemeMode.light': ThemeMode.light,
    'ThemeMode.dark': ThemeMode.dark,
  };
  static ThemeMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

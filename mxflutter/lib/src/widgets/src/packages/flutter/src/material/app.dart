//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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

// MX Modified begin
import 'package:mxflutter/mxflutter.dart';
import 'package:mxflutter/src/mx_build_owner.dart';
import 'dart:convert';
// MX Modified end

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAppSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_themeMode.funName] = _themeMode;
  m[_materialApp.funName] = _materialApp;
  return m;
}

var _themeMode =
    MXFunctionInvoke("ThemeMode", ({String name, int index}) => MXThemeMode.parse(name, index), ["name", "index"]);
var _materialApp = MXFunctionInvoke(
  "MaterialApp",
  ({
    Key key,
    GlobalKey<NavigatorState> navigatorKey,
    Widget home,
    dynamic routes = const <String, Widget Function(BuildContext)>{},
    String initialRoute,
    dynamic onGenerateRoute,
    dynamic onGenerateInitialRoutes,
    dynamic onUnknownRoute,
    dynamic navigatorObservers = const <NavigatorObserver>[],
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
    Iterable<ui.Locale> supportedLocales = const <Locale>[Locale('en', 'US')],
    bool debugShowMaterialGrid = false,
    bool showPerformanceOverlay = false,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
    bool showSemanticsDebugger = false,
    bool debugShowCheckedModeBanner = true,
    dynamic shortcuts,
    dynamic actions,
  }) =>
      MaterialApp(
    key: key,
    navigatorKey: navigatorKey,
    home: home,
    routes: toMapT<String, Widget Function(BuildContext)>(routes),
    initialRoute: initialRoute,
    // MX Modified begin
    onGenerateRoute: createOnGenerateRouteClosure<Route, RouteSettings>(_materialApp.buildOwner, onGenerateRoute),
    // MX Modified end
    onGenerateInitialRoutes: null,
    onUnknownRoute: null,
    navigatorObservers: toListT<NavigatorObserver>(navigatorObservers),
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
    shortcuts: toMapT<LogicalKeySet, Intent>(shortcuts),
    actions: toMapT<Type, Action<Intent>>(actions),
  ),
  [
    "key",
    "navigatorKey",
    "home",
    "routes",
    "initialRoute",
    "onGenerateRoute",
    "onGenerateInitialRoutes",
    "onUnknownRoute",
    "navigatorObservers",
    "builder",
    "title",
    "onGenerateTitle",
    "color",
    "theme",
    "darkTheme",
    "themeMode",
    "locale",
    "localizationsDelegates",
    "localeListResolutionCallback",
    "localeResolutionCallback",
    "supportedLocales",
    "debugShowMaterialGrid",
    "showPerformanceOverlay",
    "checkerboardRasterCacheImages",
    "checkerboardOffscreenLayers",
    "showSemanticsDebugger",
    "debugShowCheckedModeBanner",
    "shortcuts",
    "actions",
  ],
);

class MXThemeMode {
  static ThemeMode parse(String name, int index) {
    switch (name) {
      case 'ThemeMode.system':
        return ThemeMode.system;
      case 'ThemeMode.light':
        return ThemeMode.light;
      case 'ThemeMode.dark':
        return ThemeMode.dark;
    }
    return null;
  }
}

// MX Modified begin
GenericFunctionGenericCallback<Route, RouteSettings> createOnGenerateRouteClosure<R, T>(
    MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  GenericFunctionGenericCallback<Route, RouteSettings> cb = (RouteSettings b) {
    Map encodeParms = {"name": b.name, "mxArguments": b.arguments != null ? json.encode(b.arguments) : ""};
    dynamic result = bo.syncEventCallback(eventCallbackID, args: [encodeParms]);
    return result;
  };

  return cb;
}
// MX Modified end

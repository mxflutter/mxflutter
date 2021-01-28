//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/app.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/button.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/icons.dart';
import 'package:flutter/src/cupertino/interface_level.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:flutter/src/cupertino/route.dart';
import 'package:flutter/src/cupertino/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAppSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoApp.funName] = _cupertinoApp;
  return m;
}

var _cupertinoApp = MXFunctionInvoke(
  "CupertinoApp",
  ({
    Key key,
    GlobalKey<NavigatorState> navigatorKey,
    Widget home,
    CupertinoThemeData theme,
    dynamic routes = const <String, Widget Function(BuildContext)>{},
    String initialRoute,
    dynamic onGenerateRoute,
    dynamic onGenerateInitialRoutes,
    dynamic onUnknownRoute,
    dynamic navigatorObservers = const <NavigatorObserver>[],
    dynamic builder,
    String title = '',
    dynamic onGenerateTitle,
    Color color,
    Locale locale,
    Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates,
    dynamic localeListResolutionCallback,
    dynamic localeResolutionCallback,
    Iterable<Locale> supportedLocales = const <Locale>[Locale('en', 'US')],
    bool showPerformanceOverlay = false,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
    bool showSemanticsDebugger = false,
    bool debugShowCheckedModeBanner = true,
    dynamic shortcuts,
    dynamic actions,
  }) =>
      CupertinoApp(
    key: key,
    navigatorKey: navigatorKey,
    home: home,
    theme: theme,
    routes: toMapT<String, Widget Function(BuildContext)>(routes),
    initialRoute: initialRoute,
    onGenerateRoute: null,
    onGenerateInitialRoutes: null,
    onUnknownRoute: null,
    navigatorObservers: toListT<NavigatorObserver>(navigatorObservers),
    builder: null,
    title: title,
    onGenerateTitle: null,
    color: color,
    locale: locale,
    localizationsDelegates: localizationsDelegates,
    localeListResolutionCallback: null,
    localeResolutionCallback: null,
    supportedLocales: supportedLocales,
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
    "theme",
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
    "locale",
    "localizationsDelegates",
    "localeListResolutionCallback",
    "localeResolutionCallback",
    "supportedLocales",
    "showPerformanceOverlay",
    "checkerboardRasterCacheImages",
    "checkerboardOffscreenLayers",
    "showSemanticsDebugger",
    "debugShowCheckedModeBanner",
    "shortcuts",
    "actions",
  ],
);

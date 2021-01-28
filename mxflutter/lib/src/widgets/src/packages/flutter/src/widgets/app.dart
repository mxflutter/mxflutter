//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/app.dart';
import 'dart:async';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/banner.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/pages.dart';
import 'package:flutter/src/widgets/performance_overlay.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/semantics_debugger.dart';
import 'package:flutter/src/widgets/shortcuts.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:flutter/src/widgets/title.dart';
import 'package:flutter/src/widgets/widget_inspector.dart';
import 'dart:ui';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAppSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_widgetsApp.funName] = _widgetsApp;
  return m;
}

var _widgetsApp = MXFunctionInvoke(
  "WidgetsApp",
  ({
    Key key,
    GlobalKey<NavigatorState> navigatorKey,
    dynamic onGenerateRoute,
    dynamic onGenerateInitialRoutes,
    dynamic onUnknownRoute,
    dynamic navigatorObservers = const <NavigatorObserver>[],
    String initialRoute,
    dynamic pageRouteBuilder,
    Widget home,
    dynamic routes = const <String, Widget Function(BuildContext)>{},
    dynamic builder,
    String title = '',
    dynamic onGenerateTitle,
    TextStyle textStyle,
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
    bool debugShowWidgetInspector = false,
    bool debugShowCheckedModeBanner = true,
    dynamic inspectorSelectButtonBuilder,
    dynamic shortcuts,
    dynamic actions,
  }) =>
      WidgetsApp(
    key: key,
    navigatorKey: navigatorKey,
    onGenerateRoute: null,
    onGenerateInitialRoutes: null,
    onUnknownRoute: null,
    navigatorObservers: toListT<NavigatorObserver>(navigatorObservers),
    initialRoute: initialRoute,
    pageRouteBuilder: null,
    home: home,
    routes: toMapT<String, Widget Function(BuildContext)>(routes),
    builder: null,
    title: title,
    onGenerateTitle: null,
    textStyle: textStyle,
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
    debugShowWidgetInspector: debugShowWidgetInspector,
    debugShowCheckedModeBanner: debugShowCheckedModeBanner,
    inspectorSelectButtonBuilder: null,
    shortcuts: toMapT<LogicalKeySet, Intent>(shortcuts),
    actions: toMapT<Type, Action<Intent>>(actions),
  ),
  [
    "key",
    "navigatorKey",
    "onGenerateRoute",
    "onGenerateInitialRoutes",
    "onUnknownRoute",
    "navigatorObservers",
    "initialRoute",
    "pageRouteBuilder",
    "home",
    "routes",
    "builder",
    "title",
    "onGenerateTitle",
    "textStyle",
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
    "debugShowWidgetInspector",
    "debugShowCheckedModeBanner",
    "inspectorSelectButtonBuilder",
    "shortcuts",
    "actions",
  ],
);

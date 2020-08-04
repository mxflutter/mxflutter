//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[cupertinoApp.funName] = cupertinoApp;
  return m;
}
var cupertinoApp = MXFunctionInvoke(
    "CupertinoApp",
    ({
      Key key,
      GlobalKey<NavigatorState> navigatorKey,
      Widget home,
      CupertinoThemeData theme,
      Map<String, Widget Function(BuildContext)> routes,
      String initialRoute,
      dynamic onGenerateRoute,
      dynamic onGenerateInitialRoutes,
      dynamic onUnknownRoute,
      List<NavigatorObserver> navigatorObservers,
      dynamic builder,
      String title = '',
      dynamic onGenerateTitle,
      Color color,
      Locale locale,
      Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates,
      dynamic localeListResolutionCallback,
      dynamic localeResolutionCallback,
      Iterable<Locale> supportedLocales,
      bool showPerformanceOverlay = false,
      bool checkerboardRasterCacheImages = false,
      bool checkerboardOffscreenLayers = false,
      bool showSemanticsDebugger = false,
      bool debugShowCheckedModeBanner = true,
      Map<LogicalKeySet, Intent> shortcuts,
      Map<LocalKey, Action Function()> actions,
    }) =>
      CupertinoApp(
      key: key,
      navigatorKey: navigatorKey,
      home: home,
      theme: theme,
      routes: routes,
      initialRoute: initialRoute,
      onGenerateRoute: createGenericValueGenericClosure<Route<dynamic>, RouteSettings>(cupertinoApp.buildOwner, onGenerateRoute),
      onGenerateInitialRoutes: createGenericValueGenericClosure<List<Route<dynamic>>, String>(cupertinoApp.buildOwner, onGenerateInitialRoutes),
      onUnknownRoute: createGenericValueGenericClosure<Route<dynamic>, RouteSettings>(cupertinoApp.buildOwner, onUnknownRoute),
      navigatorObservers: navigatorObservers,
      builder: builder,
      title: title,
      onGenerateTitle: createGenericValueGenericClosure<String, BuildContext>(cupertinoApp.buildOwner, onGenerateTitle),
      color: color,
      locale: locale,
      localizationsDelegates: localizationsDelegates,
      localeListResolutionCallback: localeListResolutionCallback,
      localeResolutionCallback: localeResolutionCallback,
      supportedLocales: supportedLocales,
      showPerformanceOverlay: showPerformanceOverlay,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
      showSemanticsDebugger: showSemanticsDebugger,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      shortcuts: shortcuts,
      actions: actions,
    ),
);

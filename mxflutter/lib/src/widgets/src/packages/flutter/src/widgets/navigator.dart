//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/route_notification_messages.dart';
import 'package:flutter/src/widgets/routes.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerNavigatorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_routePopDisposition.funName] = _routePopDisposition;
  m[_routeSettings.funName] = _routeSettings;
  m[_customBuilderPage.funName] = _customBuilderPage;
  m[_navigatorObserver.funName] = _navigatorObserver;
  m[_defaultTransitionDelegate.funName] = _defaultTransitionDelegate;
  m[_navigator.funName] = _navigator;
  m[_navigator_replace.funName] = _navigator_replace;
  m[_navigator_replaceRouteBelow.funName] = _navigator_replaceRouteBelow;
  m[_navigator_pop.funName] = _navigator_pop;
  m[_navigator_popUntil.funName] = _navigator_popUntil;
  m[_navigator_removeRoute.funName] = _navigator_removeRoute;
  m[_navigator_removeRouteBelow.funName] = _navigator_removeRouteBelow;
  m[_navigatorState.funName] = _navigatorState;
  return m;
}
var _routePopDisposition = MXFunctionInvoke(
    "RoutePopDisposition",
    ({String name, int index}) => MXRoutePopDisposition.parse(name, index),
  );
var _routeSettings = MXFunctionInvoke(
    "RouteSettings",
    (
      {
      String name,
      Object arguments,
      }
    ) =>
      RouteSettings(
      name: name,
      arguments: arguments,
    ),
);
var _customBuilderPage = MXFunctionInvoke(
    "CustomBuilderPage",
    (
      {
      LocalKey key,
      dynamic routeBuilder,
      String name,
      Object arguments,
      }
    ) =>
      CustomBuilderPage(
      key: key,
      routeBuilder: null,
      name: name,
      arguments: arguments,
    ),
);
var _navigatorObserver = MXFunctionInvoke(
    "NavigatorObserver",
    (
    ) =>
      NavigatorObserver(
    ),
);
var _defaultTransitionDelegate = MXFunctionInvoke(
    "DefaultTransitionDelegate",
    (
    ) =>
      DefaultTransitionDelegate(
    ),
);
var _navigator = MXFunctionInvoke(
    "Navigator",
    (
      {
      Key key,
      dynamic pages = const <Page<dynamic>>[],
      dynamic onPopPage,
      String initialRoute,
      dynamic onGenerateInitialRoutes = Navigator.defaultGenerateInitialRoutes,
      dynamic onGenerateRoute,
      dynamic onUnknownRoute,
      TransitionDelegate<dynamic> transitionDelegate = const DefaultTransitionDelegate(),
      dynamic observers = const <NavigatorObserver>[],
      }
    ) =>
      Navigator(
      key: key,
      pages: toListT<Page<dynamic>>(pages),
      onPopPage: null,
      initialRoute: initialRoute,
      onGenerateInitialRoutes: null,
      onGenerateRoute: null,
      onUnknownRoute: null,
      transitionDelegate: transitionDelegate,
      observers: toListT<NavigatorObserver>(observers),
    ),
);
var _navigator_replace = MXFunctionInvoke(
  "Navigator.replace",
    (
      {
      BuildContext context,
      Route<dynamic> oldRoute,
      Route<Object> newRoute,
      }
    ) =>
      Navigator.replace(
      context,
      oldRoute: oldRoute,
      newRoute: newRoute,
    ),
);
var _navigator_replaceRouteBelow = MXFunctionInvoke(
  "Navigator.replaceRouteBelow",
    (
      {
      BuildContext context,
      Route<dynamic> anchorRoute,
      Route<Object> newRoute,
      }
    ) =>
      Navigator.replaceRouteBelow(
      context,
      anchorRoute: anchorRoute,
      newRoute: newRoute,
    ),
);
var _navigator_pop = MXFunctionInvoke(
  "Navigator.pop",
    (
      {
      BuildContext context,
      Object result,
      }
    ) =>
      Navigator.pop(
      context,
      result,
    ),
);
var _navigator_popUntil = MXFunctionInvoke(
  "Navigator.popUntil",
    (
      {
      BuildContext context,
      dynamic predicate,
      }
    ) =>
      Navigator.popUntil(
      context,
      null,
    ),
);
var _navigator_removeRoute = MXFunctionInvoke(
  "Navigator.removeRoute",
    (
      {
      BuildContext context,
      Route<dynamic> route,
      }
    ) =>
      Navigator.removeRoute(
      context,
      route,
    ),
);
var _navigator_removeRouteBelow = MXFunctionInvoke(
  "Navigator.removeRouteBelow",
    (
      {
      BuildContext context,
      Route<dynamic> anchorRoute,
      }
    ) =>
      Navigator.removeRouteBelow(
      context,
      anchorRoute,
    ),
);
var _navigatorState = MXFunctionInvoke(
    "NavigatorState",
    (
    ) =>
      NavigatorState(
    ),
);
class MXRoutePopDisposition {
  static RoutePopDisposition parse(String name, int index) {
    switch(name) {
      case 'RoutePopDisposition.pop': 
       return RoutePopDisposition.pop;
      case 'RoutePopDisposition.doNotPop': 
       return RoutePopDisposition.doNotPop;
      case 'RoutePopDisposition.bubble': 
       return RoutePopDisposition.bubble;
    }
    return null;
  }
}

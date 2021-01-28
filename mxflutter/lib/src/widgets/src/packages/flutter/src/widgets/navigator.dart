//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'dart:async';
import 'dart:collection';
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
import 'package:flutter/src/widgets/heroes.dart';
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
  m[_heroControllerScope.funName] = _heroControllerScope;
  m[_defaultTransitionDelegate.funName] = _defaultTransitionDelegate;
  m[_navigator.funName] = _navigator;
  m[_navigatorDefaultRouteName.funName] = _navigatorDefaultRouteName;
  m[_navigatorReplace.funName] = _navigatorReplace;
  m[_navigatorReplaceRouteBelow.funName] = _navigatorReplaceRouteBelow;
  m[_navigatorPop.funName] = _navigatorPop;
  m[_navigatorPopUntil.funName] = _navigatorPopUntil;
  m[_navigatorRemoveRoute.funName] = _navigatorRemoveRoute;
  m[_navigatorRemoveRouteBelow.funName] = _navigatorRemoveRouteBelow;
  m[_navigatorState.funName] = _navigatorState;
  return m;
}

var _routePopDisposition = MXFunctionInvoke(
    "RoutePopDisposition", ({String name, int index}) => MXRoutePopDisposition.parse(name, index), ["name", "index"]);
var _routeSettings = MXFunctionInvoke(
  "RouteSettings",
  ({
    String name,
    Object arguments,
  }) =>
      RouteSettings(
    name: name,
    arguments: arguments,
  ),
  [
    "name",
    "__mx_arguments",
  ],
);
var _customBuilderPage = MXFunctionInvoke(
  "CustomBuilderPage",
  ({
    LocalKey key,
    dynamic routeBuilder,
    String name,
    Object arguments,
  }) =>
      CustomBuilderPage(
    key: key,
    routeBuilder: null,
    name: name,
    arguments: arguments,
  ),
  [
    "key",
    "routeBuilder",
    "name",
    "__mx_arguments",
  ],
);
var _navigatorObserver = MXFunctionInvoke(
  "NavigatorObserver",
  () => NavigatorObserver(),
  [],
);
var _heroControllerScope = MXFunctionInvoke(
  "HeroControllerScope",
  ({
    Key key,
    HeroController controller,
    Widget child,
  }) =>
      HeroControllerScope(
    key: key,
    controller: controller,
    child: child,
  ),
  [
    "key",
    "controller",
    "child",
  ],
);
var _defaultTransitionDelegate = MXFunctionInvoke(
  "DefaultTransitionDelegate",
  () => DefaultTransitionDelegate(),
  [],
);
var _navigator = MXFunctionInvoke(
  "Navigator",
  ({
    Key key,
    dynamic pages = const <Page<dynamic>>[],
    dynamic onPopPage,
    String initialRoute,
    dynamic onGenerateInitialRoutes = Navigator.defaultGenerateInitialRoutes,
    dynamic onGenerateRoute,
    dynamic onUnknownRoute,
    TransitionDelegate<dynamic> transitionDelegate = const DefaultTransitionDelegate(),
    dynamic observers = const <NavigatorObserver>[],
  }) =>
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
  [
    "key",
    "pages",
    "onPopPage",
    "initialRoute",
    "onGenerateInitialRoutes",
    "onGenerateRoute",
    "onUnknownRoute",
    "transitionDelegate",
    "observers",
  ],
);
var _navigatorDefaultRouteName = MXFunctionInvoke("Navigator.defaultRouteName", () => Navigator.defaultRouteName);
var _navigatorReplace = MXFunctionInvoke(
  "Navigator.replace",
  ({
    BuildContext context,
    Route<dynamic> oldRoute,
    Route<Object> newRoute,
  }) =>
      Navigator.replace(
    context,
    oldRoute: oldRoute,
    newRoute: newRoute,
  ),
  [
    "context",
    "oldRoute",
    "newRoute",
  ],
);
var _navigatorReplaceRouteBelow = MXFunctionInvoke(
  "Navigator.replaceRouteBelow",
  ({
    BuildContext context,
    Route<dynamic> anchorRoute,
    Route<Object> newRoute,
  }) =>
      Navigator.replaceRouteBelow(
    context,
    anchorRoute: anchorRoute,
    newRoute: newRoute,
  ),
  [
    "context",
    "anchorRoute",
    "newRoute",
  ],
);
var _navigatorPop = MXFunctionInvoke(
  "Navigator.pop",
  ({
    BuildContext context,
    Object result,
  }) =>
      Navigator.pop(
    context,
    result,
  ),
  [
    "context",
    "result",
  ],
);
var _navigatorPopUntil = MXFunctionInvoke(
  "Navigator.popUntil",
  ({
    BuildContext context,
    dynamic predicate,
  }) =>
      Navigator.popUntil(
    context,
    null,
  ),
  [
    "context",
    "predicate",
  ],
);
var _navigatorRemoveRoute = MXFunctionInvoke(
  "Navigator.removeRoute",
  ({
    BuildContext context,
    Route<dynamic> route,
  }) =>
      Navigator.removeRoute(
    context,
    route,
  ),
  [
    "context",
    "route",
  ],
);
var _navigatorRemoveRouteBelow = MXFunctionInvoke(
  "Navigator.removeRouteBelow",
  ({
    BuildContext context,
    Route<dynamic> anchorRoute,
  }) =>
      Navigator.removeRouteBelow(
    context,
    anchorRoute,
  ),
  [
    "context",
    "anchorRoute",
  ],
);
var _navigatorState = MXFunctionInvoke(
  "NavigatorState",
  () => NavigatorState(),
  [],
);

class MXRoutePopDisposition {
  static RoutePopDisposition parse(String name, int index) {
    switch (name) {
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

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/tab_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/app.dart';
import 'package:flutter/src/cupertino/route.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTabViewSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoTabView.funName] = _cupertinoTabView;
  return m;
}

var _cupertinoTabView = MXFunctionInvoke(
  "CupertinoTabView",
  ({
    Key key,
    dynamic builder,
    GlobalKey<NavigatorState> navigatorKey,
    String defaultTitle,
    dynamic routes,
    dynamic onGenerateRoute,
    dynamic onUnknownRoute,
    dynamic navigatorObservers = const <NavigatorObserver>[],
  }) =>
      CupertinoTabView(
    key: key,
    builder: null,
    navigatorKey: navigatorKey,
    defaultTitle: defaultTitle,
    routes: toMapT<String, Widget Function(BuildContext)>(routes),
    onGenerateRoute: null,
    onUnknownRoute: null,
    navigatorObservers: toListT<NavigatorObserver>(navigatorObservers),
  ),
  [
    "key",
    "builder",
    "navigatorKey",
    "defaultTitle",
    "routes",
    "onGenerateRoute",
    "onUnknownRoute",
    "navigatorObservers",
  ],
);

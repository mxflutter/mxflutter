//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/tab_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/app.dart';
import 'package:flutter/src/cupertino/route.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTabViewSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[cupertinoTabView.funName] = cupertinoTabView;
  return m;
}
var cupertinoTabView = MXFunctionInvoke(
    "CupertinoTabView",
    ({
      Key key,
      dynamic builder,
      GlobalKey<NavigatorState> navigatorKey,
      String defaultTitle,
      Map<String, Widget Function(BuildContext)> routes,
      dynamic onGenerateRoute,
      dynamic onUnknownRoute,
      List<NavigatorObserver> navigatorObservers,
    }) =>
      CupertinoTabView(
      key: key,
      builder: createGenericValueGenericClosure<Widget, BuildContext>(cupertinoTabView.buildOwner, builder),
      navigatorKey: navigatorKey,
      defaultTitle: defaultTitle,
      routes: routes,
      onGenerateRoute: createGenericValueGenericClosure<Route<dynamic>, RouteSettings>(cupertinoTabView.buildOwner, onGenerateRoute),
      onUnknownRoute: createGenericValueGenericClosure<Route<dynamic>, RouteSettings>(cupertinoTabView.buildOwner, onUnknownRoute),
      navigatorObservers: navigatorObservers,
    ),
);

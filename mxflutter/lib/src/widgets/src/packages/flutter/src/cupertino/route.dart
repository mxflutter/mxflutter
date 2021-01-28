//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/route.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/interface_level.dart';
import 'package:flutter/src/cupertino/localizations.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRouteSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoPageRoute.funName] = _cupertinoPageRoute;
  m[_cupertinoPage.funName] = _cupertinoPage;
  m[_cupertinoPageTransition.funName] = _cupertinoPageTransition;
  m[_cupertinoFullscreenDialogTransition.funName] = _cupertinoFullscreenDialogTransition;
  return m;
}

var _cupertinoPageRoute = MXFunctionInvoke(
  "CupertinoPageRoute",
  ({
    dynamic builder,
    String title,
    RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) =>
      CupertinoPageRoute(
    builder: null,
    title: title,
    settings: settings,
    maintainState: maintainState,
    fullscreenDialog: fullscreenDialog,
  ),
  [
    "builder",
    "title",
    "settings",
    "maintainState",
    "fullscreenDialog",
  ],
);
var _cupertinoPage = MXFunctionInvoke(
  "CupertinoPage",
  ({
    dynamic builder,
    bool maintainState = true,
    String title,
    bool fullscreenDialog = false,
    LocalKey key,
    String name,
    Object arguments,
  }) =>
      CupertinoPage(
    builder: null,
    maintainState: maintainState,
    title: title,
    fullscreenDialog: fullscreenDialog,
    key: key,
    name: name,
    arguments: arguments,
  ),
  [
    "builder",
    "maintainState",
    "title",
    "fullscreenDialog",
    "key",
    "name",
    "__mx_arguments",
  ],
);
var _cupertinoPageTransition = MXFunctionInvoke(
  "CupertinoPageTransition",
  ({
    Key key,
    Animation<double> primaryRouteAnimation,
    Animation<double> secondaryRouteAnimation,
    Widget child,
    bool linearTransition,
  }) =>
      CupertinoPageTransition(
    key: key,
    primaryRouteAnimation: primaryRouteAnimation,
    secondaryRouteAnimation: secondaryRouteAnimation,
    child: child,
    linearTransition: linearTransition,
  ),
  [
    "key",
    "primaryRouteAnimation",
    "secondaryRouteAnimation",
    "child",
    "linearTransition",
  ],
);
var _cupertinoFullscreenDialogTransition = MXFunctionInvoke(
  "CupertinoFullscreenDialogTransition",
  ({
    Key key,
    Animation<double> primaryRouteAnimation,
    Animation<double> secondaryRouteAnimation,
    Widget child,
    bool linearTransition,
  }) =>
      CupertinoFullscreenDialogTransition(
    key: key,
    primaryRouteAnimation: primaryRouteAnimation,
    secondaryRouteAnimation: secondaryRouteAnimation,
    child: child,
    linearTransition: linearTransition,
  ),
  [
    "key",
    "primaryRouteAnimation",
    "secondaryRouteAnimation",
    "child",
    "linearTransition",
  ],
);

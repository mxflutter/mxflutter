//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/nav_bar.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/button.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/constants.dart';
import 'package:flutter/src/cupertino/icons.dart';
import 'package:flutter/src/cupertino/page_scaffold.dart';
import 'package:flutter/src/cupertino/route.dart';
import 'package:flutter/src/cupertino/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerNavBarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[cupertinoNavigationBar.funName] = cupertinoNavigationBar;
  m[cupertinoSliverNavigationBar.funName] = cupertinoSliverNavigationBar;
  m[cupertinoNavigationBarBackButton.funName] = cupertinoNavigationBarBackButton;
  m[cupertinoNavigationBarBackButton_assemble.funName] = cupertinoNavigationBarBackButton_assemble;
  return m;
}
var cupertinoNavigationBar = MXFunctionInvoke(
    "CupertinoNavigationBar",
    ({
      Key key,
      Widget leading,
      bool automaticallyImplyLeading = true,
      bool automaticallyImplyMiddle = true,
      String previousPageTitle,
      Widget middle,
      Widget trailing,
      Border border,
      Color backgroundColor,
      Brightness brightness,
      EdgeInsetsDirectional padding,
      Color actionsForegroundColor,
      bool transitionBetweenRoutes = true,
      Object heroTag,
    }) =>
      CupertinoNavigationBar(
      key: key,
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      automaticallyImplyMiddle: automaticallyImplyMiddle,
      previousPageTitle: previousPageTitle,
      middle: middle,
      trailing: trailing,
      border: border,
      backgroundColor: backgroundColor,
      brightness: brightness,
      padding: padding,
      actionsForegroundColor: actionsForegroundColor,
      transitionBetweenRoutes: transitionBetweenRoutes,
      heroTag: heroTag,
    ),
);
var cupertinoSliverNavigationBar = MXFunctionInvoke(
    "CupertinoSliverNavigationBar",
    ({
      Key key,
      Widget largeTitle,
      Widget leading,
      bool automaticallyImplyLeading = true,
      bool automaticallyImplyTitle = true,
      String previousPageTitle,
      Widget middle,
      Widget trailing,
      Border border,
      Color backgroundColor,
      Brightness brightness,
      EdgeInsetsDirectional padding,
      Color actionsForegroundColor,
      bool transitionBetweenRoutes = true,
      Object heroTag,
    }) =>
      CupertinoSliverNavigationBar(
      key: key,
      largeTitle: largeTitle,
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      automaticallyImplyTitle: automaticallyImplyTitle,
      previousPageTitle: previousPageTitle,
      middle: middle,
      trailing: trailing,
      border: border,
      backgroundColor: backgroundColor,
      brightness: brightness,
      padding: padding,
      actionsForegroundColor: actionsForegroundColor,
      transitionBetweenRoutes: transitionBetweenRoutes,
      heroTag: heroTag,
    ),
);
var cupertinoNavigationBarBackButton = MXFunctionInvoke(
    "CupertinoNavigationBarBackButton",
    ({
      Key key,
      Color color,
      String previousPageTitle,
      dynamic onPressed,
    }) =>
      CupertinoNavigationBarBackButton(
      key: key,
      color: color,
      previousPageTitle: previousPageTitle,
      onPressed: createVoidCallbackClosure(cupertinoNavigationBarBackButton.buildOwner, onPressed),
    ),
);
var cupertinoNavigationBarBackButton_assemble = MXFunctionInvoke(
  "cupertinoNavigationBarBackButton.assemble",
    ({
      Widget _backChevron,
      Widget _backLabel,
    }) =>
      CupertinoNavigationBarBackButton.assemble(
      _backChevron,
      _backLabel,
    ),
);

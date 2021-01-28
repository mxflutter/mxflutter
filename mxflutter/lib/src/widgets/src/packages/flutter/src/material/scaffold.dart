//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/material/bottom_sheet.dart';
import 'package:flutter/src/material/button_bar.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/curves.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/drawer.dart';
import 'package:flutter/src/material/flexible_space_bar.dart';
import 'package:flutter/src/material/floating_action_button.dart';
import 'package:flutter/src/material/floating_action_button_location.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/snack_bar.dart';
import 'package:flutter/src/material/snack_bar_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScaffoldSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scaffoldPrelayoutGeometry.funName] = _scaffoldPrelayoutGeometry;
  m[_scaffoldGeometry.funName] = _scaffoldGeometry;
  m[_scaffold.funName] = _scaffold;
  m[_scaffoldState.funName] = _scaffoldState;
  return m;
}

var _scaffoldPrelayoutGeometry = MXFunctionInvoke(
  "ScaffoldPrelayoutGeometry",
  ({
    Size bottomSheetSize,
    dynamic contentBottom,
    dynamic contentTop,
    Size floatingActionButtonSize,
    EdgeInsets minInsets,
    EdgeInsets minViewPadding,
    Size scaffoldSize,
    Size snackBarSize,
    TextDirection textDirection,
  }) =>
      ScaffoldPrelayoutGeometry(
    bottomSheetSize: bottomSheetSize,
    contentBottom: contentBottom?.toDouble(),
    contentTop: contentTop?.toDouble(),
    floatingActionButtonSize: floatingActionButtonSize,
    minInsets: minInsets,
    minViewPadding: minViewPadding,
    scaffoldSize: scaffoldSize,
    snackBarSize: snackBarSize,
    textDirection: textDirection,
  ),
  [
    "bottomSheetSize",
    "contentBottom",
    "contentTop",
    "floatingActionButtonSize",
    "minInsets",
    "minViewPadding",
    "scaffoldSize",
    "snackBarSize",
    "textDirection",
  ],
);
var _scaffoldGeometry = MXFunctionInvoke(
  "ScaffoldGeometry",
  ({
    dynamic bottomNavigationBarTop,
    Rect floatingActionButtonArea,
  }) =>
      ScaffoldGeometry(
    bottomNavigationBarTop: bottomNavigationBarTop?.toDouble(),
    floatingActionButtonArea: floatingActionButtonArea,
  ),
  [
    "bottomNavigationBarTop",
    "floatingActionButtonArea",
  ],
);
var _scaffold = MXFunctionInvoke(
  "Scaffold",
  ({
    Key key,
    PreferredSizeWidget appBar,
    Widget body,
    Widget floatingActionButton,
    FloatingActionButtonLocation floatingActionButtonLocation,
    FloatingActionButtonAnimator floatingActionButtonAnimator,
    dynamic persistentFooterButtons,
    Widget drawer,
    Widget endDrawer,
    Widget bottomNavigationBar,
    Widget bottomSheet,
    Color backgroundColor,
    bool resizeToAvoidBottomPadding,
    bool resizeToAvoidBottomInset,
    bool primary = true,
    DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start,
    bool extendBody = false,
    bool extendBodyBehindAppBar = false,
    Color drawerScrimColor,
    dynamic drawerEdgeDragWidth,
    bool drawerEnableOpenDragGesture = true,
    bool endDrawerEnableOpenDragGesture = true,
  }) =>
      Scaffold(
    key: key,
    appBar: appBar,
    body: body,
    floatingActionButton: floatingActionButton,
    floatingActionButtonLocation: floatingActionButtonLocation,
    floatingActionButtonAnimator: floatingActionButtonAnimator,
    persistentFooterButtons: toListT<Widget>(persistentFooterButtons),
    drawer: drawer,
    endDrawer: endDrawer,
    bottomNavigationBar: bottomNavigationBar,
    bottomSheet: bottomSheet,
    backgroundColor: backgroundColor,
    resizeToAvoidBottomPadding: resizeToAvoidBottomPadding,
    resizeToAvoidBottomInset: resizeToAvoidBottomInset,
    primary: primary,
    drawerDragStartBehavior: drawerDragStartBehavior,
    extendBody: extendBody,
    extendBodyBehindAppBar: extendBodyBehindAppBar,
    drawerScrimColor: drawerScrimColor,
    drawerEdgeDragWidth: drawerEdgeDragWidth?.toDouble(),
    drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
    endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
  ),
  [
    "key",
    "appBar",
    "body",
    "floatingActionButton",
    "floatingActionButtonLocation",
    "floatingActionButtonAnimator",
    "persistentFooterButtons",
    "drawer",
    "endDrawer",
    "bottomNavigationBar",
    "bottomSheet",
    "backgroundColor",
    "resizeToAvoidBottomPadding",
    "resizeToAvoidBottomInset",
    "primary",
    "drawerDragStartBehavior",
    "extendBody",
    "extendBodyBehindAppBar",
    "drawerScrimColor",
    "drawerEdgeDragWidth",
    "drawerEnableOpenDragGesture",
    "endDrawerEnableOpenDragGesture",
  ],
);
var _scaffoldState = MXFunctionInvoke(
  "ScaffoldState",
  () => ScaffoldState(),
  [],
);

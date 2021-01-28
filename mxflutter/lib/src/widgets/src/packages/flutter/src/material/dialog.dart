//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/dialog.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_bar.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/dialog_theme.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDialogSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dialog.funName] = _dialog;
  m[_alertDialog.funName] = _alertDialog;
  m[_simpleDialogOption.funName] = _simpleDialogOption;
  m[_simpleDialog.funName] = _simpleDialog;
  return m;
}

var _dialog = MXFunctionInvoke(
  "Dialog",
  ({
    Key key,
    Color backgroundColor,
    dynamic elevation,
    Duration insetAnimationDuration = const Duration(milliseconds: 100),
    Curve insetAnimationCurve = Curves.decelerate,
    EdgeInsets insetPadding = const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
    Clip clipBehavior = Clip.none,
    ShapeBorder shape,
    Widget child,
  }) =>
      Dialog(
    key: key,
    backgroundColor: backgroundColor,
    elevation: elevation?.toDouble(),
    insetAnimationDuration: insetAnimationDuration,
    insetAnimationCurve: insetAnimationCurve,
    insetPadding: insetPadding,
    clipBehavior: clipBehavior,
    shape: shape,
    child: child,
  ),
  [
    "key",
    "backgroundColor",
    "elevation",
    "insetAnimationDuration",
    "insetAnimationCurve",
    "insetPadding",
    "clipBehavior",
    "shape",
    "child",
  ],
);
var _alertDialog = MXFunctionInvoke(
  "AlertDialog",
  ({
    Key key,
    Widget title,
    EdgeInsetsGeometry titlePadding,
    TextStyle titleTextStyle,
    Widget content,
    EdgeInsetsGeometry contentPadding = const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
    TextStyle contentTextStyle,
    dynamic actions,
    EdgeInsetsGeometry actionsPadding = EdgeInsets.zero,
    VerticalDirection actionsOverflowDirection,
    dynamic actionsOverflowButtonSpacing,
    EdgeInsetsGeometry buttonPadding,
    Color backgroundColor,
    dynamic elevation,
    String semanticLabel,
    EdgeInsets insetPadding = const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
    Clip clipBehavior = Clip.none,
    ShapeBorder shape,
    bool scrollable = false,
  }) =>
      AlertDialog(
    key: key,
    title: title,
    titlePadding: titlePadding,
    titleTextStyle: titleTextStyle,
    content: content,
    contentPadding: contentPadding,
    contentTextStyle: contentTextStyle,
    actions: toListT<Widget>(actions),
    actionsPadding: actionsPadding,
    actionsOverflowDirection: actionsOverflowDirection,
    actionsOverflowButtonSpacing: actionsOverflowButtonSpacing?.toDouble(),
    buttonPadding: buttonPadding,
    backgroundColor: backgroundColor,
    elevation: elevation?.toDouble(),
    semanticLabel: semanticLabel,
    insetPadding: insetPadding,
    clipBehavior: clipBehavior,
    shape: shape,
    scrollable: scrollable,
  ),
  [
    "key",
    "title",
    "titlePadding",
    "titleTextStyle",
    "content",
    "contentPadding",
    "contentTextStyle",
    "actions",
    "actionsPadding",
    "actionsOverflowDirection",
    "actionsOverflowButtonSpacing",
    "buttonPadding",
    "backgroundColor",
    "elevation",
    "semanticLabel",
    "insetPadding",
    "clipBehavior",
    "shape",
    "scrollable",
  ],
);
var _simpleDialogOption = MXFunctionInvoke(
  "SimpleDialogOption",
  ({
    Key key,
    dynamic onPressed,
    EdgeInsets padding,
    Widget child,
  }) =>
      SimpleDialogOption(
    key: key,
    onPressed: createVoidCallbackClosure(_simpleDialogOption.buildOwner, onPressed),
    padding: padding,
    child: child,
  ),
  [
    "key",
    "onPressed",
    "padding",
    "child",
  ],
);
var _simpleDialog = MXFunctionInvoke(
  "SimpleDialog",
  ({
    Key key,
    Widget title,
    EdgeInsetsGeometry titlePadding = const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
    TextStyle titleTextStyle,
    dynamic children,
    EdgeInsetsGeometry contentPadding = const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
    Color backgroundColor,
    dynamic elevation,
    String semanticLabel,
    ShapeBorder shape,
  }) =>
      SimpleDialog(
    key: key,
    title: title,
    titlePadding: titlePadding,
    titleTextStyle: titleTextStyle,
    children: toListT<Widget>(children),
    contentPadding: contentPadding,
    backgroundColor: backgroundColor,
    elevation: elevation?.toDouble(),
    semanticLabel: semanticLabel,
    shape: shape,
  ),
  [
    "key",
    "title",
    "titlePadding",
    "titleTextStyle",
    "children",
    "contentPadding",
    "backgroundColor",
    "elevation",
    "semanticLabel",
    "shape",
  ],
);

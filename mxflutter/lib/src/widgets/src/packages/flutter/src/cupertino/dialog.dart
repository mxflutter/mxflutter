//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/dialog.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/interface_level.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:flutter/src/cupertino/scrollbar.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDialogSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoAlertDialog.funName] = _cupertinoAlertDialog;
  m[_cupertinoDialog.funName] = _cupertinoDialog;
  m[_cupertinoPopupSurface.funName] = _cupertinoPopupSurface;
  m[_cupertinoDialogAction.funName] = _cupertinoDialogAction;
  return m;
}

var _cupertinoAlertDialog = MXFunctionInvoke(
  "CupertinoAlertDialog",
  ({
    Key key,
    Widget title,
    Widget content,
    dynamic actions = const <Widget>[],
    ScrollController scrollController,
    ScrollController actionScrollController,
    Duration insetAnimationDuration = const Duration(milliseconds: 100),
    Curve insetAnimationCurve = Curves.decelerate,
  }) =>
      CupertinoAlertDialog(
    key: key,
    title: title,
    content: content,
    actions: toListT<Widget>(actions),
    scrollController: scrollController,
    actionScrollController: actionScrollController,
    insetAnimationDuration: insetAnimationDuration,
    insetAnimationCurve: insetAnimationCurve,
  ),
  [
    "key",
    "title",
    "content",
    "actions",
    "scrollController",
    "actionScrollController",
    "insetAnimationDuration",
    "insetAnimationCurve",
  ],
);
var _cupertinoDialog = MXFunctionInvoke(
  "CupertinoDialog",
  ({
    Key key,
    Widget child,
  }) =>
      CupertinoDialog(
    key: key,
    child: child,
  ),
  [
    "key",
    "child",
  ],
);
var _cupertinoPopupSurface = MXFunctionInvoke(
  "CupertinoPopupSurface",
  ({
    Key key,
    bool isSurfacePainted = true,
    Widget child,
  }) =>
      CupertinoPopupSurface(
    key: key,
    isSurfacePainted: isSurfacePainted,
    child: child,
  ),
  [
    "key",
    "isSurfacePainted",
    "child",
  ],
);
var _cupertinoDialogAction = MXFunctionInvoke(
  "CupertinoDialogAction",
  ({
    Key key,
    dynamic onPressed,
    bool isDefaultAction = false,
    bool isDestructiveAction = false,
    TextStyle textStyle,
    Widget child,
  }) =>
      CupertinoDialogAction(
    key: key,
    onPressed: createVoidCallbackClosure(_cupertinoDialogAction.buildOwner, onPressed),
    isDefaultAction: isDefaultAction,
    isDestructiveAction: isDestructiveAction,
    textStyle: textStyle,
    child: child,
  ),
  [
    "key",
    "onPressed",
    "isDefaultAction",
    "isDestructiveAction",
    "textStyle",
    "child",
  ],
);

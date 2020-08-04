//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/dialog.dart';


class MXProxyDialog {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[cupertinoAlertDialog.funName] = cupertinoAlertDialog;
    m[cupertinoDialog.funName] = cupertinoDialog;
    m[cupertinoPopupSurface.funName] = cupertinoPopupSurface;
    m[cupertinoDialogAction.funName] = cupertinoDialogAction;
    return m;
  }
  static var cupertinoAlertDialog = MXFunctionInvoke(
      "CupertinoAlertDialog",
      ({
        Key key,
        Widget title,
        Widget content,
        List<Widget> actions,
        ScrollController scrollController,
        ScrollController actionScrollController,
        Duration insetAnimationDuration,
        Curve insetAnimationCurve,
      }) =>
        CupertinoAlertDialog(
        key: key,
        title: title,
        content: content,
        actions: actions,
        scrollController: scrollController,
        actionScrollController: actionScrollController,
        insetAnimationDuration: insetAnimationDuration,
        insetAnimationCurve: insetAnimationCurve,
      ),
    );
  static var cupertinoDialog = MXFunctionInvoke(
      "CupertinoDialog",
      ({
        Key key,
        Widget child,
      }) =>
        CupertinoDialog(
        key: key,
        child: child,
      ),
    );
  static var cupertinoPopupSurface = MXFunctionInvoke(
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
    );
  static var cupertinoDialogAction = MXFunctionInvoke(
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
        onPressed: createVoidCallbackClosure(cupertinoDialogAction.buildOwner, onPressed),
        isDefaultAction: isDefaultAction,
        isDestructiveAction: isDestructiveAction,
        textStyle: textStyle,
        child: child,
      ),
    );
}

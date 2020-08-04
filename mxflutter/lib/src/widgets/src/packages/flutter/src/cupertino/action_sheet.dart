//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/action_sheet.dart';


class MXProxyActionSheet {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[cupertinoActionSheet.funName] = cupertinoActionSheet;
    m[cupertinoActionSheetAction.funName] = cupertinoActionSheetAction;
    return m;
  }
  static var cupertinoActionSheet = MXFunctionInvoke(
      "CupertinoActionSheet",
      ({
        Key key,
        Widget title,
        Widget message,
        List<Widget> actions,
        ScrollController messageScrollController,
        ScrollController actionScrollController,
        Widget cancelButton,
      }) =>
        CupertinoActionSheet(
        key: key,
        title: title,
        message: message,
        actions: actions,
        messageScrollController: messageScrollController,
        actionScrollController: actionScrollController,
        cancelButton: cancelButton,
      ),
    );
  static var cupertinoActionSheetAction = MXFunctionInvoke(
      "CupertinoActionSheetAction",
      ({
        Key key,
        dynamic onPressed,
        bool isDefaultAction = false,
        bool isDestructiveAction = false,
        Widget child,
      }) =>
        CupertinoActionSheetAction(
        key: key,
        onPressed: createVoidCallbackClosure(cupertinoActionSheetAction.buildOwner, onPressed),
        isDefaultAction: isDefaultAction,
        isDestructiveAction: isDestructiveAction,
        child: child,
      ),
    );
}

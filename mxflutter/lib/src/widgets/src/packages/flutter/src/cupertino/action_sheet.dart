//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/action_sheet.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/interface_level.dart';
import 'package:flutter/src/cupertino/scrollbar.dart';
import 'package:flutter/src/cupertino/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerActionSheetSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoActionSheet.funName] = _cupertinoActionSheet;
  m[_cupertinoActionSheetAction.funName] = _cupertinoActionSheetAction;
  return m;
}
var _cupertinoActionSheet = MXFunctionInvoke(
    "CupertinoActionSheet",
    (
      {
      Key key,
      Widget title,
      Widget message,
      List<Widget> actions,
      ScrollController messageScrollController,
      ScrollController actionScrollController,
      Widget cancelButton,
      }
    ) =>
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
var _cupertinoActionSheetAction = MXFunctionInvoke(
    "CupertinoActionSheetAction",
    (
      {
      Key key,
      dynamic onPressed,
      bool isDefaultAction = false,
      bool isDestructiveAction = false,
      Widget child,
      }
    ) =>
      CupertinoActionSheetAction(
      key: key,
      onPressed: createVoidCallbackClosure(_cupertinoActionSheetAction.buildOwner, onPressed),
      isDefaultAction: isDefaultAction,
      isDestructiveAction: isDestructiveAction,
      child: child,
    ),
);

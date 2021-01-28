//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/context_menu_action.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerContextMenuActionSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoContextMenuAction.funName] = _cupertinoContextMenuAction;
  return m;
}

var _cupertinoContextMenuAction = MXFunctionInvoke(
  "CupertinoContextMenuAction",
  ({
    Key key,
    Widget child,
    bool isDefaultAction = false,
    bool isDestructiveAction = false,
    dynamic onPressed,
    IconData trailingIcon,
  }) =>
      CupertinoContextMenuAction(
    key: key,
    child: child,
    isDefaultAction: isDefaultAction,
    isDestructiveAction: isDestructiveAction,
    onPressed: createVoidCallbackClosure(_cupertinoContextMenuAction.buildOwner, onPressed),
    trailingIcon: trailingIcon,
  ),
  [
    "key",
    "child",
    "isDefaultAction",
    "isDestructiveAction",
    "onPressed",
    "trailingIcon",
  ],
);

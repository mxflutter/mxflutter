//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/context_menu_action.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerContextMenuActionSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[cupertinoContextMenuAction.funName] = cupertinoContextMenuAction;
  return m;
}
var cupertinoContextMenuAction = MXFunctionInvoke(
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
      onPressed: createVoidCallbackClosure(cupertinoContextMenuAction.buildOwner, onPressed),
      trailingIcon: trailingIcon,
    ),
);

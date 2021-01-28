//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/drawer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDrawerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_drawerAlignment.funName] = _drawerAlignment;
  m[_drawer.funName] = _drawer;
  m[_drawerController.funName] = _drawerController;
  m[_drawerControllerState.funName] = _drawerControllerState;
  return m;
}

var _drawerAlignment = MXFunctionInvoke(
    "DrawerAlignment", ({String name, int index}) => MXDrawerAlignment.parse(name, index), ["name", "index"]);
var _drawer = MXFunctionInvoke(
  "Drawer",
  ({
    Key key,
    dynamic elevation = 16.0,
    Widget child,
    String semanticLabel,
  }) =>
      Drawer(
    key: key,
    elevation: elevation?.toDouble(),
    child: child,
    semanticLabel: semanticLabel,
  ),
  [
    "key",
    "elevation",
    "child",
    "semanticLabel",
  ],
);
var _drawerController = MXFunctionInvoke(
  "DrawerController",
  ({
    GlobalKey<State<StatefulWidget>> key,
    Widget child,
    DrawerAlignment alignment,
    dynamic drawerCallback,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    Color scrimColor,
    dynamic edgeDragWidth,
    bool enableOpenDragGesture = true,
  }) =>
      DrawerController(
    key: key,
    child: child,
    alignment: alignment,
    drawerCallback: createValueChangedGenericClosure<bool>(_drawerController.buildOwner, drawerCallback),
    dragStartBehavior: dragStartBehavior,
    scrimColor: scrimColor,
    edgeDragWidth: edgeDragWidth?.toDouble(),
    enableOpenDragGesture: enableOpenDragGesture,
  ),
  [
    "__mx_key",
    "child",
    "alignment",
    "drawerCallback",
    "dragStartBehavior",
    "scrimColor",
    "edgeDragWidth",
    "enableOpenDragGesture",
  ],
);
var _drawerControllerState = MXFunctionInvoke(
  "DrawerControllerState",
  () => DrawerControllerState(),
  [],
);

class MXDrawerAlignment {
  static DrawerAlignment parse(String name, int index) {
    switch (name) {
      case 'DrawerAlignment.start':
        return DrawerAlignment.start;
      case 'DrawerAlignment.end':
        return DrawerAlignment.end;
    }
    return null;
  }
}

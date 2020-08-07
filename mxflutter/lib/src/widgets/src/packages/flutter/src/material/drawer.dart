//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
    "DrawerAlignment",
    ({Map args}) => MXDrawerAlignment.parse(args),
  );
var _drawer = MXFunctionInvoke(
    "Drawer",
    (
      {
      Key key,
      dynamic elevation = 16.0,
      Widget child,
      String semanticLabel,
      }
    ) =>
      Drawer(
      key: key,
      elevation: elevation?.toDouble(),
      child: child,
      semanticLabel: semanticLabel,
    ),
);
var _drawerController = MXFunctionInvoke(
    "DrawerController",
    (
      {
      GlobalKey<State<StatefulWidget>> key,
      Widget child,
      DrawerAlignment alignment,
      dynamic drawerCallback,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      Color scrimColor,
      dynamic edgeDragWidth,
      bool enableOpenDragGesture = true,
      }
    ) =>
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
);
var _drawerControllerState = MXFunctionInvoke(
    "DrawerControllerState",
    (
    ) =>
      DrawerControllerState(
    ),
);
class MXDrawerAlignment {
  static Map str2VMap = {
    'DrawerAlignment.start': DrawerAlignment.start,
    'DrawerAlignment.end': DrawerAlignment.end,
  };
  static DrawerAlignment parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

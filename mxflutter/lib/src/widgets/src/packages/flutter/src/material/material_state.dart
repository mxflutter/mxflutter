//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/material_state.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMaterialStateSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_materialState.funName] = _materialState;
  m[_materialStateMouseCursorClickable.funName] = _materialStateMouseCursorClickable;
  m[_materialStateMouseCursorTextable.funName] = _materialStateMouseCursorTextable;
  return m;
}

var _materialState = MXFunctionInvoke(
    "MaterialState", ({String name, int index}) => MXMaterialState.parse(name, index), ["name", "index"]);
var _materialStateMouseCursorClickable =
    MXFunctionInvoke("MaterialStateMouseCursor.clickable", () => MaterialStateMouseCursor.clickable);
var _materialStateMouseCursorTextable =
    MXFunctionInvoke("MaterialStateMouseCursor.textable", () => MaterialStateMouseCursor.textable);

class MXMaterialState {
  static MaterialState parse(String name, int index) {
    switch (name) {
      case 'MaterialState.hovered':
        return MaterialState.hovered;
      case 'MaterialState.focused':
        return MaterialState.focused;
      case 'MaterialState.pressed':
        return MaterialState.pressed;
      case 'MaterialState.dragged':
        return MaterialState.dragged;
      case 'MaterialState.selected':
        return MaterialState.selected;
      case 'MaterialState.disabled':
        return MaterialState.disabled;
      case 'MaterialState.error':
        return MaterialState.error;
    }
    return null;
  }
}

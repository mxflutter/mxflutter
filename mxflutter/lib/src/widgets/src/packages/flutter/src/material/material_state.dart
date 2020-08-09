//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/material_state.dart';
import 'dart:ui';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMaterialStateSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_materialState.funName] = _materialState;
  return m;
}
var _materialState = MXFunctionInvoke(
    "MaterialState",
    ({String name, int index}) => MXMaterialState.parse(name, index),
  );
class MXMaterialState {
  static MaterialState parse(String name, int index) {
    switch(name) {
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

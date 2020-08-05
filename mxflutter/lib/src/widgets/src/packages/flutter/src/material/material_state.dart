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
    ({Map args}) => MXMaterialState.parse(args),
  );
class MXMaterialState {
  static Map str2VMap = {
    'MaterialState.hovered': MaterialState.hovered,
    'MaterialState.focused': MaterialState.focused,
    'MaterialState.pressed': MaterialState.pressed,
    'MaterialState.dragged': MaterialState.dragged,
    'MaterialState.selected': MaterialState.selected,
    'MaterialState.disabled': MaterialState.disabled,
    'MaterialState.error': MaterialState.error,
  };
  static MaterialState parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

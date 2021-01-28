//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/debug.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerArenaSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_gestureDisposition.funName] = _gestureDisposition;
  m[_gestureArenaManager.funName] = _gestureArenaManager;
  return m;
}

var _gestureDisposition = MXFunctionInvoke(
    "GestureDisposition", ({String name, int index}) => MXGestureDisposition.parse(name, index), ["name", "index"]);
var _gestureArenaManager = MXFunctionInvoke(
  "GestureArenaManager",
  () => GestureArenaManager(),
  [],
);

class MXGestureDisposition {
  static GestureDisposition parse(String name, int index) {
    switch (name) {
      case 'GestureDisposition.accepted':
        return GestureDisposition.accepted;
      case 'GestureDisposition.rejected':
        return GestureDisposition.rejected;
    }
    return null;
  }
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/debug.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerArenaSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[gestureDisposition.funName] = gestureDisposition;
  m[gestureArenaManager.funName] = gestureArenaManager;
  return m;
}
var gestureDisposition = MXFunctionInvoke(
    "GestureDisposition",
    ({Map args}) => MXGestureDisposition.parse(args),
  );
var gestureArenaManager = MXFunctionInvoke(
    "GestureArenaManager",
    ({
    }) =>
      GestureArenaManager(
    ),
);
class MXGestureDisposition {
  static Map str2VMap = {
    'GestureDisposition.accepted': GestureDisposition.accepted,
    'GestureDisposition.rejected': GestureDisposition.rejected,
  };
  static GestureDisposition parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

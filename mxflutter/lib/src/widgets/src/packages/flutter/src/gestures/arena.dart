//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/arena.dart';


class MXProxyArena {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[gestureDisposition.funName] = gestureDisposition;
    m[gestureArenaEntry_.funName] = gestureArenaEntry_;
    m[gestureArenaManager.funName] = gestureArenaManager;
    return m;
  }
  static var gestureDisposition = MXFunctionInvoke(
      "GestureDisposition",
      ({Map args}) => MXGestureDisposition.parse(args),
  );
  static var gestureArenaEntry_ = MXFunctionInvoke(
    "gestureArenaEntry.",
      ({
        GestureArenaManager _arena,
        int _pointer,
        GestureArenaMember _member,
      }) =>
        GestureArenaEntry.(
        _arena,
        _pointer,
        _member,
      ),
    );
  static var gestureArenaManager = MXFunctionInvoke(
      "GestureArenaManager",
      ({
      }) =>
        GestureArenaManager(
      ),
    );
}
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

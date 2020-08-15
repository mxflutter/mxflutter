//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/team.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/binding.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTeamSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_gestureArenaTeam.funName] = _gestureArenaTeam;
  return m;
}

var _gestureArenaTeam = MXFunctionInvoke(
  "GestureArenaTeam",
  () => GestureArenaTeam(),
  [],
);

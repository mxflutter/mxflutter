//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/scheduler/priority.dart';
import 'package:flutter/foundation.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPrioritySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_priority_idle.funName] = _priority_idle;
  m[_priority_animation.funName] = _priority_animation;
  m[_priority_touch.funName] = _priority_touch;
  m[_priority_kMaxOffset.funName] = _priority_kMaxOffset;
  return m;
}
var _priority_idle = MXFunctionInvoke(
  "Priority.idle",
    (
    ) =>
      Priority.idle
);
var _priority_animation = MXFunctionInvoke(
  "Priority.animation",
    (
    ) =>
      Priority.animation
);
var _priority_touch = MXFunctionInvoke(
  "Priority.touch",
    (
    ) =>
      Priority.touch
);
var _priority_kMaxOffset = MXFunctionInvoke(
  "Priority.kMaxOffset",
    (
    ) =>
      Priority.kMaxOffset
);

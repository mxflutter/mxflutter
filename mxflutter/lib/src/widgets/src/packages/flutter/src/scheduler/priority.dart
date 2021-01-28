//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/scheduler/priority.dart';
import 'package:flutter/foundation.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPrioritySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_priorityIdle.funName] = _priorityIdle;
  m[_priorityAnimation.funName] = _priorityAnimation;
  m[_priorityTouch.funName] = _priorityTouch;
  m[_priorityKMaxOffset.funName] = _priorityKMaxOffset;
  return m;
}

var _priorityIdle = MXFunctionInvoke("Priority.idle", () => Priority.idle);
var _priorityAnimation = MXFunctionInvoke("Priority.animation", () => Priority.animation);
var _priorityTouch = MXFunctionInvoke("Priority.touch", () => Priority.touch);
var _priorityKMaxOffset = MXFunctionInvoke("Priority.kMaxOffset", () => Priority.kMaxOffset);

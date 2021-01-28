//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/scheduler/binding.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:developer';
import 'dart:ui';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/scheduler/debug.dart';
import 'package:flutter/src/scheduler/priority.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBindingSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_schedulerPhase.funName] = _schedulerPhase;
  return m;
}

var _schedulerPhase = MXFunctionInvoke(
    "SchedulerPhase", ({String name, int index}) => MXSchedulerPhase.parse(name, index), ["name", "index"]);

class MXSchedulerPhase {
  static SchedulerPhase parse(String name, int index) {
    switch (name) {
      case 'SchedulerPhase.idle':
        return SchedulerPhase.idle;
      case 'SchedulerPhase.transientCallbacks':
        return SchedulerPhase.transientCallbacks;
      case 'SchedulerPhase.midFrameMicrotasks':
        return SchedulerPhase.midFrameMicrotasks;
      case 'SchedulerPhase.persistentCallbacks':
        return SchedulerPhase.persistentCallbacks;
      case 'SchedulerPhase.postFrameCallbacks':
        return SchedulerPhase.postFrameCallbacks;
    }
    return null;
  }
}

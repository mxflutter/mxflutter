//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/scheduler/binding.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:developer';
import 'dart:ui';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/scheduler/debug.dart';
import 'package:flutter/src/scheduler/priority.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBindingSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_schedulerPhase.funName] = _schedulerPhase;
  return m;
}
var _schedulerPhase = MXFunctionInvoke(
    "SchedulerPhase",
    ({Map args}) => MXSchedulerPhase.parse(args),
  );
class MXSchedulerPhase {
  static Map str2VMap = {
    'SchedulerPhase.idle': SchedulerPhase.idle,
    'SchedulerPhase.transientCallbacks': SchedulerPhase.transientCallbacks,
    'SchedulerPhase.midFrameMicrotasks': SchedulerPhase.midFrameMicrotasks,
    'SchedulerPhase.persistentCallbacks': SchedulerPhase.persistentCallbacks,
    'SchedulerPhase.postFrameCallbacks': SchedulerPhase.postFrameCallbacks,
  };
  static SchedulerPhase parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

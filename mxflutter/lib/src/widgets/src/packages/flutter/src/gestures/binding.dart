//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/binding.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/converter.dart';
import 'package:flutter/src/gestures/debug.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/gestures/pointer_router.dart';
import 'package:flutter/src/gestures/pointer_signal_resolver.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBindingSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_flutterErrorDetailsForPointerEventDispatcher.funName] = _flutterErrorDetailsForPointerEventDispatcher;
  return m;
}

var _flutterErrorDetailsForPointerEventDispatcher = MXFunctionInvoke(
  "FlutterErrorDetailsForPointerEventDispatcher",
  ({
    dynamic exception,
    StackTrace stack,
    String library,
    DiagnosticsNode context,
    PointerEvent event,
    HitTestEntry hitTestEntry,
    dynamic informationCollector,
    bool silent = false,
  }) =>
      FlutterErrorDetailsForPointerEventDispatcher(
    exception: exception,
    stack: stack,
    library: library,
    context: context,
    event: event,
    hitTestEntry: hitTestEntry,
    informationCollector: null,
    silent: silent,
  ),
  [
    "exception",
    "stack",
    "library",
    "context",
    "event",
    "hitTestEntry",
    "informationCollector",
    "silent",
  ],
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/pointer_router.dart';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/gestures/events.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPointerRouterSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_pointerRouter.funName] = _pointerRouter;
  m[_flutterErrorDetailsForPointerRouter.funName] = _flutterErrorDetailsForPointerRouter;
  return m;
}

var _pointerRouter = MXFunctionInvoke(
  "PointerRouter",
  () => PointerRouter(),
  [],
);
var _flutterErrorDetailsForPointerRouter = MXFunctionInvoke(
  "FlutterErrorDetailsForPointerRouter",
  ({
    dynamic exception,
    StackTrace stack,
    String library,
    DiagnosticsNode context,
    PointerRouter router,
    dynamic route,
    PointerEvent event,
    dynamic informationCollector,
    bool silent = false,
  }) =>
      FlutterErrorDetailsForPointerRouter(
    exception: exception,
    stack: stack,
    library: library,
    context: context,
    router: router,
    route: createValueChangedGenericClosure<PointerEvent>(_flutterErrorDetailsForPointerRouter.buildOwner, route),
    event: event,
    informationCollector: null,
    silent: silent,
  ),
  [
    "exception",
    "stack",
    "library",
    "context",
    "router",
    "route",
    "event",
    "informationCollector",
    "silent",
  ],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/pointer_router.dart';


class MXProxyPointerRouter {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[pointerRouter.funName] = pointerRouter;
    m[flutterErrorDetailsForPointerRouter.funName] = flutterErrorDetailsForPointerRouter;
    return m;
  }
  static var pointerRouter = MXFunctionInvoke(
      "PointerRouter",
      ({
      }) =>
        PointerRouter(
      ),
    );
  static var flutterErrorDetailsForPointerRouter = MXFunctionInvoke(
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
        route: createValueChangedGenericClosure<PointerEvent>(flutterErrorDetailsForPointerRouter.buildOwner, route),
        event: event,
        informationCollector: informationCollector,
        silent: silent,
      ),
    );
}

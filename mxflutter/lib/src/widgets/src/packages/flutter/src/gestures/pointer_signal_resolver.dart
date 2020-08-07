//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/pointer_signal_resolver.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/events.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPointerSignalResolverSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_pointerSignalResolver.funName] = _pointerSignalResolver;
  return m;
}
var _pointerSignalResolver = MXFunctionInvoke(
    "PointerSignalResolver",
    (
    ) =>
      PointerSignalResolver(
    ),
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/eager.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEagerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_eagerGestureRecognizer.funName] = _eagerGestureRecognizer;
  return m;
}

var _eagerGestureRecognizer = MXFunctionInvoke(
  "EagerGestureRecognizer",
  ({
    PointerDeviceKind kind,
  }) =>
      EagerGestureRecognizer(
    kind: kind,
  ),
  [
    "kind",
  ],
);

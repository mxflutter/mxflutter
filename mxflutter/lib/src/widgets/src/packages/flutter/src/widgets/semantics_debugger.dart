//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/semantics_debugger.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSemanticsDebuggerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_semanticsDebugger.funName] = _semanticsDebugger;
  return m;
}

var _semanticsDebugger = MXFunctionInvoke(
  "SemanticsDebugger",
  ({
    Key key,
    Widget child,
    TextStyle labelStyle = const TextStyle(color: const Color(0xFF000000), fontSize: 10.0, height: 0.8),
  }) =>
      SemanticsDebugger(
    key: key,
    child: child,
    labelStyle: labelStyle,
  ),
  [
    "key",
    "child",
    "labelStyle",
  ],
);

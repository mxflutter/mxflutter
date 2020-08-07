//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
    (
      {
      Key key,
      Widget child,
      TextStyle labelStyle,
      }
    ) =>
      SemanticsDebugger(
      key: key,
      child: child,
      labelStyle: labelStyle,
    ),
);

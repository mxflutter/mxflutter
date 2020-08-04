//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/stack_frame.dart';
import 'dart:ui';
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/constants.dart';
import 'package:flutter/src/foundation/object.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerStackFrameSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[stackFrame.funName] = stackFrame;
  return m;
}
var stackFrame = MXFunctionInvoke(
    "StackFrame",
    ({
      int number,
      int column,
      int line,
      String packageScheme,
      String package,
      String packagePath,
      String className = '',
      String method,
      bool isConstructor = false,
      String source,
    }) =>
      StackFrame(
      number: number,
      column: column,
      line: line,
      packageScheme: packageScheme,
      package: package,
      packagePath: packagePath,
      className: className,
      method: method,
      isConstructor: isConstructor,
      source: source,
    ),
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_stackFrame.funName] = _stackFrame;
  m[_stackFrameAsynchronousSuspension.funName] = _stackFrameAsynchronousSuspension;
  m[_stackFrameStackOverFlowElision.funName] = _stackFrameStackOverFlowElision;
  return m;
}

var _stackFrame = MXFunctionInvoke(
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
  [
    "number",
    "column",
    "line",
    "packageScheme",
    "__mx_package",
    "packagePath",
    "className",
    "method",
    "isConstructor",
    "source",
  ],
);
var _stackFrameAsynchronousSuspension =
    MXFunctionInvoke("StackFrame.asynchronousSuspension", () => StackFrame.asynchronousSuspension);
var _stackFrameStackOverFlowElision =
    MXFunctionInvoke("StackFrame.stackOverFlowElision", () => StackFrame.stackOverFlowElision);

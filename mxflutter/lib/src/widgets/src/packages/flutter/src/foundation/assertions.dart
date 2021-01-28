//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/basic_types.dart';
import 'package:flutter/src/foundation/constants.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/print.dart';
import 'package:flutter/src/foundation/stack_frame.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAssertionsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_partialStackFrame.funName] = _partialStackFrame;
  m[_partialStackFrameAsynchronousSuspension.funName] = _partialStackFrameAsynchronousSuspension;
  m[_repetitiveStackFrameFilter.funName] = _repetitiveStackFrameFilter;
  m[_errorDescription.funName] = _errorDescription;
  m[_errorSummary.funName] = _errorSummary;
  m[_errorHint.funName] = _errorHint;
  m[_errorSpacer.funName] = _errorSpacer;
  m[_flutterErrorDetails.funName] = _flutterErrorDetails;
  m[_flutterErrorWrapWidth.funName] = _flutterErrorWrapWidth;
  m[_flutterError.funName] = _flutterError;
  m[_flutterErrorResetErrorCount.funName] = _flutterErrorResetErrorCount;
  m[_flutterErrorDumpErrorToConsole.funName] = _flutterErrorDumpErrorToConsole;
  m[_flutterErrorAddDefaultStackFilter.funName] = _flutterErrorAddDefaultStackFilter;
  m[_flutterErrorReportError.funName] = _flutterErrorReportError;
  m[_flutterErrorFromParts.funName] = _flutterErrorFromParts;
  m[_diagnosticsStackTrace.funName] = _diagnosticsStackTrace;
  m[_diagnosticsStackTraceSingleFrame.funName] = _diagnosticsStackTraceSingleFrame;
  return m;
}

var _partialStackFrame = MXFunctionInvoke(
  "PartialStackFrame",
  ({
    Pattern package,
    String className,
    String method,
  }) =>
      PartialStackFrame(
    package: package,
    className: className,
    method: method,
  ),
  [
    "package",
    "className",
    "method",
  ],
);
var _partialStackFrameAsynchronousSuspension =
    MXFunctionInvoke("PartialStackFrame.asynchronousSuspension", () => PartialStackFrame.asynchronousSuspension);
var _repetitiveStackFrameFilter = MXFunctionInvoke(
  "RepetitiveStackFrameFilter",
  ({
    dynamic frames,
    String replacement,
  }) =>
      RepetitiveStackFrameFilter(
    frames: toListT<PartialStackFrame>(frames),
    replacement: replacement,
  ),
  [
    "frames",
    "replacement",
  ],
);
var _errorDescription = MXFunctionInvoke(
  "ErrorDescription",
  ({
    String message,
  }) =>
      ErrorDescription(
    message,
  ),
  [
    "message",
  ],
);
var _errorSummary = MXFunctionInvoke(
  "ErrorSummary",
  ({
    String message,
  }) =>
      ErrorSummary(
    message,
  ),
  [
    "message",
  ],
);
var _errorHint = MXFunctionInvoke(
  "ErrorHint",
  ({
    String message,
  }) =>
      ErrorHint(
    message,
  ),
  [
    "message",
  ],
);
var _errorSpacer = MXFunctionInvoke(
  "ErrorSpacer",
  () => ErrorSpacer(),
  [],
);
var _flutterErrorDetails = MXFunctionInvoke(
  "FlutterErrorDetails",
  ({
    dynamic exception,
    StackTrace stack,
    String library = 'Flutter framework',
    DiagnosticsNode context,
    dynamic stackFilter,
    dynamic informationCollector,
    bool silent = false,
  }) =>
      FlutterErrorDetails(
    exception: exception,
    stack: stack,
    library: library,
    context: context,
    stackFilter: null,
    informationCollector: null,
    silent: silent,
  ),
  [
    "exception",
    "stack",
    "library",
    "context",
    "stackFilter",
    "informationCollector",
    "silent",
  ],
);
var _flutterErrorWrapWidth = MXFunctionInvoke("FlutterError.wrapWidth", () => FlutterError.wrapWidth);
var _flutterError = MXFunctionInvoke(
  "FlutterError",
  ({
    String message,
  }) =>
      FlutterError(
    message,
  ),
  [
    "message",
  ],
);
var _flutterErrorResetErrorCount = MXFunctionInvoke(
  "FlutterError.resetErrorCount",
  () => FlutterError.resetErrorCount(),
  [],
);
var _flutterErrorDumpErrorToConsole = MXFunctionInvoke(
  "FlutterError.dumpErrorToConsole",
  ({
    FlutterErrorDetails details,
    bool forceReport = false,
  }) =>
      FlutterError.dumpErrorToConsole(
    details,
    forceReport: forceReport,
  ),
  [
    "details",
    "forceReport",
  ],
);
var _flutterErrorAddDefaultStackFilter = MXFunctionInvoke(
  "FlutterError.addDefaultStackFilter",
  ({
    StackFilter filter,
  }) =>
      FlutterError.addDefaultStackFilter(
    filter,
  ),
  [
    "filter",
  ],
);
var _flutterErrorReportError = MXFunctionInvoke(
  "FlutterError.reportError",
  ({
    FlutterErrorDetails details,
  }) =>
      FlutterError.reportError(
    details,
  ),
  [
    "details",
  ],
);
var _flutterErrorFromParts = MXFunctionInvoke(
  "FlutterError.fromParts",
  ({
    dynamic diagnostics,
  }) =>
      FlutterError.fromParts(
    toListT<DiagnosticsNode>(diagnostics),
  ),
  [
    "diagnostics",
  ],
);
var _diagnosticsStackTrace = MXFunctionInvoke(
  "DiagnosticsStackTrace",
  ({
    String name,
    StackTrace stack,
    dynamic stackFilter,
    bool showSeparator = true,
  }) =>
      DiagnosticsStackTrace(
    name,
    stack,
    stackFilter: null,
    showSeparator: showSeparator,
  ),
  [
    "name",
    "stack",
    "stackFilter",
    "showSeparator",
  ],
);
var _diagnosticsStackTraceSingleFrame = MXFunctionInvoke(
  "DiagnosticsStackTrace.singleFrame",
  ({
    String name,
    String frame,
    bool showSeparator = true,
  }) =>
      DiagnosticsStackTrace.singleFrame(
    name,
    frame: frame,
    showSeparator: showSeparator,
  ),
  [
    "name",
    "frame",
    "showSeparator",
  ],
);

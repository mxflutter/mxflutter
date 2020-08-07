//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_repetitiveStackFrameFilter.funName] = _repetitiveStackFrameFilter;
  m[_errorDescription.funName] = _errorDescription;
  m[_errorSummary.funName] = _errorSummary;
  m[_errorHint.funName] = _errorHint;
  m[_errorSpacer.funName] = _errorSpacer;
  m[_flutterErrorDetails.funName] = _flutterErrorDetails;
  m[_flutterError.funName] = _flutterError;
  m[_flutterError_resetErrorCount.funName] = _flutterError_resetErrorCount;
  m[_flutterError_dumpErrorToConsole.funName] = _flutterError_dumpErrorToConsole;
  m[_flutterError_addDefaultStackFilter.funName] = _flutterError_addDefaultStackFilter;
  m[_flutterError_reportError.funName] = _flutterError_reportError;
  m[_flutterError_fromParts.funName] = _flutterError_fromParts;
  m[_diagnosticsStackTrace.funName] = _diagnosticsStackTrace;
  m[_diagnosticsStackTrace_singleFrame.funName] = _diagnosticsStackTrace_singleFrame;
  return m;
}
var _partialStackFrame = MXFunctionInvoke(
    "PartialStackFrame",
    (
      {
      Pattern package,
      String className,
      String method,
      }
    ) =>
      PartialStackFrame(
      package: package,
      className: className,
      method: method,
    ),
);
var _repetitiveStackFrameFilter = MXFunctionInvoke(
    "RepetitiveStackFrameFilter",
    (
      {
      List<PartialStackFrame> frames,
      String replacement,
      }
    ) =>
      RepetitiveStackFrameFilter(
      frames: frames,
      replacement: replacement,
    ),
);
var _errorDescription = MXFunctionInvoke(
    "ErrorDescription",
    (
      {
      String message,
      }
    ) =>
      ErrorDescription(
      message,
    ),
);
var _errorSummary = MXFunctionInvoke(
    "ErrorSummary",
    (
      {
      String message,
      }
    ) =>
      ErrorSummary(
      message,
    ),
);
var _errorHint = MXFunctionInvoke(
    "ErrorHint",
    (
      {
      String message,
      }
    ) =>
      ErrorHint(
      message,
    ),
);
var _errorSpacer = MXFunctionInvoke(
    "ErrorSpacer",
    (
    ) =>
      ErrorSpacer(
    ),
);
var _flutterErrorDetails = MXFunctionInvoke(
    "FlutterErrorDetails",
    (
      {
      dynamic exception,
      StackTrace stack,
      String library = 'Flutter framework',
      DiagnosticsNode context,
      dynamic stackFilter,
      dynamic informationCollector,
      bool silent = false,
      }
    ) =>
      FlutterErrorDetails(
      exception: exception,
      stack: stack,
      library: library,
      context: context,
      stackFilter: null,
      informationCollector: null,
      silent: silent,
    ),
);
var _flutterError = MXFunctionInvoke(
    "FlutterError",
    (
      {
      String message,
      }
    ) =>
      FlutterError(
      message,
    ),
);
var _flutterError_resetErrorCount = MXFunctionInvoke(
  "FlutterError.resetErrorCount",
    (
    ) =>
      FlutterError.resetErrorCount(
    ),
);
var _flutterError_dumpErrorToConsole = MXFunctionInvoke(
  "FlutterError.dumpErrorToConsole",
    (
      {
      FlutterErrorDetails details,
      bool forceReport = false,
      }
    ) =>
      FlutterError.dumpErrorToConsole(
      details,
      forceReport: forceReport,
    ),
);
var _flutterError_addDefaultStackFilter = MXFunctionInvoke(
  "FlutterError.addDefaultStackFilter",
    (
      {
      StackFilter filter,
      }
    ) =>
      FlutterError.addDefaultStackFilter(
      filter,
    ),
);
var _flutterError_reportError = MXFunctionInvoke(
  "FlutterError.reportError",
    (
      {
      FlutterErrorDetails details,
      }
    ) =>
      FlutterError.reportError(
      details,
    ),
);
var _flutterError_fromParts = MXFunctionInvoke(
  "FlutterError.fromParts",
    (
      {
      List<DiagnosticsNode> diagnostics,
      }
    ) =>
      FlutterError.fromParts(
      diagnostics,
    ),
);
var _diagnosticsStackTrace = MXFunctionInvoke(
    "DiagnosticsStackTrace",
    (
      {
      String name,
      StackTrace stack,
      dynamic stackFilter,
      bool showSeparator = true,
      }
    ) =>
      DiagnosticsStackTrace(
      name,
      stack,
      stackFilter: null,
      showSeparator: showSeparator,
    ),
);
var _diagnosticsStackTrace_singleFrame = MXFunctionInvoke(
  "DiagnosticsStackTrace.singleFrame",
    (
      {
      String name,
      String frame,
      bool showSeparator = true,
      }
    ) =>
      DiagnosticsStackTrace.singleFrame(
      name,
      frame: frame,
      showSeparator: showSeparator,
    ),
);

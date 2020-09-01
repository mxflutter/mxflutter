//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:dio/src/interceptors/log.dart';
import 'dart:async';
import 'package:dio/src/dio_error.dart';
import 'package:dio/src/interceptor.dart';
import 'package:dio/src/options.dart';
import 'package:dio/src/response.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerLogSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_logInterceptor.funName] = _logInterceptor;
  return m;
}

var _logInterceptor = MXFunctionInvoke(
  "LogInterceptor",
  ({
    bool request = true,
    bool requestHeader = true,
    bool requestBody = false,
    bool responseHeader = true,
    bool responseBody = false,
    bool error = true,

    ///MX Modified begin
    // dynamic logPrint = dart:core.@methods.print,
    ///MX Modified end
  }) =>
      LogInterceptor(
    request: request,
    requestHeader: requestHeader,
    requestBody: requestBody,
    responseHeader: responseHeader,
    responseBody: responseBody,
    error: error,

    ///MX Modified begin
    // logPrint: createValueChangedGenericClosure<Object>(_logInterceptor.buildOwner, logPrint),
    ///MX Modified end
  ),
  [
    "request",
    "requestHeader",
    "requestBody",
    "responseHeader",
    "responseBody",
    "error",
    "logPrint",
  ],
);

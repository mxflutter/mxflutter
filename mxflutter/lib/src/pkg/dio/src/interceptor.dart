//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:dio/src/interceptor.dart';
import 'dart:async';
import 'dart:collection';
import 'package:dio/src/options.dart';
import 'package:dio/src/dio_error.dart';
import 'package:dio/src/response.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInterceptorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_lock.funName] = _lock;
  m[_interceptor.funName] = _interceptor;
  m[_interceptorsWrapper.funName] = _interceptorsWrapper;
  m[_interceptors.funName] = _interceptors;
  return m;
}
var _lock = MXFunctionInvoke(
    "Lock",
    (
    ) =>
      Lock(
    ),
    [
    ],
);
var _interceptor = MXFunctionInvoke(
    "Interceptor",
    (
    ) =>
      Interceptor(
    ),
    [
    ],
);
var _interceptorsWrapper = MXFunctionInvoke(
    "InterceptorsWrapper",
    (
      {
      dynamic onRequest,
      dynamic onResponse,
      dynamic onError,
      }
    ) =>
      InterceptorsWrapper(
      onRequest: null,
      onResponse: null,
      onError: null,
    ),
    [
      "onRequest",
      "onResponse",
      "onError",
    ],
);
var _interceptors = MXFunctionInvoke(
    "Interceptors",
    (
    ) =>
      Interceptors(
    ),
    [
    ],
);

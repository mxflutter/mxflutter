//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:dio/dio.dart';
import 'package:mxflutter/mxflutter.dart';

/// 把自己能处理的类注册到分发器中。
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
  () => Lock(),
  [],
);
var _interceptor = MXFunctionInvoke(
  "Interceptor",
  () => Interceptor(),
  [],
);
var _interceptorsWrapper = MXFunctionInvoke(
  "InterceptorsWrapper",
  ({
    dynamic onRequest,
    dynamic onResponse,
    dynamic onError,
  }) =>
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
  () => Interceptors(),
  [],
);

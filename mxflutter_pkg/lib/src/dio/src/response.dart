//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:dio/dio.dart';
import 'package:mxflutter/mxflutter.dart';

/// 把自己能处理的类注册到分发器中。
Map<String, MXFunctionInvoke> registerResponseSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_response.funName] = _response;
  return m;
}

var _response = MXFunctionInvoke(
  "Response",
  ({
    dynamic data,
    Headers headers,
    RequestOptions request,
    bool isRedirect,
    int statusCode,
    String statusMessage,
    dynamic redirects,
    dynamic extra,
  }) =>
      Response(
    data: data,
    headers: headers,
    request: request,
    isRedirect: isRedirect,
    statusCode: statusCode,
    statusMessage: statusMessage,
    redirects: toListT<RedirectRecord>(redirects),
    extra: toMapT<String, dynamic>(extra),
  ),
  [
    "data",
    "headers",
    "request",
    "isRedirect",
    "statusCode",
    "statusMessage",
    "redirects",
    "extra",
  ],
);

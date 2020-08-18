//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:dio/src/dio_error.dart';
import 'package:dio/src/options.dart';
import 'package:dio/src/response.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDioErrorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dioErrorType.funName] = _dioErrorType;
  m[_dioError.funName] = _dioError;
  return m;
}

var _dioErrorType = MXFunctionInvoke(
    "DioErrorType",
    ({String name, int index}) => MXDioErrorType.parse(name, index),
    ["name", "index"]);
var _dioError = MXFunctionInvoke(
  "DioError",
  ({
    RequestOptions request,
    Response<dynamic> response,
    DioErrorType type = DioErrorType.DEFAULT,
    dynamic error,
  }) =>
      DioError(
    request: request,
    response: response,
    type: type,
    error: error,
  ),
  [
    "request",
    "response",
    "type",
    "error",
  ],
);

class MXDioErrorType {
  static DioErrorType parse(String name, int index) {
    switch (name) {
      case 'DioErrorType.CONNECT_TIMEOUT':
        return DioErrorType.CONNECT_TIMEOUT;
      case 'DioErrorType.SEND_TIMEOUT':
        return DioErrorType.SEND_TIMEOUT;
      case 'DioErrorType.RECEIVE_TIMEOUT':
        return DioErrorType.RECEIVE_TIMEOUT;
      case 'DioErrorType.RESPONSE':
        return DioErrorType.RESPONSE;
      case 'DioErrorType.CANCEL':
        return DioErrorType.CANCEL;
      case 'DioErrorType.DEFAULT':
        return DioErrorType.DEFAULT;
    }
    return null;
  }
}

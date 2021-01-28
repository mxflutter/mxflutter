//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:dio/dio.dart';
import 'package:mxflutter/mxflutter.dart';

/// 把自己能处理的类注册到分发器中。
Map<String, MXFunctionInvoke> registerOptionsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_responseType.funName] = _responseType;
  m[_baseOptions.funName] = _baseOptions;
  m[_options.funName] = _options;
  m[_requestOptions.funName] = _requestOptions;
  return m;
}

var _responseType = MXFunctionInvoke(
    "ResponseType", ({String name, int index}) => MXResponseType.parse(name, index), ["name", "index"]);
var _baseOptions = MXFunctionInvoke(
  "BaseOptions",
  ({
    String method,
    int connectTimeout,
    int receiveTimeout,
    int sendTimeout,
    String baseUrl,
    dynamic queryParameters,
    dynamic extra,
    dynamic headers,
    ResponseType responseType = ResponseType.json,
    String contentType,
    dynamic validateStatus,
    bool receiveDataWhenStatusError = true,
    bool followRedirects = true,
    int maxRedirects = 5,
    dynamic requestEncoder,
    dynamic responseDecoder,
  }) =>
      BaseOptions(
    method: method,
    connectTimeout: connectTimeout,
    receiveTimeout: receiveTimeout,
    sendTimeout: sendTimeout,
    baseUrl: baseUrl,
    queryParameters: toMapT<String, dynamic>(queryParameters),
    extra: toMapT<String, dynamic>(extra),
    headers: toMapT<String, dynamic>(headers),
    responseType: responseType,
    contentType: contentType,
    validateStatus: null,
    receiveDataWhenStatusError: receiveDataWhenStatusError,
    followRedirects: followRedirects,
    maxRedirects: maxRedirects,
    requestEncoder: null,
    responseDecoder: null,
  ),
  [
    "method",
    "connectTimeout",
    "receiveTimeout",
    "sendTimeout",
    "baseUrl",
    "queryParameters",
    "extra",
    "headers",
    "responseType",
    "contentType",
    "validateStatus",
    "receiveDataWhenStatusError",
    "followRedirects",
    "maxRedirects",
    "requestEncoder",
    "responseDecoder",
  ],
);
var _options = MXFunctionInvoke(
  "Options",
  ({
    String method,
    int sendTimeout,
    int receiveTimeout,
    dynamic extra,
    dynamic headers,
    ResponseType responseType,
    String contentType,
    dynamic validateStatus,
    bool receiveDataWhenStatusError,
    bool followRedirects,
    int maxRedirects,
    dynamic requestEncoder,
    dynamic responseDecoder,
  }) =>
      Options(
    method: method,
    sendTimeout: sendTimeout,
    receiveTimeout: receiveTimeout,
    extra: toMapT<String, dynamic>(extra),
    headers: toMapT<String, dynamic>(headers),
    responseType: responseType,
    contentType: contentType,
    validateStatus: null,
    receiveDataWhenStatusError: receiveDataWhenStatusError,
    followRedirects: followRedirects,
    maxRedirects: maxRedirects,
    requestEncoder: null,
    responseDecoder: null,
  ),
  [
    "method",
    "sendTimeout",
    "receiveTimeout",
    "extra",
    "headers",
    "responseType",
    "contentType",
    "validateStatus",
    "receiveDataWhenStatusError",
    "followRedirects",
    "maxRedirects",
    "requestEncoder",
    "responseDecoder",
  ],
);
var _requestOptions = MXFunctionInvoke(
  "RequestOptions",
  ({
    String method,
    int sendTimeout,
    int receiveTimeout,
    int connectTimeout,
    dynamic data,
    String path,
    dynamic queryParameters,
    String baseUrl,
    dynamic onReceiveProgress,
    dynamic onSendProgress,
    CancelToken cancelToken,
    dynamic extra,
    dynamic headers,
    ResponseType responseType,
    String contentType,
    dynamic validateStatus,
    bool receiveDataWhenStatusError,
    bool followRedirects,
    int maxRedirects,
    dynamic requestEncoder,
    dynamic responseDecoder,
  }) =>
      RequestOptions(
    method: method,
    sendTimeout: sendTimeout,
    receiveTimeout: receiveTimeout,
    connectTimeout: connectTimeout,
    data: data,
    path: path,
    queryParameters: toMapT<String, dynamic>(queryParameters),
    baseUrl: baseUrl,
    // MX Modified begin.
    onReceiveProgress: (int count, int total) {
      MXMirror.getInstance().invokeJSMirrorObj(callbackID: onReceiveProgress, args: {"count": count, "total": total});
    },
    onSendProgress: (int count, int total) {
      MXMirror.getInstance().invokeJSMirrorObj(callbackID: onSendProgress, args: {"count": count, "total": total});
    },
    // MX Modified end.
    cancelToken: cancelToken,
    extra: toMapT<String, dynamic>(extra),
    headers: toMapT<String, dynamic>(headers),
    responseType: responseType,
    contentType: contentType,
    validateStatus: null,
    receiveDataWhenStatusError: receiveDataWhenStatusError,
    followRedirects: followRedirects,
    maxRedirects: maxRedirects,
    requestEncoder: null,
    responseDecoder: null,
  ),
  [
    "method",
    "sendTimeout",
    "receiveTimeout",
    "connectTimeout",
    "data",
    "path",
    "queryParameters",
    "baseUrl",
    "onReceiveProgress",
    "onSendProgress",
    "cancelToken",
    "extra",
    "headers",
    "responseType",
    "contentType",
    "validateStatus",
    "receiveDataWhenStatusError",
    "followRedirects",
    "maxRedirects",
    "requestEncoder",
    "responseDecoder",
  ],
);

class MXResponseType {
  static ResponseType parse(String name, int index) {
    switch (name) {
      case 'ResponseType.json':
        return ResponseType.json;
      case 'ResponseType.stream':
        return ResponseType.stream;
      case 'ResponseType.plain':
        return ResponseType.plain;
      case 'ResponseType.bytes':
        return ResponseType.bytes;
    }
    return null;
  }
}

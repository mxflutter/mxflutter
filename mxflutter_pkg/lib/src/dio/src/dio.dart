//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';
import 'package:mxflutter/mxflutter.dart';

/// 把自己能处理的类注册到分发器中。
Map<String, MXFunctionInvoke> registerDioSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dio.funName] = _dio;

  // MX Modified begin.
  m[_dio_request.funName] = _dio_request;
  m[_dio_get.funName] = _dio_get;
  m[_dio_post.funName] = _dio_post;
  // MX Modified end.

  return m;
}

// MX Modified begin.
var _dio = MXFunctionInvoke(
  "Dio",
  ({
    BaseOptions options,
  }) =>
      Dio(
    options,
  )
        ..interceptors.add(LogInterceptor())
        ..httpClientAdapter = DefaultHttpClientAdapter(),
  [
    "options",
  ],
);

var _dio_request = MXFunctionInvoke(
  "Dio#request",
  ({
    Dio mirrorObj,
    String path,
    dynamic data,
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    dynamic onSendProgress,
    dynamic onReceiveProgress,
  }) async {
    Response response = await mirrorObj.request(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: (int count, int total) {
        MXMirror.getInstance().invokeJSMirrorObj(callbackID: onSendProgress, args: {"count": count, "total": total});
      },
      onReceiveProgress: (int count, int total) {
        MXMirror.getInstance().invokeJSMirrorObj(
            // mirrorID: mirrorID,
            callbackID: onSendProgress,
            args: {"count": count, "total": total});
      },
    );
    return _responseOBJtoJSON(response);
  },
  [
    "mirrorObj",
    "path",
    "data",
    "queryParameters",
    "options",
    "cancelToken",
    "onSendProgress",
    "onReceiveProgress",
  ],
);

var _dio_get = MXFunctionInvoke(
  "Dio#get",
  ({
    Dio mirrorObj,
    String path,
  }) async {
    Response response = await mirrorObj.get(path);
    return response.data;
  },
  [
    "mirrorObj",
    "path",
  ],
);

var _dio_post = MXFunctionInvoke(
  "Dio#post",
  ({
    Dio mirrorObj,
    String path,
  }) async {
    Response response = await mirrorObj.post(path);
    return response.data;
  },
  [
    "mirrorObj",
    "path",
  ],
);

String _responseOBJtoJSON(Response response) {
  var data = response.data;
  ResponseType respType = response.request.responseType;
  if (respType == ResponseType.bytes) {
    data = base64Encode(data);
  }
  Map jsonMap = {};
  jsonMap["data"] = response.data;
  jsonMap["headers"] = response.headers.map;
  jsonMap["isRedirect"] = response.isRedirect;
  jsonMap["statusCode"] = response.statusCode;
  jsonMap["statusMessage"] = response.statusMessage;
  //jsonMap["redirects"] = response.redirects;
  jsonMap["extra"] = response.extra;
  String sendStr = json.encode(jsonMap);
  return sendStr;
}
// MX Modified end.

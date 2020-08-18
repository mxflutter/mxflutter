//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:dio/src/dio.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;
import 'dart:typed_data';
import 'package:dio/src/adapter.dart';
import 'package:dio/src/form_data.dart';
import 'package:dio/src/options.dart';
import 'package:dio/src/interceptor.dart';
import 'package:dio/src/headers.dart';
import 'package:dio/src/cancel_token.dart';
import 'package:dio/src/transformer.dart';
import 'package:dio/src/response.dart';
import 'package:dio/src/dio_error.dart';
import 'package:dio/src/entry/dio_for_native.dart';
import 'package:mxflutter/src/mx_js_bridge.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDioSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dio.funName] = _dio;
  m[_dio_request.funName] = _dio_request;
  return m;
}

var _dio = MXFunctionInvoke(
  "Dio",
  ({
    BaseOptions options,
  }) =>
      Dio(
    options,
  ),
  [
    "options",
  ],
);

var _dio_request = MXFunctionInvoke(
  "Dio#request",
  ({
    // String mirrorID,
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
      MXJSBridge.getInstance().invokeJSMirrorObj(
          // mirrorID: mirrorID,
          callbackID: onSendProgress,
          args: {"count": count, "total": total});
      },
      onReceiveProgress: (int count, int total) {
      MXJSBridge.getInstance().invokeJSMirrorObj(
          // mirrorID: mirrorID,
          callbackID: onSendProgress,
          args: {"count": count, "total": total});
      },
    );
    return _responseOBJtoJSON(response);
  },
  [
    // "mirrorID",
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

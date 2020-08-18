//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:dio/src/adapter.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/src/options.dart';
import 'package:dio/src/redirect_record.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAdapterSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_responseBody.funName] = _responseBody;
  m[_responseBodyFromString.funName] = _responseBodyFromString;
  m[_responseBodyFromBytes.funName] = _responseBodyFromBytes;
  return m;
}
var _responseBody = MXFunctionInvoke(
    "ResponseBody",
    (
      {
      Stream<Uint8List> stream,
      int statusCode,
      dynamic headers,
      String statusMessage,
      bool isRedirect,
      dynamic redirects,
      }
    ) =>
      ResponseBody(
      stream,
      statusCode,
      headers: toMapT<String, List<String>>(headers),
      statusMessage: statusMessage,
      isRedirect: isRedirect,
      redirects: toListT<RedirectRecord>(redirects),
    ),
    [
      "stream",
      "statusCode",
      "headers",
      "statusMessage",
      "isRedirect",
      "redirects",
    ],
);
var _responseBodyFromString = MXFunctionInvoke(
  "ResponseBody.fromString",
    (
      {
      String text,
      int statusCode,
      dynamic headers,
      String statusMessage,
      bool isRedirect,
      }
    ) =>
      ResponseBody.fromString(
      text,
      statusCode,
      headers: toMapT<String, List<String>>(headers),
      statusMessage: statusMessage,
      isRedirect: isRedirect,
    ),
    [
      "text",
      "statusCode",
      "headers",
      "statusMessage",
      "isRedirect",
    ],
);
var _responseBodyFromBytes = MXFunctionInvoke(
  "ResponseBody.fromBytes",
    (
      {
      dynamic bytes,
      int statusCode,
      dynamic headers,
      String statusMessage,
      bool isRedirect,
      }
    ) =>
      ResponseBody.fromBytes(
      toListT<int>(bytes),
      statusCode,
      headers: toMapT<String, List<String>>(headers),
      statusMessage: statusMessage,
      isRedirect: isRedirect,
    ),
    [
      "bytes",
      "statusCode",
      "headers",
      "statusMessage",
      "isRedirect",
    ],
);

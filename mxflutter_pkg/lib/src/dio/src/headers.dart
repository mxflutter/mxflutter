//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:dio/dio.dart';
import 'package:mxflutter/mxflutter.dart';

/// 把自己能处理的类注册到分发器中。
Map<String, MXFunctionInvoke> registerHeadersSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_headers.funName] = _headers;
  m[_headersAcceptHeader.funName] = _headersAcceptHeader;
  m[_headersContentEncodingHeader.funName] = _headersContentEncodingHeader;
  m[_headersContentLengthHeader.funName] = _headersContentLengthHeader;
  m[_headersContentTypeHeader.funName] = _headersContentTypeHeader;
  m[_headersWwwAuthenticateHeader.funName] = _headersWwwAuthenticateHeader;
  m[_headersJsonContentType.funName] = _headersJsonContentType;
  m[_headersFormUrlEncodedContentType.funName] = _headersFormUrlEncodedContentType;
  m[_headersFromMap.funName] = _headersFromMap;
  return m;
}

var _headers = MXFunctionInvoke(
  "Headers",
  () => Headers(),
  [],
);
var _headersAcceptHeader = MXFunctionInvoke("Headers.acceptHeader", () => Headers.acceptHeader);
var _headersContentEncodingHeader =
    MXFunctionInvoke("Headers.contentEncodingHeader", () => Headers.contentEncodingHeader);
var _headersContentLengthHeader = MXFunctionInvoke("Headers.contentLengthHeader", () => Headers.contentLengthHeader);
var _headersContentTypeHeader = MXFunctionInvoke("Headers.contentTypeHeader", () => Headers.contentTypeHeader);
var _headersWwwAuthenticateHeader =
    MXFunctionInvoke("Headers.wwwAuthenticateHeader", () => Headers.wwwAuthenticateHeader);
var _headersJsonContentType = MXFunctionInvoke("Headers.jsonContentType", () => Headers.jsonContentType);
var _headersFormUrlEncodedContentType =
    MXFunctionInvoke("Headers.formUrlEncodedContentType", () => Headers.formUrlEncodedContentType);
var _headersFromMap = MXFunctionInvoke(
  "Headers.fromMap",
  ({
    dynamic map,
  }) =>
      Headers.fromMap(
    toMapT<String, List<String>>(map),
  ),
  [
    "map",
  ],
);

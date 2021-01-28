//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mxflutter/mxflutter.dart';

/// 把自己能处理的类注册到分发器中。
Map<String, MXFunctionInvoke> registerMultipartFileSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_multipartFile.funName] = _multipartFile;
  m[_multipartFileFromBytes.funName] = _multipartFileFromBytes;
  m[_multipartFileFromString.funName] = _multipartFileFromString;
  return m;
}

var _multipartFile = MXFunctionInvoke(
  "MultipartFile",
  ({
    Stream<List<int>> stream,
    int length,
    String filename,
    MediaType contentType,
  }) =>
      MultipartFile(
    stream,
    length,
    filename: filename,
    contentType: contentType,
  ),
  [
    "stream",
    "length",
    "filename",
    "contentType",
  ],
);
var _multipartFileFromBytes = MXFunctionInvoke(
  "MultipartFile.fromBytes",
  ({
    dynamic value,
    String filename,
    MediaType contentType,
  }) =>
      MultipartFile.fromBytes(
    toListT<int>(value),
    filename: filename,
    contentType: contentType,
  ),
  [
    "value",
    "filename",
    "contentType",
  ],
);
var _multipartFileFromString = MXFunctionInvoke(
  "MultipartFile.fromString",
  ({
    String value,
    String filename,
    MediaType contentType,
  }) =>
      MultipartFile.fromString(
    value,
    filename: filename,
    contentType: contentType,
  ),
  [
    "value",
    "filename",
    "contentType",
  ],
);

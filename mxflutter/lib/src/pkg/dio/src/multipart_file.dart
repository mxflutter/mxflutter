//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:dio/src/multipart_file.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http_parser/http_parser.dart';
import 'package:dio/src/utils.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMultipartFileSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_multipartFile.funName] = _multipartFile;
  m[_multipartFileFromBytes.funName] = _multipartFileFromBytes;
  m[_multipartFileFromString.funName] = _multipartFileFromString;
  return m;
}
var _multipartFile = MXFunctionInvoke(
    "MultipartFile",
    (
      {
      Stream<List<int>> stream,
      int length,
      String filename,
      MediaType contentType,
      }
    ) =>
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
    (
      {
      dynamic value,
      String filename,
      MediaType contentType,
      }
    ) =>
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
    (
      {
      String value,
      String filename,
      MediaType contentType,
      }
    ) =>
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

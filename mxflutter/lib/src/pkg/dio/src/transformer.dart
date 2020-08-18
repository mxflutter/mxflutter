//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:dio/src/transformer.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:http_parser/http_parser.dart';
import 'package:dio/src/adapter.dart';
import 'package:dio/src/dio_error.dart';
import 'package:dio/src/headers.dart';
import 'package:dio/src/options.dart';
import 'package:dio/src/utils.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTransformerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_defaultTransformer.funName] = _defaultTransformer;
  return m;
}
var _defaultTransformer = MXFunctionInvoke(
    "DefaultTransformer",
    (
      {
      dynamic jsonDecodeCallback,
      }
    ) =>
      DefaultTransformer(
      jsonDecodeCallback: null,
    ),
    [
      "jsonDecodeCallback",
    ],
);

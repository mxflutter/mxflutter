//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:dio/src/adapters/io_adapter.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/src/adapter.dart';
import 'package:dio/src/options.dart';
import 'package:dio/src/dio_error.dart';
import 'package:dio/src/redirect_record.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIoAdapterSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_defaultHttpClientAdapter.funName] = _defaultHttpClientAdapter;
  return m;
}
var _defaultHttpClientAdapter = MXFunctionInvoke(
    "DefaultHttpClientAdapter",
    (
    ) =>
      DefaultHttpClientAdapter(
    ),
    [
    ],
);

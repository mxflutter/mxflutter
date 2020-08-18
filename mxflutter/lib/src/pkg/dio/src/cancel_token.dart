//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:dio/src/cancel_token.dart';
import 'dart:async';
import 'package:dio/src/dio_error.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCancelTokenSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cancelToken.funName] = _cancelToken;
  return m;
}

var _cancelToken = MXFunctionInvoke(
  "CancelToken",
  () => CancelToken(),
  [],
);

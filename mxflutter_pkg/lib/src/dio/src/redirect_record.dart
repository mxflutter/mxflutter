//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:dio/dio.dart';
import 'package:mxflutter/mxflutter.dart';

/// 把自己能处理的类注册到分发器中。
Map<String, MXFunctionInvoke> registerRedirectRecordSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_redirectRecord.funName] = _redirectRecord;
  return m;
}

var _redirectRecord = MXFunctionInvoke(
  "RedirectRecord",
  ({
    int statusCode,
    String method,
    Uri location,
  }) =>
      RedirectRecord(
    statusCode,
    method,
    location,
  ),
  [
    "statusCode",
    "method",
    "location",
  ],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:dio/src/redirect_record.dart';

///把自己能处理的类注册到分发器中
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

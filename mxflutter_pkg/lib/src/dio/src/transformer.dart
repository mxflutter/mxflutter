//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:dio/dio.dart';
import 'package:mxflutter/mxflutter.dart';

/// 把自己能处理的类注册到分发器中。
Map<String, MXFunctionInvoke> registerTransformerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_defaultTransformer.funName] = _defaultTransformer;
  return m;
}

var _defaultTransformer = MXFunctionInvoke(
  "DefaultTransformer",
  ({
    dynamic jsonDecodeCallback,
  }) =>
      DefaultTransformer(
    jsonDecodeCallback: null,
  ),
  [
    "jsonDecodeCallback",
  ],
);

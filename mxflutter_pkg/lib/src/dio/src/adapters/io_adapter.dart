//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:dio/adapter.dart';
import 'package:mxflutter/mxflutter.dart';

/// 把自己能处理的类注册到分发器中。
Map<String, MXFunctionInvoke> registerIoAdapterSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_defaultHttpClientAdapter.funName] = _defaultHttpClientAdapter;
  return m;
}

var _defaultHttpClientAdapter = MXFunctionInvoke(
  "DefaultHttpClientAdapter",
  () => DefaultHttpClientAdapter(),
  [],
);

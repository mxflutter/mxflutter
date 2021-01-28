//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/consolidate_response.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerConsolidateResponseSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}

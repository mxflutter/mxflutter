//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/_isolates_io.dart';
import 'dart:async';
import 'dart:developer';
import 'dart:isolate';
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/constants.dart';
import 'package:flutter/src/foundation/isolates.dart' as isolates;

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIsolatesIoSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}

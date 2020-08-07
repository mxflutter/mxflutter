//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/debug.dart';
import 'dart:async';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/platform.dart';
import 'package:flutter/src/foundation/print.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDebugSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}

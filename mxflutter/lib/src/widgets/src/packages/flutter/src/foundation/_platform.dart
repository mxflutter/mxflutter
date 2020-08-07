//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/_platform_io.dart';
import 'dart:io';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/platform.dart' as platform;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPlatformSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}

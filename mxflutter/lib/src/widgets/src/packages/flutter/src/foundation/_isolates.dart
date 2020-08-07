//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
Map<String, MXFunctionInvoke> registerIsolatesSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}

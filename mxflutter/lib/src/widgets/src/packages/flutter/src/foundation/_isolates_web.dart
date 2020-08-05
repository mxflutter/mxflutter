//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/_isolates_web.dart';
import 'package:flutter/src/foundation/isolates.dart';
import 'dart:async';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIsolatesWebSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}

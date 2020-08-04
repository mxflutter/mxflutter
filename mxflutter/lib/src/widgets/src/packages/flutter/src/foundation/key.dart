//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/key.dart';
import 'dart:ui';
import 'package:meta/meta.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerKeySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[valueKey.funName] = valueKey;
  return m;
}
var valueKey = MXFunctionInvoke(
    "ValueKey",
    ({
      dynamic value,
    }) =>
      ValueKey(
      value,
    ),
);

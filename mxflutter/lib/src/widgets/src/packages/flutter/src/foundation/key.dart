//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/key.dart';
import 'dart:ui';
import 'package:meta/meta.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerKeySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_key.funName] = _key;
  m[_valueKey.funName] = _valueKey;
  return m;
}

var _key = MXFunctionInvoke(
  "Key",
  ({
    String value,
  }) =>
      Key(
    value,
  ),
  [
    "value",
  ],
);
var _valueKey = MXFunctionInvoke(
  "ValueKey",
  ({
    dynamic value,
  }) =>
      ValueKey(
    value,
  ),
  [
    "value",
  ],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/key.dart';
import 'dart:ui' ;
import 'package:meta/meta.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerKeySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_key.funName] = _key;
  m[_key_empty.funName] = _key_empty;
  m[_localKey.funName] = _localKey;
  m[_valueKey.funName] = _valueKey;
  return m;
}
var _key = MXFunctionInvoke(
    "Key",
    (
      {
      String value,
      }
    ) =>
      Key(
      value,
    ),
);
var _key_empty = MXFunctionInvoke(
  "Key.empty",
    (
    ) =>
      Key.empty(
    ),
);
var _localKey = MXFunctionInvoke(
    "LocalKey",
    (
    ) =>
      LocalKey(
    ),
);
var _valueKey = MXFunctionInvoke(
    "ValueKey",
    (
      {
      dynamic value,
      }
    ) =>
      ValueKey(
      value,
    ),
);

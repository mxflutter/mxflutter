//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/bitfield.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBitfieldSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_bitField.funName] = _bitField;
  m[_bitFieldFilled.funName] = _bitFieldFilled;
  return m;
}

var _bitField = MXFunctionInvoke(
  "BitField",
  ({
    int length,
  }) =>
      BitField(
    length,
  ),
  [
    "length",
  ],
);
var _bitFieldFilled = MXFunctionInvoke(
  "BitField.filled",
  ({
    int length,
    bool value,
  }) =>
      BitField.filled(
    length,
    value,
  ),
  [
    "length",
    "value",
  ],
);

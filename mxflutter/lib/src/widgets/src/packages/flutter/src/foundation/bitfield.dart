//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/bitfield.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBitfieldSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_bitField.funName] = _bitField;
  m[_bitField_filled.funName] = _bitField_filled;
  return m;
}
var _bitField = MXFunctionInvoke(
    "BitField",
    (
      {
      int length,
      }
    ) =>
      BitField(
      length,
    ),
);
var _bitField_filled = MXFunctionInvoke(
  "BitField.filled",
    (
      {
      int length,
      bool value,
      }
    ) =>
      BitField.filled(
      length,
      value,
    ),
);

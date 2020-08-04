//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/_bitfield_web.dart';
import 'package:flutter/src/foundation/bitfield.dart';
import 'package:flutter/src/foundation/bitfield.dart';
import 'package:flutter/src/foundation/_bitfield_web.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBitfieldWebSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[bitField.funName] = bitField;
  m[bitField_filled.funName] = bitField_filled;
  return m;
}
var bitField = MXFunctionInvoke(
    "BitField",
    ({
      int length,
    }) =>
      BitField(
      length,
    ),
);
var bitField_filled = MXFunctionInvoke(
  "bitField.filled",
    ({
      int length,
      bool value,
    }) =>
      BitField.filled(
      length,
      value,
    ),
);

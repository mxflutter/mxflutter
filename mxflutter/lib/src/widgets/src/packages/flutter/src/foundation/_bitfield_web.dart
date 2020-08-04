//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/_bitfield_web.dart';
import 'package:flutter/src/foundation/bitfield.dart';


class MXProxyBitfieldWeb {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[bitField.funName] = bitField;
    m[bitField_filled.funName] = bitField_filled;
    return m;
  }
  static var bitField = MXFunctionInvoke(
      "BitField",
      ({
        int length,
      }) =>
        BitField(
        length,
      ),
    );
  static var bitField_filled = MXFunctionInvoke(
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
}

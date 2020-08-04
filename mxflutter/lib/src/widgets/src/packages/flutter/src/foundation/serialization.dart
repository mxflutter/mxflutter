//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/serialization.dart';
import 'dart:typed_data';
import 'package:typed_data/typed_buffers.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSerializationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[writeBuffer.funName] = writeBuffer;
  m[readBuffer.funName] = readBuffer;
  return m;
}
var writeBuffer = MXFunctionInvoke(
    "WriteBuffer",
    ({
    }) =>
      WriteBuffer(
    ),
);
var readBuffer = MXFunctionInvoke(
    "ReadBuffer",
    ({
      ByteData data,
    }) =>
      ReadBuffer(
      data,
    ),
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/serialization.dart';
import 'dart:typed_data';
import 'package:typed_data/typed_buffers.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSerializationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_writeBuffer.funName] = _writeBuffer;
  m[_readBuffer.funName] = _readBuffer;
  return m;
}

var _writeBuffer = MXFunctionInvoke(
  "WriteBuffer",
  () => WriteBuffer(),
  [],
);
var _readBuffer = MXFunctionInvoke(
  "ReadBuffer",
  ({
    ByteData data,
  }) =>
      ReadBuffer(
    data,
  ),
  [
    "data",
  ],
);

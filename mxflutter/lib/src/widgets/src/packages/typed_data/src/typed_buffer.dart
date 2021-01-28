//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:typed_data/src/typed_buffer.dart';
import 'dart:collection';
import 'dart:typed_data';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTypedBufferSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_uint8Buffer.funName] = _uint8Buffer;
  m[_int8Buffer.funName] = _int8Buffer;
  m[_uint8ClampedBuffer.funName] = _uint8ClampedBuffer;
  m[_uint16Buffer.funName] = _uint16Buffer;
  m[_int16Buffer.funName] = _int16Buffer;
  m[_uint32Buffer.funName] = _uint32Buffer;
  m[_int32Buffer.funName] = _int32Buffer;
  m[_uint64Buffer.funName] = _uint64Buffer;
  m[_int64Buffer.funName] = _int64Buffer;
  m[_float32Buffer.funName] = _float32Buffer;
  m[_float64Buffer.funName] = _float64Buffer;
  m[_int32x4Buffer.funName] = _int32x4Buffer;
  m[_float32x4Buffer.funName] = _float32x4Buffer;
  return m;
}

var _uint8Buffer = MXFunctionInvoke(
  "Uint8Buffer",
  ({
    int initialLength,
  }) =>
      Uint8Buffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);
var _int8Buffer = MXFunctionInvoke(
  "Int8Buffer",
  ({
    int initialLength,
  }) =>
      Int8Buffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);
var _uint8ClampedBuffer = MXFunctionInvoke(
  "Uint8ClampedBuffer",
  ({
    int initialLength,
  }) =>
      Uint8ClampedBuffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);
var _uint16Buffer = MXFunctionInvoke(
  "Uint16Buffer",
  ({
    int initialLength,
  }) =>
      Uint16Buffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);
var _int16Buffer = MXFunctionInvoke(
  "Int16Buffer",
  ({
    int initialLength,
  }) =>
      Int16Buffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);
var _uint32Buffer = MXFunctionInvoke(
  "Uint32Buffer",
  ({
    int initialLength,
  }) =>
      Uint32Buffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);
var _int32Buffer = MXFunctionInvoke(
  "Int32Buffer",
  ({
    int initialLength,
  }) =>
      Int32Buffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);
var _uint64Buffer = MXFunctionInvoke(
  "Uint64Buffer",
  ({
    int initialLength,
  }) =>
      Uint64Buffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);
var _int64Buffer = MXFunctionInvoke(
  "Int64Buffer",
  ({
    int initialLength,
  }) =>
      Int64Buffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);
var _float32Buffer = MXFunctionInvoke(
  "Float32Buffer",
  ({
    int initialLength,
  }) =>
      Float32Buffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);
var _float64Buffer = MXFunctionInvoke(
  "Float64Buffer",
  ({
    int initialLength,
  }) =>
      Float64Buffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);
var _int32x4Buffer = MXFunctionInvoke(
  "Int32x4Buffer",
  ({
    int initialLength,
  }) =>
      Int32x4Buffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);
var _float32x4Buffer = MXFunctionInvoke(
  "Float32x4Buffer",
  ({
    int initialLength,
  }) =>
      Float32x4Buffer(
    initialLength,
  ),
  [
    "initialLength",
  ],
);

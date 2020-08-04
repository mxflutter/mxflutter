//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:typed_data/typed_buffers.dart';
import 'dart:collection';
import 'dart:typed_data';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTypedBuffersSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[uint8Buffer.funName] = uint8Buffer;
  m[int8Buffer.funName] = int8Buffer;
  m[uint8ClampedBuffer.funName] = uint8ClampedBuffer;
  m[uint16Buffer.funName] = uint16Buffer;
  m[int16Buffer.funName] = int16Buffer;
  m[uint32Buffer.funName] = uint32Buffer;
  m[int32Buffer.funName] = int32Buffer;
  m[uint64Buffer.funName] = uint64Buffer;
  m[int64Buffer.funName] = int64Buffer;
  m[float32Buffer.funName] = float32Buffer;
  m[float64Buffer.funName] = float64Buffer;
  m[int32x4Buffer.funName] = int32x4Buffer;
  m[float32x4Buffer.funName] = float32x4Buffer;
  return m;
}
var uint8Buffer = MXFunctionInvoke(
    "Uint8Buffer",
    ({
      int initialLength,
    }) =>
      Uint8Buffer(
      initialLength,
    ),
);
var int8Buffer = MXFunctionInvoke(
    "Int8Buffer",
    ({
      int initialLength,
    }) =>
      Int8Buffer(
      initialLength,
    ),
);
var uint8ClampedBuffer = MXFunctionInvoke(
    "Uint8ClampedBuffer",
    ({
      int initialLength,
    }) =>
      Uint8ClampedBuffer(
      initialLength,
    ),
);
var uint16Buffer = MXFunctionInvoke(
    "Uint16Buffer",
    ({
      int initialLength,
    }) =>
      Uint16Buffer(
      initialLength,
    ),
);
var int16Buffer = MXFunctionInvoke(
    "Int16Buffer",
    ({
      int initialLength,
    }) =>
      Int16Buffer(
      initialLength,
    ),
);
var uint32Buffer = MXFunctionInvoke(
    "Uint32Buffer",
    ({
      int initialLength,
    }) =>
      Uint32Buffer(
      initialLength,
    ),
);
var int32Buffer = MXFunctionInvoke(
    "Int32Buffer",
    ({
      int initialLength,
    }) =>
      Int32Buffer(
      initialLength,
    ),
);
var uint64Buffer = MXFunctionInvoke(
    "Uint64Buffer",
    ({
      int initialLength,
    }) =>
      Uint64Buffer(
      initialLength,
    ),
);
var int64Buffer = MXFunctionInvoke(
    "Int64Buffer",
    ({
      int initialLength,
    }) =>
      Int64Buffer(
      initialLength,
    ),
);
var float32Buffer = MXFunctionInvoke(
    "Float32Buffer",
    ({
      int initialLength,
    }) =>
      Float32Buffer(
      initialLength,
    ),
);
var float64Buffer = MXFunctionInvoke(
    "Float64Buffer",
    ({
      int initialLength,
    }) =>
      Float64Buffer(
      initialLength,
    ),
);
var int32x4Buffer = MXFunctionInvoke(
    "Int32x4Buffer",
    ({
      int initialLength,
    }) =>
      Int32x4Buffer(
      initialLength,
    ),
);
var float32x4Buffer = MXFunctionInvoke(
    "Float32x4Buffer",
    ({
      int initialLength,
    }) =>
      Float32x4Buffer(
      initialLength,
    ),
);

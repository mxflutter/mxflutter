//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/message_codecs.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/message_codec.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMessageCodecsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_binaryCodec.funName] = _binaryCodec;
  m[_stringCodec.funName] = _stringCodec;
  m[_jSONMessageCodec.funName] = _jSONMessageCodec;
  m[_jSONMethodCodec.funName] = _jSONMethodCodec;
  m[_standardMessageCodec.funName] = _standardMessageCodec;
  m[_standardMethodCodec.funName] = _standardMethodCodec;
  return m;
}

var _binaryCodec = MXFunctionInvoke(
  "BinaryCodec",
  () => BinaryCodec(),
  [],
);
var _stringCodec = MXFunctionInvoke(
  "StringCodec",
  () => StringCodec(),
  [],
);
var _jSONMessageCodec = MXFunctionInvoke(
  "JSONMessageCodec",
  () => JSONMessageCodec(),
  [],
);
var _jSONMethodCodec = MXFunctionInvoke(
  "JSONMethodCodec",
  () => JSONMethodCodec(),
  [],
);
var _standardMessageCodec = MXFunctionInvoke(
  "StandardMessageCodec",
  () => StandardMessageCodec(),
  [],
);
var _standardMethodCodec = MXFunctionInvoke(
  "StandardMethodCodec",
  ({
    StandardMessageCodec messageCodec,
  }) =>
      StandardMethodCodec(
    messageCodec,
  ),
  [
    "messageCodec",
  ],
);

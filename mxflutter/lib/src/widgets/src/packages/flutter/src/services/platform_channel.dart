//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/platform_channel.dart';
import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/binary_messenger.dart';
import 'package:flutter/src/services/binding.dart';
import 'package:flutter/src/services/message_codec.dart';
import 'package:flutter/src/services/message_codecs.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPlatformChannelSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_basicMessageChannel.funName] = _basicMessageChannel;
  m[_methodChannel.funName] = _methodChannel;
  m[_optionalMethodChannel.funName] = _optionalMethodChannel;
  m[_eventChannel.funName] = _eventChannel;
  return m;
}

var _basicMessageChannel = MXFunctionInvoke(
  "BasicMessageChannel",
  ({
    String name,
    MessageCodec<dynamic> codec,
    BinaryMessenger binaryMessenger,
  }) =>
      BasicMessageChannel(
    name,
    codec,
    binaryMessenger: binaryMessenger,
  ),
  [
    "name",
    "codec",
    "binaryMessenger",
  ],
);
var _methodChannel = MXFunctionInvoke(
  "MethodChannel",
  ({
    String name,
    MethodCodec codec,
    BinaryMessenger binaryMessenger,
  }) =>
      MethodChannel(
    name,
    codec,
    binaryMessenger,
  ),
  [
    "name",
    "codec",
    "binaryMessenger",
  ],
);
var _optionalMethodChannel = MXFunctionInvoke(
  "OptionalMethodChannel",
  ({
    String name,
    MethodCodec codec,
  }) =>
      OptionalMethodChannel(
    name,
    codec,
  ),
  [
    "name",
    "codec",
  ],
);
var _eventChannel = MXFunctionInvoke(
  "EventChannel",
  ({
    String name,
    MethodCodec codec,
    BinaryMessenger binaryMessenger,
  }) =>
      EventChannel(
    name,
    codec,
    binaryMessenger,
  ),
  [
    "name",
    "codec",
    "binaryMessenger",
  ],
);

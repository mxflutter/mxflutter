//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/platform_messages.dart';
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/src/services/binary_messenger.dart';
import 'package:flutter/src/services/platform_channel.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPlatformMessagesSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_binaryMessagesSetMessageHandler.funName] = _binaryMessagesSetMessageHandler;
  m[_binaryMessagesSetMockMessageHandler.funName] = _binaryMessagesSetMockMessageHandler;
  return m;
}

var _binaryMessagesSetMessageHandler = MXFunctionInvoke(
  "BinaryMessages.setMessageHandler",
  ({
    String channel,
    dynamic handler,
  }) =>
      BinaryMessages.setMessageHandler(
    channel,
    null,
  ),
  [
    "channel",
    "handler",
  ],
);
var _binaryMessagesSetMockMessageHandler = MXFunctionInvoke(
  "BinaryMessages.setMockMessageHandler",
  ({
    String channel,
    dynamic handler,
  }) =>
      BinaryMessages.setMockMessageHandler(
    channel,
    null,
  ),
  [
    "channel",
    "handler",
  ],
);

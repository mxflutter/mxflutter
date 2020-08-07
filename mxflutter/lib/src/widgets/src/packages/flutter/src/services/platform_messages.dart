//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_binaryMessages_setMessageHandler.funName] = _binaryMessages_setMessageHandler;
  m[_binaryMessages_setMockMessageHandler.funName] = _binaryMessages_setMockMessageHandler;
  return m;
}
var _binaryMessages_setMessageHandler = MXFunctionInvoke(
  "BinaryMessages.setMessageHandler",
    (
      {
      String channel,
      dynamic handler,
      }
    ) =>
      BinaryMessages.setMessageHandler(
      channel,
      null,
    ),
);
var _binaryMessages_setMockMessageHandler = MXFunctionInvoke(
  "BinaryMessages.setMockMessageHandler",
    (
      {
      String channel,
      dynamic handler,
      }
    ) =>
      BinaryMessages.setMockMessageHandler(
      channel,
      null,
    ),
);

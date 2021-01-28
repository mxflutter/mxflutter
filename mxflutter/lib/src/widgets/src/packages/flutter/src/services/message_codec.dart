//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/message_codec.dart';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/platform_channel.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMessageCodecSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_methodCall.funName] = _methodCall;
  m[_platformException.funName] = _platformException;
  m[_missingPluginException.funName] = _missingPluginException;
  return m;
}

var _methodCall = MXFunctionInvoke(
  "MethodCall",
  ({
    String method,
    dynamic arguments,
  }) =>
      MethodCall(
    method,
    arguments,
  ),
  [
    "method",
    "__mx_arguments",
  ],
);
var _platformException = MXFunctionInvoke(
  "PlatformException",
  ({
    String code,
    String message,
    dynamic details,
  }) =>
      PlatformException(
    code: code,
    message: message,
    details: details,
  ),
  [
    "code",
    "message",
    "details",
  ],
);
var _missingPluginException = MXFunctionInvoke(
  "MissingPluginException",
  ({
    String message,
  }) =>
      MissingPluginException(
    message,
  ),
  [
    "message",
  ],
);

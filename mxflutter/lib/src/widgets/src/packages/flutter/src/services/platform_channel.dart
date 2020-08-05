//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
import 'dart:convert';
import 'package:flutter/src/services/system_channels.dart';
import 'dart:ui';
import 'package:flutter/src/services/asset_bundle.dart';
import 'dart:io';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPlatformChannelSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_basicMessageChannel.funName] = _basicMessageChannel;
  m[_methodChannel.funName] = _methodChannel;
  m[_optionalMethodChannel.funName] = _optionalMethodChannel;
  m[_eventChannel.funName] = _eventChannel;
  m[_methodCall.funName] = _methodCall;
  m[_platformException.funName] = _platformException;
  m[_missingPluginException.funName] = _missingPluginException;
  m[_binaryCodec.funName] = _binaryCodec;
  m[_stringCodec.funName] = _stringCodec;
  m[_jSONMessageCodec.funName] = _jSONMessageCodec;
  m[_jSONMethodCodec.funName] = _jSONMethodCodec;
  m[_standardMessageCodec.funName] = _standardMessageCodec;
  m[_standardMethodCodec.funName] = _standardMethodCodec;
  m[_networkAssetBundle.funName] = _networkAssetBundle;
  m[_platformAssetBundle.funName] = _platformAssetBundle;
  return m;
}
var _basicMessageChannel = MXFunctionInvoke(
    "BasicMessageChannel",
    (
      {
      String name,
      MessageCodec<dynamic> codec,
      BinaryMessenger binaryMessenger,
      }
    ) =>
      BasicMessageChannel(
      name,
      codec,
      binaryMessenger: binaryMessenger,
    ),
);
var _methodChannel = MXFunctionInvoke(
    "MethodChannel",
    (
      {
      String name,
      MethodCodec codec,
      BinaryMessenger binaryMessenger,
      }
    ) =>
      MethodChannel(
      name,
      codec,
      binaryMessenger,
    ),
);
var _optionalMethodChannel = MXFunctionInvoke(
    "OptionalMethodChannel",
    (
      {
      String name,
      MethodCodec codec,
      }
    ) =>
      OptionalMethodChannel(
      name,
      codec,
    ),
);
var _eventChannel = MXFunctionInvoke(
    "EventChannel",
    (
      {
      String name,
      MethodCodec codec,
      BinaryMessenger binaryMessenger,
      }
    ) =>
      EventChannel(
      name,
      codec,
      binaryMessenger,
    ),
);
var _methodCall = MXFunctionInvoke(
    "MethodCall",
    (
      {
      String method,
      dynamic arguments,
      }
    ) =>
      MethodCall(
      method,
      arguments,
    ),
);
var _platformException = MXFunctionInvoke(
    "PlatformException",
    (
      {
      String code,
      String message,
      dynamic details,
      }
    ) =>
      PlatformException(
      code: code,
      message: message,
      details: details,
    ),
);
var _missingPluginException = MXFunctionInvoke(
    "MissingPluginException",
    (
      {
      String message,
      }
    ) =>
      MissingPluginException(
      message,
    ),
);
var _binaryCodec = MXFunctionInvoke(
    "BinaryCodec",
    (
    ) =>
      BinaryCodec(
    ),
);
var _stringCodec = MXFunctionInvoke(
    "StringCodec",
    (
    ) =>
      StringCodec(
    ),
);
var _jSONMessageCodec = MXFunctionInvoke(
    "JSONMessageCodec",
    (
    ) =>
      JSONMessageCodec(
    ),
);
var _jSONMethodCodec = MXFunctionInvoke(
    "JSONMethodCodec",
    (
    ) =>
      JSONMethodCodec(
    ),
);
var _standardMessageCodec = MXFunctionInvoke(
    "StandardMessageCodec",
    (
    ) =>
      StandardMessageCodec(
    ),
);
var _standardMethodCodec = MXFunctionInvoke(
    "StandardMethodCodec",
    (
      {
      StandardMessageCodec messageCodec,
      }
    ) =>
      StandardMethodCodec(
      messageCodec,
    ),
);
var _networkAssetBundle = MXFunctionInvoke(
    "NetworkAssetBundle",
    (
      {
      Uri baseUrl,
      }
    ) =>
      NetworkAssetBundle(
      baseUrl,
    ),
);
var _platformAssetBundle = MXFunctionInvoke(
    "PlatformAssetBundle",
    (
    ) =>
      PlatformAssetBundle(
    ),
);

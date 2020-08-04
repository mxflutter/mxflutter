//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/platform_channel.dart';
import 'package:flutter/src/services/message_codec.dart';
import 'package:flutter/src/services/message_codecs.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:flutter/src/services/binding.dart';
import 'package:flutter/src/services/binary_messenger.dart';
import 'package:flutter/src/services/asset_bundle.dart';


class MXProxyPlatformChannel {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[basicMessageChannel.funName] = basicMessageChannel;
    m[methodChannel.funName] = methodChannel;
    m[optionalMethodChannel.funName] = optionalMethodChannel;
    m[eventChannel.funName] = eventChannel;
    m[methodCall.funName] = methodCall;
    m[platformException.funName] = platformException;
    m[missingPluginException.funName] = missingPluginException;
    m[binaryCodec.funName] = binaryCodec;
    m[stringCodec.funName] = stringCodec;
    m[jSONMessageCodec.funName] = jSONMessageCodec;
    m[jSONMethodCodec.funName] = jSONMethodCodec;
    m[standardMessageCodec.funName] = standardMessageCodec;
    m[standardMethodCodec.funName] = standardMethodCodec;
    m[systemChannels_.funName] = systemChannels_;
    m[networkAssetBundle.funName] = networkAssetBundle;
    m[platformAssetBundle.funName] = platformAssetBundle;
    return m;
  }
  static var basicMessageChannel = MXFunctionInvoke(
      "BasicMessageChannel",
      ({
        String name,
        MessageCodec<BasicMessageChannel::T> codec,
        BinaryMessenger binaryMessenger,
      }) =>
        BasicMessageChannel(
        name,
        codec,
        binaryMessenger: binaryMessenger,
      ),
    );
  static var methodChannel = MXFunctionInvoke(
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
    );
  static var optionalMethodChannel = MXFunctionInvoke(
      "OptionalMethodChannel",
      ({
        String name,
        MethodCodec codec,
      }) =>
        OptionalMethodChannel(
        name,
        codec,
      ),
    );
  static var eventChannel = MXFunctionInvoke(
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
    );
  static var methodCall = MXFunctionInvoke(
      "MethodCall",
      ({
        String method,
        dynamic arguments,
      }) =>
        MethodCall(
        method,
        arguments,
      ),
    );
  static var platformException = MXFunctionInvoke(
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
    );
  static var missingPluginException = MXFunctionInvoke(
      "MissingPluginException",
      ({
        String message,
      }) =>
        MissingPluginException(
        message,
      ),
    );
  static var binaryCodec = MXFunctionInvoke(
      "BinaryCodec",
      ({
      }) =>
        BinaryCodec(
      ),
    );
  static var stringCodec = MXFunctionInvoke(
      "StringCodec",
      ({
      }) =>
        StringCodec(
      ),
    );
  static var jSONMessageCodec = MXFunctionInvoke(
      "JSONMessageCodec",
      ({
      }) =>
        JSONMessageCodec(
      ),
    );
  static var jSONMethodCodec = MXFunctionInvoke(
      "JSONMethodCodec",
      ({
      }) =>
        JSONMethodCodec(
      ),
    );
  static var standardMessageCodec = MXFunctionInvoke(
      "StandardMessageCodec",
      ({
      }) =>
        StandardMessageCodec(
      ),
    );
  static var standardMethodCodec = MXFunctionInvoke(
      "StandardMethodCodec",
      ({
        StandardMessageCodec messageCodec,
      }) =>
        StandardMethodCodec(
        messageCodec,
      ),
    );
  static var systemChannels_ = MXFunctionInvoke(
    "systemChannels.",
      ({
      }) =>
        SystemChannels.(
      ),
    );
  static var networkAssetBundle = MXFunctionInvoke(
      "NetworkAssetBundle",
      ({
        Uri baseUrl,
      }) =>
        NetworkAssetBundle(
        baseUrl,
      ),
    );
  static var platformAssetBundle = MXFunctionInvoke(
      "PlatformAssetBundle",
      ({
      }) =>
        PlatformAssetBundle(
      ),
    );
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/raw_keyboard_android.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/src/services/keyboard_maps.dart';
import 'package:flutter/src/services/raw_keyboard.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRawKeyboardAndroidSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_rawKeyEventDataAndroid.funName] = _rawKeyEventDataAndroid;
  m[_rawKeyEventDataAndroid_modifierNone.funName] =
      _rawKeyEventDataAndroid_modifierNone;
  m[_rawKeyEventDataAndroid_modifierAlt.funName] =
      _rawKeyEventDataAndroid_modifierAlt;
  m[_rawKeyEventDataAndroid_modifierLeftAlt.funName] =
      _rawKeyEventDataAndroid_modifierLeftAlt;
  m[_rawKeyEventDataAndroid_modifierRightAlt.funName] =
      _rawKeyEventDataAndroid_modifierRightAlt;
  m[_rawKeyEventDataAndroid_modifierShift.funName] =
      _rawKeyEventDataAndroid_modifierShift;
  m[_rawKeyEventDataAndroid_modifierLeftShift.funName] =
      _rawKeyEventDataAndroid_modifierLeftShift;
  m[_rawKeyEventDataAndroid_modifierRightShift.funName] =
      _rawKeyEventDataAndroid_modifierRightShift;
  m[_rawKeyEventDataAndroid_modifierSym.funName] =
      _rawKeyEventDataAndroid_modifierSym;
  m[_rawKeyEventDataAndroid_modifierFunction.funName] =
      _rawKeyEventDataAndroid_modifierFunction;
  m[_rawKeyEventDataAndroid_modifierControl.funName] =
      _rawKeyEventDataAndroid_modifierControl;
  m[_rawKeyEventDataAndroid_modifierLeftControl.funName] =
      _rawKeyEventDataAndroid_modifierLeftControl;
  m[_rawKeyEventDataAndroid_modifierRightControl.funName] =
      _rawKeyEventDataAndroid_modifierRightControl;
  m[_rawKeyEventDataAndroid_modifierMeta.funName] =
      _rawKeyEventDataAndroid_modifierMeta;
  m[_rawKeyEventDataAndroid_modifierLeftMeta.funName] =
      _rawKeyEventDataAndroid_modifierLeftMeta;
  m[_rawKeyEventDataAndroid_modifierRightMeta.funName] =
      _rawKeyEventDataAndroid_modifierRightMeta;
  m[_rawKeyEventDataAndroid_modifierCapsLock.funName] =
      _rawKeyEventDataAndroid_modifierCapsLock;
  m[_rawKeyEventDataAndroid_modifierNumLock.funName] =
      _rawKeyEventDataAndroid_modifierNumLock;
  m[_rawKeyEventDataAndroid_modifierScrollLock.funName] =
      _rawKeyEventDataAndroid_modifierScrollLock;
  return m;
}

var _rawKeyEventDataAndroid = MXFunctionInvoke(
  "RawKeyEventDataAndroid",
  ({
    int flags = 0,
    int codePoint = 0,
    int plainCodePoint = 0,
    int keyCode = 0,
    int scanCode = 0,
    int metaState = 0,
    int eventSource = 0,
    int vendorId = 0,
    int productId = 0,
    int deviceId = 0,
    int repeatCount = 0,
  }) =>
      RawKeyEventDataAndroid(
    flags: flags,
    codePoint: codePoint,
    plainCodePoint: plainCodePoint,
    keyCode: keyCode,
    scanCode: scanCode,
    metaState: metaState,
    eventSource: eventSource,
    vendorId: vendorId,
    productId: productId,
    deviceId: deviceId,
    repeatCount: repeatCount,
  ),
  [
    "flags",
    "codePoint",
    "plainCodePoint",
    "keyCode",
    "scanCode",
    "metaState",
    "eventSource",
    "vendorId",
    "productId",
    "deviceId",
    "repeatCount",
  ],
);
var _rawKeyEventDataAndroid_modifierNone = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierNone",
    () => RawKeyEventDataAndroid.modifierNone);
var _rawKeyEventDataAndroid_modifierAlt = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierAlt",
    () => RawKeyEventDataAndroid.modifierAlt);
var _rawKeyEventDataAndroid_modifierLeftAlt = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierLeftAlt",
    () => RawKeyEventDataAndroid.modifierLeftAlt);
var _rawKeyEventDataAndroid_modifierRightAlt = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierRightAlt",
    () => RawKeyEventDataAndroid.modifierRightAlt);
var _rawKeyEventDataAndroid_modifierShift = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierShift",
    () => RawKeyEventDataAndroid.modifierShift);
var _rawKeyEventDataAndroid_modifierLeftShift = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierLeftShift",
    () => RawKeyEventDataAndroid.modifierLeftShift);
var _rawKeyEventDataAndroid_modifierRightShift = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierRightShift",
    () => RawKeyEventDataAndroid.modifierRightShift);
var _rawKeyEventDataAndroid_modifierSym = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierSym",
    () => RawKeyEventDataAndroid.modifierSym);
var _rawKeyEventDataAndroid_modifierFunction = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierFunction",
    () => RawKeyEventDataAndroid.modifierFunction);
var _rawKeyEventDataAndroid_modifierControl = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierControl",
    () => RawKeyEventDataAndroid.modifierControl);
var _rawKeyEventDataAndroid_modifierLeftControl = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierLeftControl",
    () => RawKeyEventDataAndroid.modifierLeftControl);
var _rawKeyEventDataAndroid_modifierRightControl = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierRightControl",
    () => RawKeyEventDataAndroid.modifierRightControl);
var _rawKeyEventDataAndroid_modifierMeta = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierMeta",
    () => RawKeyEventDataAndroid.modifierMeta);
var _rawKeyEventDataAndroid_modifierLeftMeta = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierLeftMeta",
    () => RawKeyEventDataAndroid.modifierLeftMeta);
var _rawKeyEventDataAndroid_modifierRightMeta = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierRightMeta",
    () => RawKeyEventDataAndroid.modifierRightMeta);
var _rawKeyEventDataAndroid_modifierCapsLock = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierCapsLock",
    () => RawKeyEventDataAndroid.modifierCapsLock);
var _rawKeyEventDataAndroid_modifierNumLock = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierNumLock",
    () => RawKeyEventDataAndroid.modifierNumLock);
var _rawKeyEventDataAndroid_modifierScrollLock = MXFunctionInvoke(
    "RawKeyEventDataAndroid.modifierScrollLock",
    () => RawKeyEventDataAndroid.modifierScrollLock);

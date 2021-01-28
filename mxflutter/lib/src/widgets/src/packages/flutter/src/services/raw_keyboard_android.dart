//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_rawKeyEventDataAndroidModifierNone.funName] = _rawKeyEventDataAndroidModifierNone;
  m[_rawKeyEventDataAndroidModifierAlt.funName] = _rawKeyEventDataAndroidModifierAlt;
  m[_rawKeyEventDataAndroidModifierLeftAlt.funName] = _rawKeyEventDataAndroidModifierLeftAlt;
  m[_rawKeyEventDataAndroidModifierRightAlt.funName] = _rawKeyEventDataAndroidModifierRightAlt;
  m[_rawKeyEventDataAndroidModifierShift.funName] = _rawKeyEventDataAndroidModifierShift;
  m[_rawKeyEventDataAndroidModifierLeftShift.funName] = _rawKeyEventDataAndroidModifierLeftShift;
  m[_rawKeyEventDataAndroidModifierRightShift.funName] = _rawKeyEventDataAndroidModifierRightShift;
  m[_rawKeyEventDataAndroidModifierSym.funName] = _rawKeyEventDataAndroidModifierSym;
  m[_rawKeyEventDataAndroidModifierFunction.funName] = _rawKeyEventDataAndroidModifierFunction;
  m[_rawKeyEventDataAndroidModifierControl.funName] = _rawKeyEventDataAndroidModifierControl;
  m[_rawKeyEventDataAndroidModifierLeftControl.funName] = _rawKeyEventDataAndroidModifierLeftControl;
  m[_rawKeyEventDataAndroidModifierRightControl.funName] = _rawKeyEventDataAndroidModifierRightControl;
  m[_rawKeyEventDataAndroidModifierMeta.funName] = _rawKeyEventDataAndroidModifierMeta;
  m[_rawKeyEventDataAndroidModifierLeftMeta.funName] = _rawKeyEventDataAndroidModifierLeftMeta;
  m[_rawKeyEventDataAndroidModifierRightMeta.funName] = _rawKeyEventDataAndroidModifierRightMeta;
  m[_rawKeyEventDataAndroidModifierCapsLock.funName] = _rawKeyEventDataAndroidModifierCapsLock;
  m[_rawKeyEventDataAndroidModifierNumLock.funName] = _rawKeyEventDataAndroidModifierNumLock;
  m[_rawKeyEventDataAndroidModifierScrollLock.funName] = _rawKeyEventDataAndroidModifierScrollLock;
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
var _rawKeyEventDataAndroidModifierNone =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierNone", () => RawKeyEventDataAndroid.modifierNone);
var _rawKeyEventDataAndroidModifierAlt =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierAlt", () => RawKeyEventDataAndroid.modifierAlt);
var _rawKeyEventDataAndroidModifierLeftAlt =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierLeftAlt", () => RawKeyEventDataAndroid.modifierLeftAlt);
var _rawKeyEventDataAndroidModifierRightAlt =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierRightAlt", () => RawKeyEventDataAndroid.modifierRightAlt);
var _rawKeyEventDataAndroidModifierShift =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierShift", () => RawKeyEventDataAndroid.modifierShift);
var _rawKeyEventDataAndroidModifierLeftShift =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierLeftShift", () => RawKeyEventDataAndroid.modifierLeftShift);
var _rawKeyEventDataAndroidModifierRightShift =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierRightShift", () => RawKeyEventDataAndroid.modifierRightShift);
var _rawKeyEventDataAndroidModifierSym =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierSym", () => RawKeyEventDataAndroid.modifierSym);
var _rawKeyEventDataAndroidModifierFunction =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierFunction", () => RawKeyEventDataAndroid.modifierFunction);
var _rawKeyEventDataAndroidModifierControl =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierControl", () => RawKeyEventDataAndroid.modifierControl);
var _rawKeyEventDataAndroidModifierLeftControl =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierLeftControl", () => RawKeyEventDataAndroid.modifierLeftControl);
var _rawKeyEventDataAndroidModifierRightControl =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierRightControl", () => RawKeyEventDataAndroid.modifierRightControl);
var _rawKeyEventDataAndroidModifierMeta =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierMeta", () => RawKeyEventDataAndroid.modifierMeta);
var _rawKeyEventDataAndroidModifierLeftMeta =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierLeftMeta", () => RawKeyEventDataAndroid.modifierLeftMeta);
var _rawKeyEventDataAndroidModifierRightMeta =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierRightMeta", () => RawKeyEventDataAndroid.modifierRightMeta);
var _rawKeyEventDataAndroidModifierCapsLock =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierCapsLock", () => RawKeyEventDataAndroid.modifierCapsLock);
var _rawKeyEventDataAndroidModifierNumLock =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierNumLock", () => RawKeyEventDataAndroid.modifierNumLock);
var _rawKeyEventDataAndroidModifierScrollLock =
    MXFunctionInvoke("RawKeyEventDataAndroid.modifierScrollLock", () => RawKeyEventDataAndroid.modifierScrollLock);

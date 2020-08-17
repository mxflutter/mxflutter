//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/raw_keyboard_web.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/src/services/keyboard_maps.dart';
import 'package:flutter/src/services/raw_keyboard.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRawKeyboardWebSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_rawKeyEventDataWeb.funName] = _rawKeyEventDataWeb;
  m[_rawKeyEventDataWeb_modifierNone.funName] =
      _rawKeyEventDataWeb_modifierNone;
  m[_rawKeyEventDataWeb_modifierShift.funName] =
      _rawKeyEventDataWeb_modifierShift;
  m[_rawKeyEventDataWeb_modifierAlt.funName] = _rawKeyEventDataWeb_modifierAlt;
  m[_rawKeyEventDataWeb_modifierControl.funName] =
      _rawKeyEventDataWeb_modifierControl;
  m[_rawKeyEventDataWeb_modifierMeta.funName] =
      _rawKeyEventDataWeb_modifierMeta;
  m[_rawKeyEventDataWeb_modifierNumLock.funName] =
      _rawKeyEventDataWeb_modifierNumLock;
  m[_rawKeyEventDataWeb_modifierCapsLock.funName] =
      _rawKeyEventDataWeb_modifierCapsLock;
  m[_rawKeyEventDataWeb_modifierScrollLock.funName] =
      _rawKeyEventDataWeb_modifierScrollLock;
  return m;
}

var _rawKeyEventDataWeb = MXFunctionInvoke(
  "RawKeyEventDataWeb",
  ({
    String code,
    String key,
    int metaState = 0,
  }) =>
      RawKeyEventDataWeb(
    code: code,
    key: key,
    metaState: metaState,
  ),
  [
    "code",
    "key",
    "metaState",
  ],
);
var _rawKeyEventDataWeb_modifierNone = MXFunctionInvoke(
    "RawKeyEventDataWeb.modifierNone", () => RawKeyEventDataWeb.modifierNone);
var _rawKeyEventDataWeb_modifierShift = MXFunctionInvoke(
    "RawKeyEventDataWeb.modifierShift", () => RawKeyEventDataWeb.modifierShift);
var _rawKeyEventDataWeb_modifierAlt = MXFunctionInvoke(
    "RawKeyEventDataWeb.modifierAlt", () => RawKeyEventDataWeb.modifierAlt);
var _rawKeyEventDataWeb_modifierControl = MXFunctionInvoke(
    "RawKeyEventDataWeb.modifierControl",
    () => RawKeyEventDataWeb.modifierControl);
var _rawKeyEventDataWeb_modifierMeta = MXFunctionInvoke(
    "RawKeyEventDataWeb.modifierMeta", () => RawKeyEventDataWeb.modifierMeta);
var _rawKeyEventDataWeb_modifierNumLock = MXFunctionInvoke(
    "RawKeyEventDataWeb.modifierNumLock",
    () => RawKeyEventDataWeb.modifierNumLock);
var _rawKeyEventDataWeb_modifierCapsLock = MXFunctionInvoke(
    "RawKeyEventDataWeb.modifierCapsLock",
    () => RawKeyEventDataWeb.modifierCapsLock);
var _rawKeyEventDataWeb_modifierScrollLock = MXFunctionInvoke(
    "RawKeyEventDataWeb.modifierScrollLock",
    () => RawKeyEventDataWeb.modifierScrollLock);

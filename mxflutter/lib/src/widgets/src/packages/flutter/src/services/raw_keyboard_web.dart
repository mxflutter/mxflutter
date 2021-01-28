//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_rawKeyEventDataWebModifierNone.funName] = _rawKeyEventDataWebModifierNone;
  m[_rawKeyEventDataWebModifierShift.funName] = _rawKeyEventDataWebModifierShift;
  m[_rawKeyEventDataWebModifierAlt.funName] = _rawKeyEventDataWebModifierAlt;
  m[_rawKeyEventDataWebModifierControl.funName] = _rawKeyEventDataWebModifierControl;
  m[_rawKeyEventDataWebModifierMeta.funName] = _rawKeyEventDataWebModifierMeta;
  m[_rawKeyEventDataWebModifierNumLock.funName] = _rawKeyEventDataWebModifierNumLock;
  m[_rawKeyEventDataWebModifierCapsLock.funName] = _rawKeyEventDataWebModifierCapsLock;
  m[_rawKeyEventDataWebModifierScrollLock.funName] = _rawKeyEventDataWebModifierScrollLock;
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
var _rawKeyEventDataWebModifierNone =
    MXFunctionInvoke("RawKeyEventDataWeb.modifierNone", () => RawKeyEventDataWeb.modifierNone);
var _rawKeyEventDataWebModifierShift =
    MXFunctionInvoke("RawKeyEventDataWeb.modifierShift", () => RawKeyEventDataWeb.modifierShift);
var _rawKeyEventDataWebModifierAlt =
    MXFunctionInvoke("RawKeyEventDataWeb.modifierAlt", () => RawKeyEventDataWeb.modifierAlt);
var _rawKeyEventDataWebModifierControl =
    MXFunctionInvoke("RawKeyEventDataWeb.modifierControl", () => RawKeyEventDataWeb.modifierControl);
var _rawKeyEventDataWebModifierMeta =
    MXFunctionInvoke("RawKeyEventDataWeb.modifierMeta", () => RawKeyEventDataWeb.modifierMeta);
var _rawKeyEventDataWebModifierNumLock =
    MXFunctionInvoke("RawKeyEventDataWeb.modifierNumLock", () => RawKeyEventDataWeb.modifierNumLock);
var _rawKeyEventDataWebModifierCapsLock =
    MXFunctionInvoke("RawKeyEventDataWeb.modifierCapsLock", () => RawKeyEventDataWeb.modifierCapsLock);
var _rawKeyEventDataWebModifierScrollLock =
    MXFunctionInvoke("RawKeyEventDataWeb.modifierScrollLock", () => RawKeyEventDataWeb.modifierScrollLock);

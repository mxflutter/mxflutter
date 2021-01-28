//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/raw_keyboard_fuchsia.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/src/services/keyboard_maps.dart';
import 'package:flutter/src/services/raw_keyboard.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRawKeyboardFuchsiaSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_rawKeyEventDataFuchsia.funName] = _rawKeyEventDataFuchsia;
  m[_rawKeyEventDataFuchsiaModifierNone.funName] = _rawKeyEventDataFuchsiaModifierNone;
  m[_rawKeyEventDataFuchsiaModifierCapsLock.funName] = _rawKeyEventDataFuchsiaModifierCapsLock;
  m[_rawKeyEventDataFuchsiaModifierLeftShift.funName] = _rawKeyEventDataFuchsiaModifierLeftShift;
  m[_rawKeyEventDataFuchsiaModifierRightShift.funName] = _rawKeyEventDataFuchsiaModifierRightShift;
  m[_rawKeyEventDataFuchsiaModifierShift.funName] = _rawKeyEventDataFuchsiaModifierShift;
  m[_rawKeyEventDataFuchsiaModifierLeftControl.funName] = _rawKeyEventDataFuchsiaModifierLeftControl;
  m[_rawKeyEventDataFuchsiaModifierRightControl.funName] = _rawKeyEventDataFuchsiaModifierRightControl;
  m[_rawKeyEventDataFuchsiaModifierControl.funName] = _rawKeyEventDataFuchsiaModifierControl;
  m[_rawKeyEventDataFuchsiaModifierLeftAlt.funName] = _rawKeyEventDataFuchsiaModifierLeftAlt;
  m[_rawKeyEventDataFuchsiaModifierRightAlt.funName] = _rawKeyEventDataFuchsiaModifierRightAlt;
  m[_rawKeyEventDataFuchsiaModifierAlt.funName] = _rawKeyEventDataFuchsiaModifierAlt;
  m[_rawKeyEventDataFuchsiaModifierLeftMeta.funName] = _rawKeyEventDataFuchsiaModifierLeftMeta;
  m[_rawKeyEventDataFuchsiaModifierRightMeta.funName] = _rawKeyEventDataFuchsiaModifierRightMeta;
  m[_rawKeyEventDataFuchsiaModifierMeta.funName] = _rawKeyEventDataFuchsiaModifierMeta;
  return m;
}

var _rawKeyEventDataFuchsia = MXFunctionInvoke(
  "RawKeyEventDataFuchsia",
  ({
    int hidUsage = 0,
    int codePoint = 0,
    int modifiers = 0,
  }) =>
      RawKeyEventDataFuchsia(
    hidUsage: hidUsage,
    codePoint: codePoint,
    modifiers: modifiers,
  ),
  [
    "hidUsage",
    "codePoint",
    "modifiers",
  ],
);
var _rawKeyEventDataFuchsiaModifierNone =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierNone", () => RawKeyEventDataFuchsia.modifierNone);
var _rawKeyEventDataFuchsiaModifierCapsLock =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierCapsLock", () => RawKeyEventDataFuchsia.modifierCapsLock);
var _rawKeyEventDataFuchsiaModifierLeftShift =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierLeftShift", () => RawKeyEventDataFuchsia.modifierLeftShift);
var _rawKeyEventDataFuchsiaModifierRightShift =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierRightShift", () => RawKeyEventDataFuchsia.modifierRightShift);
var _rawKeyEventDataFuchsiaModifierShift =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierShift", () => RawKeyEventDataFuchsia.modifierShift);
var _rawKeyEventDataFuchsiaModifierLeftControl =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierLeftControl", () => RawKeyEventDataFuchsia.modifierLeftControl);
var _rawKeyEventDataFuchsiaModifierRightControl =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierRightControl", () => RawKeyEventDataFuchsia.modifierRightControl);
var _rawKeyEventDataFuchsiaModifierControl =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierControl", () => RawKeyEventDataFuchsia.modifierControl);
var _rawKeyEventDataFuchsiaModifierLeftAlt =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierLeftAlt", () => RawKeyEventDataFuchsia.modifierLeftAlt);
var _rawKeyEventDataFuchsiaModifierRightAlt =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierRightAlt", () => RawKeyEventDataFuchsia.modifierRightAlt);
var _rawKeyEventDataFuchsiaModifierAlt =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierAlt", () => RawKeyEventDataFuchsia.modifierAlt);
var _rawKeyEventDataFuchsiaModifierLeftMeta =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierLeftMeta", () => RawKeyEventDataFuchsia.modifierLeftMeta);
var _rawKeyEventDataFuchsiaModifierRightMeta =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierRightMeta", () => RawKeyEventDataFuchsia.modifierRightMeta);
var _rawKeyEventDataFuchsiaModifierMeta =
    MXFunctionInvoke("RawKeyEventDataFuchsia.modifierMeta", () => RawKeyEventDataFuchsia.modifierMeta);

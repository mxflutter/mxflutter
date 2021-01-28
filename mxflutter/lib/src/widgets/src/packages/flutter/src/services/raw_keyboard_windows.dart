//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/raw_keyboard_windows.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/src/services/keyboard_maps.dart';
import 'package:flutter/src/services/raw_keyboard.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRawKeyboardWindowsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_rawKeyEventDataWindows.funName] = _rawKeyEventDataWindows;
  m[_rawKeyEventDataWindowsModifierShift.funName] = _rawKeyEventDataWindowsModifierShift;
  m[_rawKeyEventDataWindowsModifierLeftShift.funName] = _rawKeyEventDataWindowsModifierLeftShift;
  m[_rawKeyEventDataWindowsModifierRightShift.funName] = _rawKeyEventDataWindowsModifierRightShift;
  m[_rawKeyEventDataWindowsModifierControl.funName] = _rawKeyEventDataWindowsModifierControl;
  m[_rawKeyEventDataWindowsModifierLeftControl.funName] = _rawKeyEventDataWindowsModifierLeftControl;
  m[_rawKeyEventDataWindowsModifierRightControl.funName] = _rawKeyEventDataWindowsModifierRightControl;
  m[_rawKeyEventDataWindowsModifierAlt.funName] = _rawKeyEventDataWindowsModifierAlt;
  m[_rawKeyEventDataWindowsModifierLeftAlt.funName] = _rawKeyEventDataWindowsModifierLeftAlt;
  m[_rawKeyEventDataWindowsModifierRightAlt.funName] = _rawKeyEventDataWindowsModifierRightAlt;
  m[_rawKeyEventDataWindowsModifierLeftMeta.funName] = _rawKeyEventDataWindowsModifierLeftMeta;
  m[_rawKeyEventDataWindowsModifierRightMeta.funName] = _rawKeyEventDataWindowsModifierRightMeta;
  m[_rawKeyEventDataWindowsModifierCaps.funName] = _rawKeyEventDataWindowsModifierCaps;
  m[_rawKeyEventDataWindowsModifierNumLock.funName] = _rawKeyEventDataWindowsModifierNumLock;
  m[_rawKeyEventDataWindowsModifierScrollLock.funName] = _rawKeyEventDataWindowsModifierScrollLock;
  return m;
}

var _rawKeyEventDataWindows = MXFunctionInvoke(
  "RawKeyEventDataWindows",
  ({
    int keyCode = 0,
    int scanCode = 0,
    int characterCodePoint = 0,
    int modifiers = 0,
  }) =>
      RawKeyEventDataWindows(
    keyCode: keyCode,
    scanCode: scanCode,
    characterCodePoint: characterCodePoint,
    modifiers: modifiers,
  ),
  [
    "keyCode",
    "scanCode",
    "characterCodePoint",
    "modifiers",
  ],
);
var _rawKeyEventDataWindowsModifierShift =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierShift", () => RawKeyEventDataWindows.modifierShift);
var _rawKeyEventDataWindowsModifierLeftShift =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierLeftShift", () => RawKeyEventDataWindows.modifierLeftShift);
var _rawKeyEventDataWindowsModifierRightShift =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierRightShift", () => RawKeyEventDataWindows.modifierRightShift);
var _rawKeyEventDataWindowsModifierControl =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierControl", () => RawKeyEventDataWindows.modifierControl);
var _rawKeyEventDataWindowsModifierLeftControl =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierLeftControl", () => RawKeyEventDataWindows.modifierLeftControl);
var _rawKeyEventDataWindowsModifierRightControl =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierRightControl", () => RawKeyEventDataWindows.modifierRightControl);
var _rawKeyEventDataWindowsModifierAlt =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierAlt", () => RawKeyEventDataWindows.modifierAlt);
var _rawKeyEventDataWindowsModifierLeftAlt =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierLeftAlt", () => RawKeyEventDataWindows.modifierLeftAlt);
var _rawKeyEventDataWindowsModifierRightAlt =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierRightAlt", () => RawKeyEventDataWindows.modifierRightAlt);
var _rawKeyEventDataWindowsModifierLeftMeta =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierLeftMeta", () => RawKeyEventDataWindows.modifierLeftMeta);
var _rawKeyEventDataWindowsModifierRightMeta =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierRightMeta", () => RawKeyEventDataWindows.modifierRightMeta);
var _rawKeyEventDataWindowsModifierCaps =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierCaps", () => RawKeyEventDataWindows.modifierCaps);
var _rawKeyEventDataWindowsModifierNumLock =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierNumLock", () => RawKeyEventDataWindows.modifierNumLock);
var _rawKeyEventDataWindowsModifierScrollLock =
    MXFunctionInvoke("RawKeyEventDataWindows.modifierScrollLock", () => RawKeyEventDataWindows.modifierScrollLock);

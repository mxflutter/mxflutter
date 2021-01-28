//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/raw_keyboard_macos.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/src/services/keyboard_maps.dart';
import 'package:flutter/src/services/raw_keyboard.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRawKeyboardMacosSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_rawKeyEventDataMacOs.funName] = _rawKeyEventDataMacOs;
  m[_rawKeyEventDataMacOsModifierCapsLock.funName] = _rawKeyEventDataMacOsModifierCapsLock;
  m[_rawKeyEventDataMacOsModifierShift.funName] = _rawKeyEventDataMacOsModifierShift;
  m[_rawKeyEventDataMacOsModifierLeftShift.funName] = _rawKeyEventDataMacOsModifierLeftShift;
  m[_rawKeyEventDataMacOsModifierRightShift.funName] = _rawKeyEventDataMacOsModifierRightShift;
  m[_rawKeyEventDataMacOsModifierControl.funName] = _rawKeyEventDataMacOsModifierControl;
  m[_rawKeyEventDataMacOsModifierLeftControl.funName] = _rawKeyEventDataMacOsModifierLeftControl;
  m[_rawKeyEventDataMacOsModifierRightControl.funName] = _rawKeyEventDataMacOsModifierRightControl;
  m[_rawKeyEventDataMacOsModifierOption.funName] = _rawKeyEventDataMacOsModifierOption;
  m[_rawKeyEventDataMacOsModifierLeftOption.funName] = _rawKeyEventDataMacOsModifierLeftOption;
  m[_rawKeyEventDataMacOsModifierRightOption.funName] = _rawKeyEventDataMacOsModifierRightOption;
  m[_rawKeyEventDataMacOsModifierCommand.funName] = _rawKeyEventDataMacOsModifierCommand;
  m[_rawKeyEventDataMacOsModifierLeftCommand.funName] = _rawKeyEventDataMacOsModifierLeftCommand;
  m[_rawKeyEventDataMacOsModifierRightCommand.funName] = _rawKeyEventDataMacOsModifierRightCommand;
  m[_rawKeyEventDataMacOsModifierNumericPad.funName] = _rawKeyEventDataMacOsModifierNumericPad;
  m[_rawKeyEventDataMacOsModifierHelp.funName] = _rawKeyEventDataMacOsModifierHelp;
  m[_rawKeyEventDataMacOsModifierFunction.funName] = _rawKeyEventDataMacOsModifierFunction;
  m[_rawKeyEventDataMacOsDeviceIndependentMask.funName] = _rawKeyEventDataMacOsDeviceIndependentMask;
  return m;
}

var _rawKeyEventDataMacOs = MXFunctionInvoke(
  "RawKeyEventDataMacOs",
  ({
    String characters = '',
    String charactersIgnoringModifiers = '',
    int keyCode = 0,
    int modifiers = 0,
  }) =>
      RawKeyEventDataMacOs(
    characters: characters,
    charactersIgnoringModifiers: charactersIgnoringModifiers,
    keyCode: keyCode,
    modifiers: modifiers,
  ),
  [
    "characters",
    "charactersIgnoringModifiers",
    "keyCode",
    "modifiers",
  ],
);
var _rawKeyEventDataMacOsModifierCapsLock =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierCapsLock", () => RawKeyEventDataMacOs.modifierCapsLock);
var _rawKeyEventDataMacOsModifierShift =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierShift", () => RawKeyEventDataMacOs.modifierShift);
var _rawKeyEventDataMacOsModifierLeftShift =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierLeftShift", () => RawKeyEventDataMacOs.modifierLeftShift);
var _rawKeyEventDataMacOsModifierRightShift =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierRightShift", () => RawKeyEventDataMacOs.modifierRightShift);
var _rawKeyEventDataMacOsModifierControl =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierControl", () => RawKeyEventDataMacOs.modifierControl);
var _rawKeyEventDataMacOsModifierLeftControl =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierLeftControl", () => RawKeyEventDataMacOs.modifierLeftControl);
var _rawKeyEventDataMacOsModifierRightControl =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierRightControl", () => RawKeyEventDataMacOs.modifierRightControl);
var _rawKeyEventDataMacOsModifierOption =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierOption", () => RawKeyEventDataMacOs.modifierOption);
var _rawKeyEventDataMacOsModifierLeftOption =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierLeftOption", () => RawKeyEventDataMacOs.modifierLeftOption);
var _rawKeyEventDataMacOsModifierRightOption =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierRightOption", () => RawKeyEventDataMacOs.modifierRightOption);
var _rawKeyEventDataMacOsModifierCommand =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierCommand", () => RawKeyEventDataMacOs.modifierCommand);
var _rawKeyEventDataMacOsModifierLeftCommand =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierLeftCommand", () => RawKeyEventDataMacOs.modifierLeftCommand);
var _rawKeyEventDataMacOsModifierRightCommand =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierRightCommand", () => RawKeyEventDataMacOs.modifierRightCommand);
var _rawKeyEventDataMacOsModifierNumericPad =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierNumericPad", () => RawKeyEventDataMacOs.modifierNumericPad);
var _rawKeyEventDataMacOsModifierHelp =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierHelp", () => RawKeyEventDataMacOs.modifierHelp);
var _rawKeyEventDataMacOsModifierFunction =
    MXFunctionInvoke("RawKeyEventDataMacOs.modifierFunction", () => RawKeyEventDataMacOs.modifierFunction);
var _rawKeyEventDataMacOsDeviceIndependentMask =
    MXFunctionInvoke("RawKeyEventDataMacOs.deviceIndependentMask", () => RawKeyEventDataMacOs.deviceIndependentMask);

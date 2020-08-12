//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_rawKeyEventDataMacOs_modifierCapsLock.funName] = _rawKeyEventDataMacOs_modifierCapsLock;
  m[_rawKeyEventDataMacOs_modifierShift.funName] = _rawKeyEventDataMacOs_modifierShift;
  m[_rawKeyEventDataMacOs_modifierLeftShift.funName] = _rawKeyEventDataMacOs_modifierLeftShift;
  m[_rawKeyEventDataMacOs_modifierRightShift.funName] = _rawKeyEventDataMacOs_modifierRightShift;
  m[_rawKeyEventDataMacOs_modifierControl.funName] = _rawKeyEventDataMacOs_modifierControl;
  m[_rawKeyEventDataMacOs_modifierLeftControl.funName] = _rawKeyEventDataMacOs_modifierLeftControl;
  m[_rawKeyEventDataMacOs_modifierRightControl.funName] = _rawKeyEventDataMacOs_modifierRightControl;
  m[_rawKeyEventDataMacOs_modifierOption.funName] = _rawKeyEventDataMacOs_modifierOption;
  m[_rawKeyEventDataMacOs_modifierLeftOption.funName] = _rawKeyEventDataMacOs_modifierLeftOption;
  m[_rawKeyEventDataMacOs_modifierRightOption.funName] = _rawKeyEventDataMacOs_modifierRightOption;
  m[_rawKeyEventDataMacOs_modifierCommand.funName] = _rawKeyEventDataMacOs_modifierCommand;
  m[_rawKeyEventDataMacOs_modifierLeftCommand.funName] = _rawKeyEventDataMacOs_modifierLeftCommand;
  m[_rawKeyEventDataMacOs_modifierRightCommand.funName] = _rawKeyEventDataMacOs_modifierRightCommand;
  m[_rawKeyEventDataMacOs_modifierNumericPad.funName] = _rawKeyEventDataMacOs_modifierNumericPad;
  m[_rawKeyEventDataMacOs_modifierHelp.funName] = _rawKeyEventDataMacOs_modifierHelp;
  m[_rawKeyEventDataMacOs_modifierFunction.funName] = _rawKeyEventDataMacOs_modifierFunction;
  m[_rawKeyEventDataMacOs_deviceIndependentMask.funName] = _rawKeyEventDataMacOs_deviceIndependentMask;
  return m;
}
var _rawKeyEventDataMacOs = MXFunctionInvoke(
    "RawKeyEventDataMacOs",
    (
      {
      String characters = '',
      String charactersIgnoringModifiers = '',
      int keyCode = 0,
      int modifiers = 0,
      }
    ) =>
      RawKeyEventDataMacOs(
      characters: characters,
      charactersIgnoringModifiers: charactersIgnoringModifiers,
      keyCode: keyCode,
      modifiers: modifiers,
    ),
);
var _rawKeyEventDataMacOs_modifierCapsLock = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierCapsLock",
    (
    ) =>
      RawKeyEventDataMacOs.modifierCapsLock
);
var _rawKeyEventDataMacOs_modifierShift = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierShift",
    (
    ) =>
      RawKeyEventDataMacOs.modifierShift
);
var _rawKeyEventDataMacOs_modifierLeftShift = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierLeftShift",
    (
    ) =>
      RawKeyEventDataMacOs.modifierLeftShift
);
var _rawKeyEventDataMacOs_modifierRightShift = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierRightShift",
    (
    ) =>
      RawKeyEventDataMacOs.modifierRightShift
);
var _rawKeyEventDataMacOs_modifierControl = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierControl",
    (
    ) =>
      RawKeyEventDataMacOs.modifierControl
);
var _rawKeyEventDataMacOs_modifierLeftControl = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierLeftControl",
    (
    ) =>
      RawKeyEventDataMacOs.modifierLeftControl
);
var _rawKeyEventDataMacOs_modifierRightControl = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierRightControl",
    (
    ) =>
      RawKeyEventDataMacOs.modifierRightControl
);
var _rawKeyEventDataMacOs_modifierOption = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierOption",
    (
    ) =>
      RawKeyEventDataMacOs.modifierOption
);
var _rawKeyEventDataMacOs_modifierLeftOption = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierLeftOption",
    (
    ) =>
      RawKeyEventDataMacOs.modifierLeftOption
);
var _rawKeyEventDataMacOs_modifierRightOption = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierRightOption",
    (
    ) =>
      RawKeyEventDataMacOs.modifierRightOption
);
var _rawKeyEventDataMacOs_modifierCommand = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierCommand",
    (
    ) =>
      RawKeyEventDataMacOs.modifierCommand
);
var _rawKeyEventDataMacOs_modifierLeftCommand = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierLeftCommand",
    (
    ) =>
      RawKeyEventDataMacOs.modifierLeftCommand
);
var _rawKeyEventDataMacOs_modifierRightCommand = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierRightCommand",
    (
    ) =>
      RawKeyEventDataMacOs.modifierRightCommand
);
var _rawKeyEventDataMacOs_modifierNumericPad = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierNumericPad",
    (
    ) =>
      RawKeyEventDataMacOs.modifierNumericPad
);
var _rawKeyEventDataMacOs_modifierHelp = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierHelp",
    (
    ) =>
      RawKeyEventDataMacOs.modifierHelp
);
var _rawKeyEventDataMacOs_modifierFunction = MXFunctionInvoke(
  "RawKeyEventDataMacOs.modifierFunction",
    (
    ) =>
      RawKeyEventDataMacOs.modifierFunction
);
var _rawKeyEventDataMacOs_deviceIndependentMask = MXFunctionInvoke(
  "RawKeyEventDataMacOs.deviceIndependentMask",
    (
    ) =>
      RawKeyEventDataMacOs.deviceIndependentMask
);

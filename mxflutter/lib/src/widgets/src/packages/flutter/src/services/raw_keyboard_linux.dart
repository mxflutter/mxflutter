//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/raw_keyboard_linux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/src/services/keyboard_maps.dart';
import 'package:flutter/src/services/raw_keyboard.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRawKeyboardLinuxSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_rawKeyEventDataLinux.funName] = _rawKeyEventDataLinux;
  m[_keyHelper.funName] = _keyHelper;
  m[_gLFWKeyHelper.funName] = _gLFWKeyHelper;
  m[_gLFWKeyHelperModifierCapsLock.funName] = _gLFWKeyHelperModifierCapsLock;
  m[_gLFWKeyHelperModifierShift.funName] = _gLFWKeyHelperModifierShift;
  m[_gLFWKeyHelperModifierControl.funName] = _gLFWKeyHelperModifierControl;
  m[_gLFWKeyHelperModifierAlt.funName] = _gLFWKeyHelperModifierAlt;
  m[_gLFWKeyHelperModifierMeta.funName] = _gLFWKeyHelperModifierMeta;
  m[_gLFWKeyHelperModifierNumericPad.funName] = _gLFWKeyHelperModifierNumericPad;
  m[_gtkKeyHelper.funName] = _gtkKeyHelper;
  m[_gtkKeyHelperModifierShift.funName] = _gtkKeyHelperModifierShift;
  m[_gtkKeyHelperModifierCapsLock.funName] = _gtkKeyHelperModifierCapsLock;
  m[_gtkKeyHelperModifierControl.funName] = _gtkKeyHelperModifierControl;
  m[_gtkKeyHelperModifierMod1.funName] = _gtkKeyHelperModifierMod1;
  m[_gtkKeyHelperModifierMod2.funName] = _gtkKeyHelperModifierMod2;
  m[_gtkKeyHelperModifierMeta.funName] = _gtkKeyHelperModifierMeta;
  return m;
}

var _rawKeyEventDataLinux = MXFunctionInvoke(
  "RawKeyEventDataLinux",
  ({
    KeyHelper keyHelper,
    int unicodeScalarValues = 0,
    int scanCode = 0,
    int keyCode = 0,
    int modifiers = 0,
    bool isDown,
  }) =>
      RawKeyEventDataLinux(
    keyHelper: keyHelper,
    unicodeScalarValues: unicodeScalarValues,
    scanCode: scanCode,
    keyCode: keyCode,
    modifiers: modifiers,
    isDown: isDown,
  ),
  [
    "keyHelper",
    "unicodeScalarValues",
    "scanCode",
    "keyCode",
    "modifiers",
    "isDown",
  ],
);
var _keyHelper = MXFunctionInvoke(
  "KeyHelper",
  ({
    String toolkit,
  }) =>
      KeyHelper(
    toolkit,
  ),
  [
    "toolkit",
  ],
);
var _gLFWKeyHelper = MXFunctionInvoke(
  "GLFWKeyHelper",
  () => GLFWKeyHelper(),
  [],
);
var _gLFWKeyHelperModifierCapsLock =
    MXFunctionInvoke("GLFWKeyHelper.modifierCapsLock", () => GLFWKeyHelper.modifierCapsLock);
var _gLFWKeyHelperModifierShift = MXFunctionInvoke("GLFWKeyHelper.modifierShift", () => GLFWKeyHelper.modifierShift);
var _gLFWKeyHelperModifierControl =
    MXFunctionInvoke("GLFWKeyHelper.modifierControl", () => GLFWKeyHelper.modifierControl);
var _gLFWKeyHelperModifierAlt = MXFunctionInvoke("GLFWKeyHelper.modifierAlt", () => GLFWKeyHelper.modifierAlt);
var _gLFWKeyHelperModifierMeta = MXFunctionInvoke("GLFWKeyHelper.modifierMeta", () => GLFWKeyHelper.modifierMeta);
var _gLFWKeyHelperModifierNumericPad =
    MXFunctionInvoke("GLFWKeyHelper.modifierNumericPad", () => GLFWKeyHelper.modifierNumericPad);
var _gtkKeyHelper = MXFunctionInvoke(
  "GtkKeyHelper",
  () => GtkKeyHelper(),
  [],
);
var _gtkKeyHelperModifierShift = MXFunctionInvoke("GtkKeyHelper.modifierShift", () => GtkKeyHelper.modifierShift);
var _gtkKeyHelperModifierCapsLock =
    MXFunctionInvoke("GtkKeyHelper.modifierCapsLock", () => GtkKeyHelper.modifierCapsLock);
var _gtkKeyHelperModifierControl = MXFunctionInvoke("GtkKeyHelper.modifierControl", () => GtkKeyHelper.modifierControl);
var _gtkKeyHelperModifierMod1 = MXFunctionInvoke("GtkKeyHelper.modifierMod1", () => GtkKeyHelper.modifierMod1);
var _gtkKeyHelperModifierMod2 = MXFunctionInvoke("GtkKeyHelper.modifierMod2", () => GtkKeyHelper.modifierMod2);
var _gtkKeyHelperModifierMeta = MXFunctionInvoke("GtkKeyHelper.modifierMeta", () => GtkKeyHelper.modifierMeta);

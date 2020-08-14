//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_gLFWKeyHelper_modifierCapsLock.funName] = _gLFWKeyHelper_modifierCapsLock;
  m[_gLFWKeyHelper_modifierShift.funName] = _gLFWKeyHelper_modifierShift;
  m[_gLFWKeyHelper_modifierControl.funName] = _gLFWKeyHelper_modifierControl;
  m[_gLFWKeyHelper_modifierAlt.funName] = _gLFWKeyHelper_modifierAlt;
  m[_gLFWKeyHelper_modifierMeta.funName] = _gLFWKeyHelper_modifierMeta;
  m[_gLFWKeyHelper_modifierNumericPad.funName] = _gLFWKeyHelper_modifierNumericPad;
  return m;
}
var _rawKeyEventDataLinux = MXFunctionInvoke(
    "RawKeyEventDataLinux",
    (
      {
      KeyHelper keyHelper,
      int unicodeScalarValues = 0,
      int scanCode = 0,
      int keyCode = 0,
      int modifiers = 0,
      bool isDown,
      }
    ) =>
      RawKeyEventDataLinux(
      keyHelper: keyHelper,
      unicodeScalarValues: unicodeScalarValues,
      scanCode: scanCode,
      keyCode: keyCode,
      modifiers: modifiers,
      isDown: isDown,
    ),
);
var _keyHelper = MXFunctionInvoke(
    "KeyHelper",
    (
      {
      String toolkit,
      }
    ) =>
      KeyHelper(
      toolkit,
    ),
);
var _gLFWKeyHelper = MXFunctionInvoke(
    "GLFWKeyHelper",
    (
    ) =>
      GLFWKeyHelper(
    ),
);
var _gLFWKeyHelper_modifierCapsLock = MXFunctionInvoke(
  "GLFWKeyHelper.modifierCapsLock",
    (
    ) =>
      GLFWKeyHelper.modifierCapsLock
);
var _gLFWKeyHelper_modifierShift = MXFunctionInvoke(
  "GLFWKeyHelper.modifierShift",
    (
    ) =>
      GLFWKeyHelper.modifierShift
);
var _gLFWKeyHelper_modifierControl = MXFunctionInvoke(
  "GLFWKeyHelper.modifierControl",
    (
    ) =>
      GLFWKeyHelper.modifierControl
);
var _gLFWKeyHelper_modifierAlt = MXFunctionInvoke(
  "GLFWKeyHelper.modifierAlt",
    (
    ) =>
      GLFWKeyHelper.modifierAlt
);
var _gLFWKeyHelper_modifierMeta = MXFunctionInvoke(
  "GLFWKeyHelper.modifierMeta",
    (
    ) =>
      GLFWKeyHelper.modifierMeta
);
var _gLFWKeyHelper_modifierNumericPad = MXFunctionInvoke(
  "GLFWKeyHelper.modifierNumericPad",
    (
    ) =>
      GLFWKeyHelper.modifierNumericPad
);

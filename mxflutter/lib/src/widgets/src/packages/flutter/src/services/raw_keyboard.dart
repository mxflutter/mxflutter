//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/src/services/raw_keyboard_android.dart';
import 'package:flutter/src/services/raw_keyboard_fuchsia.dart';
import 'package:flutter/src/services/raw_keyboard_linux.dart';
import 'package:flutter/src/services/raw_keyboard_macos.dart';
import 'package:flutter/src/services/raw_keyboard_windows.dart';
import 'package:flutter/src/services/system_channels.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRawKeyboardSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_keyboardSide.funName] = _keyboardSide;
  m[_modifierKey.funName] = _modifierKey;
  m[_rawKeyEventFromMessage.funName] = _rawKeyEventFromMessage;
  m[_rawKeyDownEvent.funName] = _rawKeyDownEvent;
  m[_rawKeyUpEvent.funName] = _rawKeyUpEvent;
  return m;
}

var _keyboardSide = MXFunctionInvoke(
    "KeyboardSide", ({String name, int index}) => MXKeyboardSide.parse(name, index), ["name", "index"]);
var _modifierKey =
    MXFunctionInvoke("ModifierKey", ({String name, int index}) => MXModifierKey.parse(name, index), ["name", "index"]);
var _rawKeyEventFromMessage = MXFunctionInvoke(
  "RawKeyEvent.fromMessage",
  ({
    dynamic message,
  }) =>
      RawKeyEvent.fromMessage(
    toMapT<String, dynamic>(message),
  ),
  [
    "message",
  ],
);
var _rawKeyDownEvent = MXFunctionInvoke(
  "RawKeyDownEvent",
  ({
    RawKeyEventData data,
    String character,
  }) =>
      RawKeyDownEvent(
    data: data,
    character: character,
  ),
  [
    "data",
    "character",
  ],
);
var _rawKeyUpEvent = MXFunctionInvoke(
  "RawKeyUpEvent",
  ({
    RawKeyEventData data,
    String character,
  }) =>
      RawKeyUpEvent(
    data: data,
    character: character,
  ),
  [
    "data",
    "character",
  ],
);

class MXKeyboardSide {
  static KeyboardSide parse(String name, int index) {
    switch (name) {
      case 'KeyboardSide.any':
        return KeyboardSide.any;
      case 'KeyboardSide.left':
        return KeyboardSide.left;
      case 'KeyboardSide.right':
        return KeyboardSide.right;
      case 'KeyboardSide.all':
        return KeyboardSide.all;
    }
    return null;
  }
}

class MXModifierKey {
  static ModifierKey parse(String name, int index) {
    switch (name) {
      case 'ModifierKey.controlModifier':
        return ModifierKey.controlModifier;
      case 'ModifierKey.shiftModifier':
        return ModifierKey.shiftModifier;
      case 'ModifierKey.altModifier':
        return ModifierKey.altModifier;
      case 'ModifierKey.metaModifier':
        return ModifierKey.metaModifier;
      case 'ModifierKey.capsLockModifier':
        return ModifierKey.capsLockModifier;
      case 'ModifierKey.numLockModifier':
        return ModifierKey.numLockModifier;
      case 'ModifierKey.scrollLockModifier':
        return ModifierKey.scrollLockModifier;
      case 'ModifierKey.functionModifier':
        return ModifierKey.functionModifier;
      case 'ModifierKey.symbolModifier':
        return ModifierKey.symbolModifier;
    }
    return null;
  }
}

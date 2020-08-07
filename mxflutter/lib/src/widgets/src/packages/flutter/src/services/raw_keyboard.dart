//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
import 'package:flutter/src/services/system_channels.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRawKeyboardSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_keyboardSide.funName] = _keyboardSide;
  m[_modifierKey.funName] = _modifierKey;
  m[_rawKeyEvent_fromMessage.funName] = _rawKeyEvent_fromMessage;
  m[_rawKeyDownEvent.funName] = _rawKeyDownEvent;
  m[_rawKeyUpEvent.funName] = _rawKeyUpEvent;
  return m;
}
var _keyboardSide = MXFunctionInvoke(
    "KeyboardSide",
    ({Map args}) => MXKeyboardSide.parse(args),
  );
var _modifierKey = MXFunctionInvoke(
    "ModifierKey",
    ({Map args}) => MXModifierKey.parse(args),
  );
var _rawKeyEvent_fromMessage = MXFunctionInvoke(
  "RawKeyEvent.fromMessage",
    (
      {
      Map<String, dynamic> message,
      }
    ) =>
      RawKeyEvent.fromMessage(
      message,
    ),
);
var _rawKeyDownEvent = MXFunctionInvoke(
    "RawKeyDownEvent",
    (
      {
      RawKeyEventData data,
      String character,
      }
    ) =>
      RawKeyDownEvent(
      data: data,
      character: character,
    ),
);
var _rawKeyUpEvent = MXFunctionInvoke(
    "RawKeyUpEvent",
    (
      {
      RawKeyEventData data,
      String character,
      }
    ) =>
      RawKeyUpEvent(
      data: data,
      character: character,
    ),
);
class MXKeyboardSide {
  static Map str2VMap = {
    'KeyboardSide.any': KeyboardSide.any,
    'KeyboardSide.left': KeyboardSide.left,
    'KeyboardSide.right': KeyboardSide.right,
    'KeyboardSide.all': KeyboardSide.all,
  };
  static KeyboardSide parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXModifierKey {
  static Map str2VMap = {
    'ModifierKey.controlModifier': ModifierKey.controlModifier,
    'ModifierKey.shiftModifier': ModifierKey.shiftModifier,
    'ModifierKey.altModifier': ModifierKey.altModifier,
    'ModifierKey.metaModifier': ModifierKey.metaModifier,
    'ModifierKey.capsLockModifier': ModifierKey.capsLockModifier,
    'ModifierKey.numLockModifier': ModifierKey.numLockModifier,
    'ModifierKey.scrollLockModifier': ModifierKey.scrollLockModifier,
    'ModifierKey.functionModifier': ModifierKey.functionModifier,
    'ModifierKey.symbolModifier': ModifierKey.symbolModifier,
  };
  static ModifierKey parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

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
Map<String, MXFunctionInvoke> registerRawKeyboardSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_rawKeyEventDataWeb.funName] = _rawKeyEventDataWeb;
  return m;
}
var _rawKeyEventDataWeb = MXFunctionInvoke(
    "RawKeyEventDataWeb",
    (
      {
      String code,
      String key,
      int metaState = 0,
      }
    ) =>
      RawKeyEventDataWeb(
      code: code,
      key: key,
      metaState: metaState,
    ),
);
fierKey;
  m[_rawKeyEvent_fromMessage.funName] = _rawKeyEvent_fromMessage;
  m[_rawKeyDownEvent.funName] = _rawKeyDownEvent;
  m[_rawKeyUpEvent.funName] = _rawKeyUpEvent;
  return m;
}
var _keyboardSide = MXFunctionInvoke(
    "KeyboardSide",
    ({String name, int index}) => MXKeyboardSide.parse(name, index),
  );
var _modifierKey = MXFunctionInvoke(
    "ModifierKey",
    ({String name, int index}) => MXModifierKey.parse(name, index),
  );
var _rawKeyEvent_fromMessage = MXFunctionInvoke(
  "RawKeyEvent.fromMessage",
    (
      {
      dynamic message,
      }
    ) =>
      RawKeyEvent.fromMessage(
      toMapT<String, dynamic>(message),
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
  static KeyboardSide parse(String name, int index) {
    switch(name) {
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
    switch(name) {
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

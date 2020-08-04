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
import 'package:flutter/src/services/raw_keyboard_macos.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/src/services/keyboard_maps.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'package:flutter/src/services/raw_keyboard_linux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/src/services/keyboard_maps.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'package:flutter/src/services/raw_keyboard_fuchsia.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/src/services/keyboard_maps.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'package:flutter/src/services/raw_keyboard_android.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/src/services/keyboard_maps.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
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
import 'package:flutter/src/services/raw_keyboard_web.dart';
import 'package:flutter/src/services/system_channels.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRawKeyboardWebSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[rawKeyEventDataWeb.funName] = rawKeyEventDataWeb;
  m[rawKeyEventDataMacOs.funName] = rawKeyEventDataMacOs;
  m[rawKeyEventDataLinux.funName] = rawKeyEventDataLinux;
  m[gLFWKeyHelper.funName] = gLFWKeyHelper;
  m[rawKeyEventDataFuchsia.funName] = rawKeyEventDataFuchsia;
  m[rawKeyEventDataAndroid.funName] = rawKeyEventDataAndroid;
  m[keyboardSide.funName] = keyboardSide;
  m[modifierKey.funName] = modifierKey;
  m[rawKeyDownEvent.funName] = rawKeyDownEvent;
  m[rawKeyUpEvent.funName] = rawKeyUpEvent;
  return m;
}
var rawKeyEventDataWeb = MXFunctionInvoke(
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
);
var rawKeyEventDataMacOs = MXFunctionInvoke(
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
);
var rawKeyEventDataLinux = MXFunctionInvoke(
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
);
var gLFWKeyHelper = MXFunctionInvoke(
    "GLFWKeyHelper",
    ({
    }) =>
      GLFWKeyHelper(
    ),
);
var rawKeyEventDataFuchsia = MXFunctionInvoke(
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
);
var rawKeyEventDataAndroid = MXFunctionInvoke(
    "RawKeyEventDataAndroid",
    ({
      int flags = 0,
      int codePoint = 0,
      int plainCodePoint = 0,
      int keyCode = 0,
      int scanCode = 0,
      int metaState = 0,
      int eventSource = 0,
      int vendorId = 0,
      int productId = 0,
      int deviceId = 0,
      int repeatCount = 0,
    }) =>
      RawKeyEventDataAndroid(
      flags: flags,
      codePoint: codePoint,
      plainCodePoint: plainCodePoint,
      keyCode: keyCode,
      scanCode: scanCode,
      metaState: metaState,
      eventSource: eventSource,
      vendorId: vendorId,
      productId: productId,
      deviceId: deviceId,
      repeatCount: repeatCount,
    ),
);
var keyboardSide = MXFunctionInvoke(
    "KeyboardSide",
    ({Map args}) => MXKeyboardSide.parse(args),
  );
var modifierKey = MXFunctionInvoke(
    "ModifierKey",
    ({Map args}) => MXModifierKey.parse(args),
  );
var rawKeyDownEvent = MXFunctionInvoke(
    "RawKeyDownEvent",
    ({
      RawKeyEventData data,
      String character,
    }) =>
      RawKeyDownEvent(
      data: data,
      character: character,
    ),
);
var rawKeyUpEvent = MXFunctionInvoke(
    "RawKeyUpEvent",
    ({
      RawKeyEventData data,
      String character,
    }) =>
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

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_rawKeyEventDataFuchsia_modifierNone.funName] =
      _rawKeyEventDataFuchsia_modifierNone;
  m[_rawKeyEventDataFuchsia_modifierCapsLock.funName] =
      _rawKeyEventDataFuchsia_modifierCapsLock;
  m[_rawKeyEventDataFuchsia_modifierLeftShift.funName] =
      _rawKeyEventDataFuchsia_modifierLeftShift;
  m[_rawKeyEventDataFuchsia_modifierRightShift.funName] =
      _rawKeyEventDataFuchsia_modifierRightShift;
  m[_rawKeyEventDataFuchsia_modifierShift.funName] =
      _rawKeyEventDataFuchsia_modifierShift;
  m[_rawKeyEventDataFuchsia_modifierLeftControl.funName] =
      _rawKeyEventDataFuchsia_modifierLeftControl;
  m[_rawKeyEventDataFuchsia_modifierRightControl.funName] =
      _rawKeyEventDataFuchsia_modifierRightControl;
  m[_rawKeyEventDataFuchsia_modifierControl.funName] =
      _rawKeyEventDataFuchsia_modifierControl;
  m[_rawKeyEventDataFuchsia_modifierLeftAlt.funName] =
      _rawKeyEventDataFuchsia_modifierLeftAlt;
  m[_rawKeyEventDataFuchsia_modifierRightAlt.funName] =
      _rawKeyEventDataFuchsia_modifierRightAlt;
  m[_rawKeyEventDataFuchsia_modifierAlt.funName] =
      _rawKeyEventDataFuchsia_modifierAlt;
  m[_rawKeyEventDataFuchsia_modifierLeftMeta.funName] =
      _rawKeyEventDataFuchsia_modifierLeftMeta;
  m[_rawKeyEventDataFuchsia_modifierRightMeta.funName] =
      _rawKeyEventDataFuchsia_modifierRightMeta;
  m[_rawKeyEventDataFuchsia_modifierMeta.funName] =
      _rawKeyEventDataFuchsia_modifierMeta;
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
var _rawKeyEventDataFuchsia_modifierNone = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierNone",
    () => RawKeyEventDataFuchsia.modifierNone);
var _rawKeyEventDataFuchsia_modifierCapsLock = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierCapsLock",
    () => RawKeyEventDataFuchsia.modifierCapsLock);
var _rawKeyEventDataFuchsia_modifierLeftShift = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierLeftShift",
    () => RawKeyEventDataFuchsia.modifierLeftShift);
var _rawKeyEventDataFuchsia_modifierRightShift = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierRightShift",
    () => RawKeyEventDataFuchsia.modifierRightShift);
var _rawKeyEventDataFuchsia_modifierShift = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierShift",
    () => RawKeyEventDataFuchsia.modifierShift);
var _rawKeyEventDataFuchsia_modifierLeftControl = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierLeftControl",
    () => RawKeyEventDataFuchsia.modifierLeftControl);
var _rawKeyEventDataFuchsia_modifierRightControl = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierRightControl",
    () => RawKeyEventDataFuchsia.modifierRightControl);
var _rawKeyEventDataFuchsia_modifierControl = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierControl",
    () => RawKeyEventDataFuchsia.modifierControl);
var _rawKeyEventDataFuchsia_modifierLeftAlt = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierLeftAlt",
    () => RawKeyEventDataFuchsia.modifierLeftAlt);
var _rawKeyEventDataFuchsia_modifierRightAlt = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierRightAlt",
    () => RawKeyEventDataFuchsia.modifierRightAlt);
var _rawKeyEventDataFuchsia_modifierAlt = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierAlt",
    () => RawKeyEventDataFuchsia.modifierAlt);
var _rawKeyEventDataFuchsia_modifierLeftMeta = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierLeftMeta",
    () => RawKeyEventDataFuchsia.modifierLeftMeta);
var _rawKeyEventDataFuchsia_modifierRightMeta = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierRightMeta",
    () => RawKeyEventDataFuchsia.modifierRightMeta);
var _rawKeyEventDataFuchsia_modifierMeta = MXFunctionInvoke(
    "RawKeyEventDataFuchsia.modifierMeta",
    () => RawKeyEventDataFuchsia.modifierMeta);

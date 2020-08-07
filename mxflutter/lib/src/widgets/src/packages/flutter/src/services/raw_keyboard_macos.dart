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

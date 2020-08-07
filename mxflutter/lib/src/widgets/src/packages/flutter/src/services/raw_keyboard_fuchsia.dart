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
  return m;
}
var _rawKeyEventDataFuchsia = MXFunctionInvoke(
    "RawKeyEventDataFuchsia",
    (
      {
      int hidUsage = 0,
      int codePoint = 0,
      int modifiers = 0,
      }
    ) =>
      RawKeyEventDataFuchsia(
      hidUsage: hidUsage,
      codePoint: codePoint,
      modifiers: modifiers,
    ),
);

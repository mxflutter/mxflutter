//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/foundation.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerKeyboardKeySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[logicalKeyboardKey.funName] = logicalKeyboardKey;
  m[physicalKeyboardKey.funName] = physicalKeyboardKey;
  return m;
}
var logicalKeyboardKey = MXFunctionInvoke(
    "LogicalKeyboardKey",
    ({
      int keyId,
      String debugName,
      String keyLabel,
    }) =>
      LogicalKeyboardKey(
      keyId,
      debugName: debugName,
      keyLabel: keyLabel,
    ),
);
var physicalKeyboardKey = MXFunctionInvoke(
    "PhysicalKeyboardKey",
    ({
      int usbHidUsage,
      String debugName,
    }) =>
      PhysicalKeyboardKey(
      usbHidUsage,
      debugName: debugName,
    ),
);

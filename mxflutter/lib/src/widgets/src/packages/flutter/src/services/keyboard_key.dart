//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/keyboard_key.dart';


class MXProxyKeyboardKey {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[logicalKeyboardKey.funName] = logicalKeyboardKey;
    m[physicalKeyboardKey.funName] = physicalKeyboardKey;
    return m;
  }
  static var logicalKeyboardKey = MXFunctionInvoke(
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
  static var physicalKeyboardKey = MXFunctionInvoke(
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
}

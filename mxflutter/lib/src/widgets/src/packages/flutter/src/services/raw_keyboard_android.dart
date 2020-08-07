//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/raw_keyboard_android.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_key.dart';
import 'package:flutter/src/services/keyboard_maps.dart';
import 'package:flutter/src/services/raw_keyboard.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRawKeyboardAndroidSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_rawKeyEventDataAndroid.funName] = _rawKeyEventDataAndroid;
  return m;
}
var _rawKeyEventDataAndroid = MXFunctionInvoke(
    "RawKeyEventDataAndroid",
    (
      {
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
      }
    ) =>
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

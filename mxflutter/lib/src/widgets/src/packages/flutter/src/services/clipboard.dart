//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/clipboard.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/system_channels.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerClipboardSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_clipboardData.funName] = _clipboardData;
  m[_clipboard_kTextPlain.funName] = _clipboard_kTextPlain;
  return m;
}
var _clipboardData = MXFunctionInvoke(
    "ClipboardData",
    (
      {
      String text,
      }
    ) =>
      ClipboardData(
      text: text,
    ),
);
var _clipboard_kTextPlain = MXFunctionInvoke(
  "Clipboard.kTextPlain",
    (
    ) =>
      Clipboard.kTextPlain
);

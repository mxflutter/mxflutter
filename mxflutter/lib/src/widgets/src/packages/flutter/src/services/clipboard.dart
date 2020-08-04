//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/clipboard.dart';


class MXProxyClipboard {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[clipboardData.funName] = clipboardData;
    m[clipboard_.funName] = clipboard_;
    return m;
  }
  static var clipboardData = MXFunctionInvoke(
      "ClipboardData",
      ({
        String text,
      }) =>
        ClipboardData(
        text: text,
      ),
    );
  static var clipboard_ = MXFunctionInvoke(
    "clipboard.",
      ({
      }) =>
        Clipboard.(
      ),
    );
}

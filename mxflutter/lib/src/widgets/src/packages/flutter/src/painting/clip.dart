//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/clip.dart';
import 'dart:ui' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerClipSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_clipContext.funName] = _clipContext;
  return m;
}
var _clipContext = MXFunctionInvoke(
    "ClipContext",
    (
    ) =>
      ClipContext(
    ),
);

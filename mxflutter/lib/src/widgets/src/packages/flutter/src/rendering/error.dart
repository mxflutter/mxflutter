//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/error.dart';
import 'dart:ui';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerErrorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[renderErrorBox.funName] = renderErrorBox;
  return m;
}
var renderErrorBox = MXFunctionInvoke(
    "RenderErrorBox",
    ({
      String message,
    }) =>
      RenderErrorBox(
      message,
    ),
);

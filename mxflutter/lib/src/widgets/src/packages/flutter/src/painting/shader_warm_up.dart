//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/shader_warm_up.dart';
import 'dart:async';
import 'dart:developer';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerShaderWarmUpSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_defaultShaderWarmUp.funName] = _defaultShaderWarmUp;
  return m;
}
var _defaultShaderWarmUp = MXFunctionInvoke(
    "DefaultShaderWarmUp",
    (
      {
      dynamic drawCallSpacing = 0.0,
      ui.Size canvasSize,
      }
    ) =>
      DefaultShaderWarmUp(
      drawCallSpacing: drawCallSpacing?.toDouble(),
      canvasSize: canvasSize,
    ),
);

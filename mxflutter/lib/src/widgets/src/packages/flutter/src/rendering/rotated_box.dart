//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/rotated_box.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRotatedBoxSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderRotatedBox.funName] = _renderRotatedBox;
  return m;
}

var _renderRotatedBox = MXFunctionInvoke(
  "RenderRotatedBox",
  ({
    int quarterTurns,
    RenderBox child,
  }) =>
      RenderRotatedBox(
    quarterTurns: quarterTurns,
    child: child,
  ),
  [
    "quarterTurns",
    "child",
  ],
);

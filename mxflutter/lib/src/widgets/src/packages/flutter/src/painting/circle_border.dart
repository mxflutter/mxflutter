//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/circle_border.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/edge_insets.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCircleBorderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_circleBorder.funName] = _circleBorder;
  return m;
}

var _circleBorder = MXFunctionInvoke(
  "CircleBorder",
  ({
    BorderSide side = BorderSide.none,
  }) =>
      CircleBorder(
    side: side,
  ),
  [
    "side",
  ],
);

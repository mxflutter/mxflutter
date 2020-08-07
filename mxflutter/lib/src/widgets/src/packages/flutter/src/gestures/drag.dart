//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/drag.dart';
import 'package:flutter/src/gestures/drag_details.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDragSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_drag.funName] = _drag;
  return m;
}
var _drag = MXFunctionInvoke(
    "Drag",
    (
    ) =>
      Drag(
    ),
);

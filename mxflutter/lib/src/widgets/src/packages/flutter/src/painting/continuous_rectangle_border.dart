//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/continuous_rectangle_border.dart';


class MXProxyContinuousRectangleBorder {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[continuousRectangleBorder.funName] = continuousRectangleBorder;
    return m;
  }
  static var continuousRectangleBorder = MXFunctionInvoke(
      "ContinuousRectangleBorder",
      ({
        BorderSide side,
        BorderRadiusGeometry borderRadius,
      }) =>
        ContinuousRectangleBorder(
        side: side,
        borderRadius: borderRadius,
      ),
    );
}

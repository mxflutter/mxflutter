//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/notched_shapes.dart';


class MXProxyNotchedShapes {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[circularNotchedRectangle.funName] = circularNotchedRectangle;
    m[automaticNotchedShape.funName] = automaticNotchedShape;
    return m;
  }
  static var circularNotchedRectangle = MXFunctionInvoke(
      "CircularNotchedRectangle",
      ({
      }) =>
        CircularNotchedRectangle(
      ),
    );
  static var automaticNotchedShape = MXFunctionInvoke(
      "AutomaticNotchedShape",
      ({
        ShapeBorder host,
        ShapeBorder guest,
      }) =>
        AutomaticNotchedShape(
        host,
        guest,
      ),
    );
}

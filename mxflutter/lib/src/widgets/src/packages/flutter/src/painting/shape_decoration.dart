//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/shape_decoration.dart';


class MXProxyShapeDecoration {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[shapeDecoration.funName] = shapeDecoration;
    m[shapeDecoration_fromBoxDecoration.funName] = shapeDecoration_fromBoxDecoration;
    return m;
  }
  static var shapeDecoration = MXFunctionInvoke(
      "ShapeDecoration",
      ({
        Color color,
        DecorationImage image,
        Gradient gradient,
        List<BoxShadow> shadows,
        ShapeBorder shape,
      }) =>
        ShapeDecoration(
        color: color,
        image: image,
        gradient: gradient,
        shadows: shadows,
        shape: shape,
      ),
    );
  static var shapeDecoration_fromBoxDecoration = MXFunctionInvoke(
    "shapeDecoration.fromBoxDecoration",
      ({
        BoxDecoration source,
      }) =>
        ShapeDecoration.fromBoxDecoration(
        source,
      ),
    );
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/box_decoration.dart';


class MXProxyBoxDecoration {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[boxDecoration.funName] = boxDecoration;
    return m;
  }
  static var boxDecoration = MXFunctionInvoke(
      "BoxDecoration",
      ({
        Color color,
        DecorationImage image,
        BoxBorder border,
        BorderRadiusGeometry borderRadius,
        List<BoxShadow> boxShadow,
        Gradient gradient,
        BlendMode backgroundBlendMode,
        BoxShape shape = BoxShape.rectangle,
      }) =>
        BoxDecoration(
        color: color,
        image: image,
        border: border,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        gradient: gradient,
        backgroundBlendMode: backgroundBlendMode,
        shape: shape,
      ),
    );
}

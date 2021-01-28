//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/shape_decoration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/box_border.dart';
import 'package:flutter/src/painting/box_decoration.dart';
import 'package:flutter/src/painting/box_shadow.dart';
import 'package:flutter/src/painting/circle_border.dart';
import 'package:flutter/src/painting/colors.dart';
import 'package:flutter/src/painting/decoration.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/painting/gradient.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:flutter/src/painting/rounded_rectangle_border.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerShapeDecorationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_shapeDecoration.funName] = _shapeDecoration;
  m[_shapeDecorationFromBoxDecoration.funName] = _shapeDecorationFromBoxDecoration;
  return m;
}

var _shapeDecoration = MXFunctionInvoke(
  "ShapeDecoration",
  ({
    Color color,
    DecorationImage image,
    Gradient gradient,
    dynamic shadows,
    ShapeBorder shape,
  }) =>
      ShapeDecoration(
    color: color,
    image: image,
    gradient: gradient,
    shadows: toListT<BoxShadow>(shadows),
    shape: shape,
  ),
  [
    "color",
    "image",
    "gradient",
    "shadows",
    "shape",
  ],
);
var _shapeDecorationFromBoxDecoration = MXFunctionInvoke(
  "ShapeDecoration.fromBoxDecoration",
  ({
    BoxDecoration source,
  }) =>
      ShapeDecoration.fromBoxDecoration(
    source,
  ),
  [
    "source",
  ],
);

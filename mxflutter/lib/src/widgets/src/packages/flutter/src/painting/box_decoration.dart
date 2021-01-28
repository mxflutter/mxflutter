//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/box_decoration.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:flutter/src/painting/box_border.dart';
import 'package:flutter/src/painting/box_shadow.dart';
import 'package:flutter/src/painting/colors.dart';
import 'package:flutter/src/painting/decoration.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/painting/gradient.dart';
import 'package:flutter/src/painting/image_provider.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBoxDecorationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_boxDecoration.funName] = _boxDecoration;
  return m;
}

var _boxDecoration = MXFunctionInvoke(
  "BoxDecoration",
  ({
    Color color,
    DecorationImage image,
    BoxBorder border,
    BorderRadiusGeometry borderRadius,
    dynamic boxShadow,
    Gradient gradient,
    BlendMode backgroundBlendMode,
    BoxShape shape = BoxShape.rectangle,
  }) =>
      BoxDecoration(
    color: color,
    image: image,
    border: border,
    borderRadius: borderRadius,
    boxShadow: toListT<BoxShadow>(boxShadow),
    gradient: gradient,
    backgroundBlendMode: backgroundBlendMode,
    shape: shape,
  ),
  [
    "color",
    "image",
    "border",
    "borderRadius",
    "boxShadow",
    "gradient",
    "backgroundBlendMode",
    "shape",
  ],
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/ink_ripple.dart';
import 'dart:math' as math;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInkRippleSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_inkRipple.funName] = _inkRipple;
  m[_inkRippleSplashFactory.funName] = _inkRippleSplashFactory;
  return m;
}

var _inkRipple = MXFunctionInvoke(
  "InkRipple",
  ({
    MaterialInkController controller,
    RenderBox referenceBox,
    Offset position,
    Color color,
    TextDirection textDirection,
    bool containedInkWell = false,
    dynamic rectCallback,
    BorderRadius borderRadius,
    ShapeBorder customBorder,
    dynamic radius,
    dynamic onRemoved,
  }) =>
      InkRipple(
    controller: controller,
    referenceBox: referenceBox,
    position: position,
    color: color,
    textDirection: textDirection,
    containedInkWell: containedInkWell,
    rectCallback: null,
    borderRadius: borderRadius,
    customBorder: customBorder,
    radius: radius?.toDouble(),
    onRemoved: createVoidCallbackClosure(_inkRipple.buildOwner, onRemoved),
  ),
  [
    // MX modified begin
    "__mx_controller",
    // MX modified end
    "referenceBox",
    "position",
    "color",
    "textDirection",
    "containedInkWell",
    "rectCallback",
    "borderRadius",
    "customBorder",
    "radius",
    "onRemoved",
  ],
);
var _inkRippleSplashFactory = MXFunctionInvoke("InkRipple.splashFactory", () => InkRipple.splashFactory);

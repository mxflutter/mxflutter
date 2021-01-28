//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/ink_splash.dart';
import 'dart:math' as math;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInkSplashSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_inkSplash.funName] = _inkSplash;
  m[_inkSplashSplashFactory.funName] = _inkSplashSplashFactory;
  return m;
}

var _inkSplash = MXFunctionInvoke(
  "InkSplash",
  ({
    MaterialInkController controller,
    RenderBox referenceBox,
    TextDirection textDirection,
    Offset position,
    Color color,
    bool containedInkWell = false,
    dynamic rectCallback,
    BorderRadius borderRadius,
    ShapeBorder customBorder,
    dynamic radius,
    dynamic onRemoved,
  }) =>
      InkSplash(
    controller: controller,
    referenceBox: referenceBox,
    textDirection: textDirection,
    position: position,
    color: color,
    containedInkWell: containedInkWell,
    rectCallback: null,
    borderRadius: borderRadius,
    customBorder: customBorder,
    radius: radius?.toDouble(),
    onRemoved: createVoidCallbackClosure(_inkSplash.buildOwner, onRemoved),
  ),
  [
    // MX modified begin
    "__mx_controller",
    // MX modified end
    "referenceBox",
    "textDirection",
    "position",
    "color",
    "containedInkWell",
    "rectCallback",
    "borderRadius",
    "customBorder",
    "radius",
    "onRemoved",
  ],
);
var _inkSplashSplashFactory = MXFunctionInvoke("InkSplash.splashFactory", () => InkSplash.splashFactory);

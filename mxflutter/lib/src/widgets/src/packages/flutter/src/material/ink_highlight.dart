//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/ink_highlight.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mxflutter/src/mirror/mx_mirror.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInkHighlightSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_inkHighlight.funName] = _inkHighlight;
  return m;
}

var _inkHighlight = MXFunctionInvoke(
  "InkHighlight",
  ({
    MaterialInkController controller,
    RenderBox referenceBox,
    Color color,
    TextDirection textDirection,
    BoxShape shape = BoxShape.rectangle,
    dynamic radius,
    BorderRadius borderRadius,
    ShapeBorder customBorder,
    dynamic rectCallback,
    dynamic onRemoved,
    //MX Modified begin
    Duration fadeDuration = const Duration(milliseconds: 200),
    //MX Modified end
  }) =>
      InkHighlight(
    controller: controller,
    referenceBox: referenceBox,
    color: color,
    textDirection: textDirection,
    shape: shape,
    radius: radius?.toDouble(),
    borderRadius: borderRadius,
    customBorder: customBorder,
    rectCallback: null,
    onRemoved: createVoidCallbackClosure(_inkHighlight.buildOwner, onRemoved),
    fadeDuration: fadeDuration,
  ),
  [
    // MX modified begin
    "__mx_controller",
    // MX modified end
    "referenceBox",
    "color",
    "textDirection",
    "shape",
    "radius",
    "borderRadius",
    "customBorder",
    "rectCallback",
    "onRemoved",
    "fadeDuration",
  ],
);

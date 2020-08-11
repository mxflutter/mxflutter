//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/ink_highlight.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInkHighlightSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_inkHighlight.funName] = _inkHighlight;
  return m;
}
var _inkHighlight = MXFunctionInvoke(
    "InkHighlight",
    (
      {
      MaterialInkController controller,
      RenderBox referenceBox,
      Color color,
      TextDirection textDirection,
      BoxShape shape = BoxShape.rectangle,
      BorderRadius borderRadius,
      ShapeBorder customBorder,
      dynamic rectCallback,
      dynamic onRemoved,
      Duration fadeDuration = const Duration(milliseconds: 200),
      }
    ) =>
      InkHighlight(
      controller: controller,
      referenceBox: referenceBox,
      color: color,
      textDirection: textDirection,
      shape: shape,
      borderRadius: borderRadius,
      customBorder: customBorder,
      rectCallback: null,
      onRemoved: createVoidCallbackClosure(_inkHighlight.buildOwner, onRemoved),
      fadeDuration: fadeDuration,
    ),
);

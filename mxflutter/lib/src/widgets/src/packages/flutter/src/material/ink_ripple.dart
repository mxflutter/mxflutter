//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/ink_ripple.dart';


class MXProxyInkRipple {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[inkRipple.funName] = inkRipple;
    return m;
  }
  static var inkRipple = MXFunctionInvoke(
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
        rectCallback: rectCallback,
        borderRadius: borderRadius,
        customBorder: customBorder,
        radius: radius?.toDouble(),
        onRemoved: createVoidCallbackClosure(inkRipple.buildOwner, onRemoved),
      ),
    );
}

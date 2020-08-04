//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/custom_paint.dart';


class MXProxyCustomPaint {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[customPainterSemantics.funName] = customPainterSemantics;
    m[renderCustomPaint.funName] = renderCustomPaint;
    return m;
  }
  static var customPainterSemantics = MXFunctionInvoke(
      "CustomPainterSemantics",
      ({
        Key key,
        Rect rect,
        SemanticsProperties properties,
        Matrix4 transform,
        Set<SemanticsTag> tags,
      }) =>
        CustomPainterSemantics(
        key: key,
        rect: rect,
        properties: properties,
        transform: transform,
        tags: tags,
      ),
    );
  static var renderCustomPaint = MXFunctionInvoke(
      "RenderCustomPaint",
      ({
        CustomPainter painter,
        CustomPainter foregroundPainter,
        Size preferredSize,
        bool isComplex = false,
        bool willChange = false,
        RenderBox child,
      }) =>
        RenderCustomPaint(
        painter: painter,
        foregroundPainter: foregroundPainter,
        preferredSize: preferredSize,
        isComplex: isComplex,
        willChange: willChange,
        child: child,
      ),
    );
}

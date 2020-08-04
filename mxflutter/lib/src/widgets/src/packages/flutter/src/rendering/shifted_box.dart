//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/shifted_box.dart';


class MXProxyShiftedBox {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[renderPadding.funName] = renderPadding;
    m[renderPositionedBox.funName] = renderPositionedBox;
    m[renderConstrainedOverflowBox.funName] = renderConstrainedOverflowBox;
    m[renderUnconstrainedBox.funName] = renderUnconstrainedBox;
    m[renderSizedOverflowBox.funName] = renderSizedOverflowBox;
    m[renderFractionallySizedOverflowBox.funName] = renderFractionallySizedOverflowBox;
    m[renderCustomSingleChildLayoutBox.funName] = renderCustomSingleChildLayoutBox;
    m[renderBaseline.funName] = renderBaseline;
    return m;
  }
  static var renderPadding = MXFunctionInvoke(
      "RenderPadding",
      ({
        EdgeInsetsGeometry padding,
        TextDirection textDirection,
        RenderBox child,
      }) =>
        RenderPadding(
        padding: padding,
        textDirection: textDirection,
        child: child,
      ),
    );
  static var renderPositionedBox = MXFunctionInvoke(
      "RenderPositionedBox",
      ({
        RenderBox child,
        dynamic widthFactor,
        dynamic heightFactor,
        AlignmentGeometry alignment,
        TextDirection textDirection,
      }) =>
        RenderPositionedBox(
        child: child,
        widthFactor: widthFactor?.toDouble(),
        heightFactor: heightFactor?.toDouble(),
        alignment: alignment,
        textDirection: textDirection,
      ),
    );
  static var renderConstrainedOverflowBox = MXFunctionInvoke(
      "RenderConstrainedOverflowBox",
      ({
        RenderBox child,
        dynamic minWidth,
        dynamic maxWidth,
        dynamic minHeight,
        dynamic maxHeight,
        AlignmentGeometry alignment,
        TextDirection textDirection,
      }) =>
        RenderConstrainedOverflowBox(
        child: child,
        minWidth: minWidth?.toDouble(),
        maxWidth: maxWidth?.toDouble(),
        minHeight: minHeight?.toDouble(),
        maxHeight: maxHeight?.toDouble(),
        alignment: alignment,
        textDirection: textDirection,
      ),
    );
  static var renderUnconstrainedBox = MXFunctionInvoke(
      "RenderUnconstrainedBox",
      ({
        AlignmentGeometry alignment,
        TextDirection textDirection,
        Axis constrainedAxis,
        RenderBox child,
      }) =>
        RenderUnconstrainedBox(
        alignment: alignment,
        textDirection: textDirection,
        constrainedAxis: constrainedAxis,
        child: child,
      ),
    );
  static var renderSizedOverflowBox = MXFunctionInvoke(
      "RenderSizedOverflowBox",
      ({
        RenderBox child,
        Size requestedSize,
        AlignmentGeometry alignment,
        TextDirection textDirection,
      }) =>
        RenderSizedOverflowBox(
        child: child,
        requestedSize: requestedSize,
        alignment: alignment,
        textDirection: textDirection,
      ),
    );
  static var renderFractionallySizedOverflowBox = MXFunctionInvoke(
      "RenderFractionallySizedOverflowBox",
      ({
        RenderBox child,
        dynamic widthFactor,
        dynamic heightFactor,
        AlignmentGeometry alignment,
        TextDirection textDirection,
      }) =>
        RenderFractionallySizedOverflowBox(
        child: child,
        widthFactor: widthFactor?.toDouble(),
        heightFactor: heightFactor?.toDouble(),
        alignment: alignment,
        textDirection: textDirection,
      ),
    );
  static var renderCustomSingleChildLayoutBox = MXFunctionInvoke(
      "RenderCustomSingleChildLayoutBox",
      ({
        RenderBox child,
        SingleChildLayoutDelegate delegate,
      }) =>
        RenderCustomSingleChildLayoutBox(
        child: child,
        delegate: delegate,
      ),
    );
  static var renderBaseline = MXFunctionInvoke(
      "RenderBaseline",
      ({
        RenderBox child,
        dynamic baseline,
        TextBaseline baselineType,
      }) =>
        RenderBaseline(
        child: child,
        baseline: baseline?.toDouble(),
        baselineType: baselineType,
      ),
    );
}

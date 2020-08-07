//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/shifted_box.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/debug_overflow_indicator.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/stack.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerShiftedBoxSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderPadding.funName] = _renderPadding;
  m[_renderPositionedBox.funName] = _renderPositionedBox;
  m[_renderConstrainedOverflowBox.funName] = _renderConstrainedOverflowBox;
  m[_renderUnconstrainedBox.funName] = _renderUnconstrainedBox;
  m[_renderSizedOverflowBox.funName] = _renderSizedOverflowBox;
  m[_renderFractionallySizedOverflowBox.funName] = _renderFractionallySizedOverflowBox;
  m[_renderCustomSingleChildLayoutBox.funName] = _renderCustomSingleChildLayoutBox;
  m[_renderBaseline.funName] = _renderBaseline;
  return m;
}
var _renderPadding = MXFunctionInvoke(
    "RenderPadding",
    (
      {
      EdgeInsetsGeometry padding,
      TextDirection textDirection,
      RenderBox child,
      }
    ) =>
      RenderPadding(
      padding: padding,
      textDirection: textDirection,
      child: child,
    ),
);
var _renderPositionedBox = MXFunctionInvoke(
    "RenderPositionedBox",
    (
      {
      RenderBox child,
      dynamic widthFactor,
      dynamic heightFactor,
      AlignmentGeometry alignment,
      TextDirection textDirection,
      }
    ) =>
      RenderPositionedBox(
      child: child,
      widthFactor: widthFactor?.toDouble(),
      heightFactor: heightFactor?.toDouble(),
      alignment: alignment,
      textDirection: textDirection,
    ),
);
var _renderConstrainedOverflowBox = MXFunctionInvoke(
    "RenderConstrainedOverflowBox",
    (
      {
      RenderBox child,
      dynamic minWidth,
      dynamic maxWidth,
      dynamic minHeight,
      dynamic maxHeight,
      AlignmentGeometry alignment,
      TextDirection textDirection,
      }
    ) =>
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
var _renderUnconstrainedBox = MXFunctionInvoke(
    "RenderUnconstrainedBox",
    (
      {
      AlignmentGeometry alignment,
      TextDirection textDirection,
      Axis constrainedAxis,
      RenderBox child,
      }
    ) =>
      RenderUnconstrainedBox(
      alignment: alignment,
      textDirection: textDirection,
      constrainedAxis: constrainedAxis,
      child: child,
    ),
);
var _renderSizedOverflowBox = MXFunctionInvoke(
    "RenderSizedOverflowBox",
    (
      {
      RenderBox child,
      Size requestedSize,
      AlignmentGeometry alignment,
      TextDirection textDirection,
      }
    ) =>
      RenderSizedOverflowBox(
      child: child,
      requestedSize: requestedSize,
      alignment: alignment,
      textDirection: textDirection,
    ),
);
var _renderFractionallySizedOverflowBox = MXFunctionInvoke(
    "RenderFractionallySizedOverflowBox",
    (
      {
      RenderBox child,
      dynamic widthFactor,
      dynamic heightFactor,
      AlignmentGeometry alignment,
      TextDirection textDirection,
      }
    ) =>
      RenderFractionallySizedOverflowBox(
      child: child,
      widthFactor: widthFactor?.toDouble(),
      heightFactor: heightFactor?.toDouble(),
      alignment: alignment,
      textDirection: textDirection,
    ),
);
var _renderCustomSingleChildLayoutBox = MXFunctionInvoke(
    "RenderCustomSingleChildLayoutBox",
    (
      {
      RenderBox child,
      SingleChildLayoutDelegate delegate,
      }
    ) =>
      RenderCustomSingleChildLayoutBox(
      child: child,
      delegate: delegate,
    ),
);
var _renderBaseline = MXFunctionInvoke(
    "RenderBaseline",
    (
      {
      RenderBox child,
      dynamic baseline,
      TextBaseline baselineType,
      }
    ) =>
      RenderBaseline(
      child: child,
      baseline: baseline?.toDouble(),
      baselineType: baselineType,
    ),
);

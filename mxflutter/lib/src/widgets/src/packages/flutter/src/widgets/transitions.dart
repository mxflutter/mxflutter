//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'dart:math' as math;
import 'package:flutter/rendering.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/text.dart';
// MX modified begin
import 'package:expressions/expressions.dart';
// MX modified end

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTransitionsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_slideTransition.funName] = _slideTransition;
  m[_scaleTransition.funName] = _scaleTransition;
  m[_rotationTransition.funName] = _rotationTransition;
  m[_sizeTransition.funName] = _sizeTransition;
  m[_fadeTransition.funName] = _fadeTransition;
  m[_sliverFadeTransition.funName] = _sliverFadeTransition;
  m[_relativeRectTween.funName] = _relativeRectTween;
  m[_positionedTransition.funName] = _positionedTransition;
  m[_relativePositionedTransition.funName] = _relativePositionedTransition;
  m[_decoratedBoxTransition.funName] = _decoratedBoxTransition;
  m[_alignTransition.funName] = _alignTransition;
  m[_defaultTextStyleTransition.funName] = _defaultTextStyleTransition;
  m[_animatedBuilder.funName] = _animatedBuilder;
  return m;
}

var _slideTransition = MXFunctionInvoke(
  "SlideTransition",
  ({
    Key key,
    Animation<Offset> position,
    bool transformHitTests = true,
    TextDirection textDirection,
    Widget child,
  }) =>
      SlideTransition(
    key: key,
    position: position,
    transformHitTests: transformHitTests,
    textDirection: textDirection,
    child: child,
  ),
  [
    "key",
    "position",
    "transformHitTests",
    "textDirection",
    "child",
  ],
);
var _scaleTransition = MXFunctionInvoke(
  "ScaleTransition",
  ({
    Key key,
    Animation<double> scale,
    Alignment alignment = Alignment.center,
    Widget child,
  }) =>
      ScaleTransition(
    key: key,
    scale: scale,
    alignment: alignment,
    child: child,
  ),
  [
    "key",
    "scale",
    "alignment",
    "child",
  ],
);
var _rotationTransition = MXFunctionInvoke(
  "RotationTransition",
  ({
    Key key,
    Animation<double> turns,
    Alignment alignment = Alignment.center,
    Widget child,
  }) =>
      RotationTransition(
    key: key,
    turns: turns,
    alignment: alignment,
    child: child,
  ),
  [
    "key",
    "turns",
    "alignment",
    "child",
  ],
);
var _sizeTransition = MXFunctionInvoke(
  "SizeTransition",
  ({
    Key key,
    Axis axis = Axis.vertical,
    Animation<double> sizeFactor,
    dynamic axisAlignment = 0.0,
    Widget child,
  }) =>
      SizeTransition(
    key: key,
    axis: axis,
    sizeFactor: sizeFactor,
    axisAlignment: axisAlignment?.toDouble(),
    child: child,
  ),
  [
    "key",
    "axis",
    "sizeFactor",
    "axisAlignment",
    "child",
  ],
);
var _fadeTransition = MXFunctionInvoke(
  "FadeTransition",
  ({
    Key key,
    Animation<double> opacity,
    bool alwaysIncludeSemantics = false,
    Widget child,
  }) =>
      FadeTransition(
    key: key,
    opacity: opacity,
    alwaysIncludeSemantics: alwaysIncludeSemantics,
    child: child,
  ),
  [
    "key",
    "opacity",
    "alwaysIncludeSemantics",
    "child",
  ],
);
var _sliverFadeTransition = MXFunctionInvoke(
  "SliverFadeTransition",
  ({
    Key key,
    Animation<double> opacity,
    bool alwaysIncludeSemantics = false,
    Widget sliver,
  }) =>
      SliverFadeTransition(
    key: key,
    opacity: opacity,
    alwaysIncludeSemantics: alwaysIncludeSemantics,
    sliver: sliver,
  ),
  [
    "key",
    "opacity",
    "alwaysIncludeSemantics",
    "sliver",
  ],
);
var _relativeRectTween = MXFunctionInvoke(
  "RelativeRectTween",
  ({
    RelativeRect begin,
    RelativeRect end,
  }) =>
      RelativeRectTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _positionedTransition = MXFunctionInvoke(
  "PositionedTransition",
  ({
    Key key,
    Animation<RelativeRect> rect,
    Widget child,
  }) =>
      PositionedTransition(
    key: key,
    rect: rect,
    child: child,
  ),
  [
    "key",
    "rect",
    "child",
  ],
);
var _relativePositionedTransition = MXFunctionInvoke(
  "RelativePositionedTransition",
  ({
    Key key,
    Animation<Rect> rect,
    Size size,
    Widget child,
  }) =>
      RelativePositionedTransition(
    key: key,
    rect: rect,
    size: size,
    child: child,
  ),
  [
    "key",
    "rect",
    "size",
    "child",
  ],
);
var _decoratedBoxTransition = MXFunctionInvoke(
  "DecoratedBoxTransition",
  ({
    Key key,
    Animation<Decoration> decoration,
    DecorationPosition position = DecorationPosition.background,
    Widget child,
  }) =>
      DecoratedBoxTransition(
    key: key,
    decoration: decoration,
    position: position,
    child: child,
  ),
  [
    "key",
    "decoration",
    "position",
    "child",
  ],
);
var _alignTransition = MXFunctionInvoke(
  "AlignTransition",
  ({
    Key key,
    Animation<AlignmentGeometry> alignment,
    Widget child,
    dynamic widthFactor,
    dynamic heightFactor,
  }) =>
      AlignTransition(
    key: key,
    alignment: alignment,
    child: child,
    widthFactor: widthFactor?.toDouble(),
    heightFactor: heightFactor?.toDouble(),
  ),
  [
    "key",
    "alignment",
    "child",
    "widthFactor",
    "heightFactor",
  ],
);
var _defaultTextStyleTransition = MXFunctionInvoke(
  "DefaultTextStyleTransition",
  ({
    Key key,
    Animation<TextStyle> style,
    Widget child,
    TextAlign textAlign,
    bool softWrap = true,
    TextOverflow overflow = TextOverflow.clip,
    int maxLines,
  }) =>
      DefaultTextStyleTransition(
    key: key,
    style: style,
    child: child,
    textAlign: textAlign,
    softWrap: softWrap,
    overflow: overflow,
    maxLines: maxLines,
  ),
  [
    "key",
    "style",
    "child",
    "textAlign",
    "softWrap",
    "overflow",
    "maxLines",
  ],
);
var _animatedBuilder = MXFunctionInvoke(
  "AnimatedBuilder",
  ({
    Key key,
    dynamic animation,
    dynamic builder,
    Widget child,
    // MX modified begin
    dynamic widget,
    // MX modified end
  }) =>
      AnimatedBuilder(
    key: key,
    animation: animation,
    // MX modified begin
    builder: (BuildContext context, Widget child) {
      if (builder != null) {
        ///TODO:
        return null;
      } else {
        String targetString = '\$value';
        var context = {
          "sin": math.sin,
          "cos": math.cos,
          "\$value": animation.value?.toDouble(),
        };
        Map widgetMap = replaceSpecificValue(widget, targetString, context);
        return MXMirror.getInstance().jsonToDartObj(widgetMap);
      }
    },
    // MX modified end
    child: child,
  ),
  [
    "key",
    "animation",
    "builder",
    "child",

    ///MX modified begin
    "widget",

    ///MX modified end
  ],
  // MX modified begin
  ["widget"],
  // MX modified end
);

// MX modified begin
Map replaceSpecificValue(Map map, String targetValue, dynamic context) {
  Map nMap = <String, dynamic>{};
  if (map != null) {
    map.forEach((key, value) {
      if (value is Map) {
        nMap[key] = replaceSpecificValue(value, targetValue, context);
      } else if (value.toString().contains(targetValue)) {
        final evaluator = const ExpressionEvaluator();
        Expression expression = Expression.parse(value);
        var replaceValue = evaluator.eval(expression, context);
        nMap[key] = replaceValue;
      } else {
        nMap[key] = value;
      }
    });
  }
  return nMap;
}
// MX modified end

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
import 'dart:ui' as ui;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerImplicitAnimationsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_boxConstraintsTween.funName] = _boxConstraintsTween;
  m[_decorationTween.funName] = _decorationTween;
  m[_edgeInsetsTween.funName] = _edgeInsetsTween;
  m[_edgeInsetsGeometryTween.funName] = _edgeInsetsGeometryTween;
  m[_borderRadiusTween.funName] = _borderRadiusTween;
  m[_borderTween.funName] = _borderTween;
  m[_matrix4Tween.funName] = _matrix4Tween;
  m[_textStyleTween.funName] = _textStyleTween;
  m[_animatedContainer.funName] = _animatedContainer;
  m[_animatedPadding.funName] = _animatedPadding;
  m[_animatedAlign.funName] = _animatedAlign;
  m[_animatedPositioned.funName] = _animatedPositioned;
  m[_animatedPositionedFromRect.funName] = _animatedPositionedFromRect;
  m[_animatedPositionedDirectional.funName] = _animatedPositionedDirectional;
  m[_animatedOpacity.funName] = _animatedOpacity;
  m[_sliverAnimatedOpacity.funName] = _sliverAnimatedOpacity;
  m[_animatedDefaultTextStyle.funName] = _animatedDefaultTextStyle;
  m[_animatedPhysicalModel.funName] = _animatedPhysicalModel;
  return m;
}

var _boxConstraintsTween = MXFunctionInvoke(
  "BoxConstraintsTween",
  ({
    BoxConstraints begin,
    BoxConstraints end,
  }) =>
      BoxConstraintsTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _decorationTween = MXFunctionInvoke(
  "DecorationTween",
  ({
    Decoration begin,
    Decoration end,
  }) =>
      DecorationTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _edgeInsetsTween = MXFunctionInvoke(
  "EdgeInsetsTween",
  ({
    EdgeInsets begin,
    EdgeInsets end,
  }) =>
      EdgeInsetsTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _edgeInsetsGeometryTween = MXFunctionInvoke(
  "EdgeInsetsGeometryTween",
  ({
    EdgeInsetsGeometry begin,
    EdgeInsetsGeometry end,
  }) =>
      EdgeInsetsGeometryTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _borderRadiusTween = MXFunctionInvoke(
  "BorderRadiusTween",
  ({
    BorderRadius begin,
    BorderRadius end,
  }) =>
      BorderRadiusTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _borderTween = MXFunctionInvoke(
  "BorderTween",
  ({
    Border begin,
    Border end,
  }) =>
      BorderTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _matrix4Tween = MXFunctionInvoke(
  "Matrix4Tween",
  ({
    Matrix4 begin,
    Matrix4 end,
  }) =>
      Matrix4Tween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _textStyleTween = MXFunctionInvoke(
  "TextStyleTween",
  ({
    TextStyle begin,
    TextStyle end,
  }) =>
      TextStyleTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _animatedContainer = MXFunctionInvoke(
  "AnimatedContainer",
  ({
    Key key,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    ui.Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    dynamic width,
    dynamic height,
    BoxConstraints constraints,
    EdgeInsetsGeometry margin,
    Matrix4 transform,
    Widget child,
    Curve curve = Curves.linear,
    Duration duration,
    dynamic onEnd,
  }) =>
      AnimatedContainer(
    key: key,
    alignment: alignment,
    padding: padding,
    color: color,
    decoration: decoration,
    foregroundDecoration: foregroundDecoration,
    width: width?.toDouble(),
    height: height?.toDouble(),
    constraints: constraints,
    margin: margin,
    transform: transform,
    child: child,
    curve: curve,
    duration: duration,
    onEnd: createVoidCallbackClosure(_animatedContainer.buildOwner, onEnd),
  ),
  [
    "key",
    "alignment",
    "padding",
    "color",
    "decoration",
    "foregroundDecoration",
    "width",
    "height",
    "constraints",
    "margin",
    "transform",
    "child",
    "curve",
    "duration",
    "onEnd",
  ],
);
var _animatedPadding = MXFunctionInvoke(
  "AnimatedPadding",
  ({
    Key key,
    EdgeInsetsGeometry padding,
    Widget child,
    Curve curve = Curves.linear,
    Duration duration,
    dynamic onEnd,
  }) =>
      AnimatedPadding(
    key: key,
    padding: padding,
    child: child,
    curve: curve,
    duration: duration,
    onEnd: createVoidCallbackClosure(_animatedPadding.buildOwner, onEnd),
  ),
  [
    "key",
    "padding",
    "child",
    "curve",
    "duration",
    "onEnd",
  ],
);
var _animatedAlign = MXFunctionInvoke(
  "AnimatedAlign",
  ({
    Key key,
    AlignmentGeometry alignment,
    Widget child,
    Curve curve = Curves.linear,
    Duration duration,
    dynamic onEnd,
  }) =>
      AnimatedAlign(
    key: key,
    alignment: alignment,
    child: child,
    curve: curve,
    duration: duration,
    onEnd: createVoidCallbackClosure(_animatedAlign.buildOwner, onEnd),
  ),
  [
    "key",
    "alignment",
    "child",
    "curve",
    "duration",
    "onEnd",
  ],
);
var _animatedPositioned = MXFunctionInvoke(
  "AnimatedPositioned",
  ({
    Key key,
    Widget child,
    dynamic left,
    dynamic top,
    dynamic right,
    dynamic bottom,
    dynamic width,
    dynamic height,
    Curve curve = Curves.linear,
    Duration duration,
    dynamic onEnd,
  }) =>
      AnimatedPositioned(
    key: key,
    child: child,
    left: left?.toDouble(),
    top: top?.toDouble(),
    right: right?.toDouble(),
    bottom: bottom?.toDouble(),
    width: width?.toDouble(),
    height: height?.toDouble(),
    curve: curve,
    duration: duration,
    onEnd: createVoidCallbackClosure(_animatedPositioned.buildOwner, onEnd),
  ),
  [
    "key",
    "child",
    "left",
    "top",
    "right",
    "bottom",
    "width",
    "height",
    "curve",
    "duration",
    "onEnd",
  ],
);
var _animatedPositionedFromRect = MXFunctionInvoke(
  "AnimatedPositioned.fromRect",
  ({
    Key key,
    Widget child,
    ui.Rect rect,
    Curve curve = Curves.linear,
    Duration duration,
    dynamic onEnd,
  }) =>
      AnimatedPositioned.fromRect(
    key: key,
    child: child,
    rect: rect,
    curve: curve,
    duration: duration,
    onEnd: createVoidCallbackClosure(_animatedPositionedFromRect.buildOwner, onEnd),
  ),
  [
    "key",
    "child",
    "rect",
    "curve",
    "duration",
    "onEnd",
  ],
);
var _animatedPositionedDirectional = MXFunctionInvoke(
  "AnimatedPositionedDirectional",
  ({
    Key key,
    Widget child,
    dynamic start,
    dynamic top,
    dynamic end,
    dynamic bottom,
    dynamic width,
    dynamic height,
    Curve curve = Curves.linear,
    Duration duration,
    dynamic onEnd,
  }) =>
      AnimatedPositionedDirectional(
    key: key,
    child: child,
    start: start?.toDouble(),
    top: top?.toDouble(),
    end: end?.toDouble(),
    bottom: bottom?.toDouble(),
    width: width?.toDouble(),
    height: height?.toDouble(),
    curve: curve,
    duration: duration,
    onEnd: createVoidCallbackClosure(_animatedPositionedDirectional.buildOwner, onEnd),
  ),
  [
    "key",
    "child",
    "start",
    "top",
    "end",
    "bottom",
    "width",
    "height",
    "curve",
    "duration",
    "onEnd",
  ],
);
var _animatedOpacity = MXFunctionInvoke(
  "AnimatedOpacity",
  ({
    Key key,
    Widget child,
    dynamic opacity,
    Curve curve = Curves.linear,
    Duration duration,
    dynamic onEnd,
    bool alwaysIncludeSemantics = false,
  }) =>
      AnimatedOpacity(
    key: key,
    child: child,
    opacity: opacity?.toDouble(),
    curve: curve,
    duration: duration,
    onEnd: createVoidCallbackClosure(_animatedOpacity.buildOwner, onEnd),
    alwaysIncludeSemantics: alwaysIncludeSemantics,
  ),
  [
    "key",
    "child",
    "opacity",
    "curve",
    "duration",
    "onEnd",
    "alwaysIncludeSemantics",
  ],
);
var _sliverAnimatedOpacity = MXFunctionInvoke(
  "SliverAnimatedOpacity",
  ({
    Key key,
    Widget sliver,
    dynamic opacity,
    Curve curve = Curves.linear,
    Duration duration,
    dynamic onEnd,
    bool alwaysIncludeSemantics = false,
  }) =>
      SliverAnimatedOpacity(
    key: key,
    sliver: sliver,
    opacity: opacity?.toDouble(),
    curve: curve,
    duration: duration,
    onEnd: createVoidCallbackClosure(_sliverAnimatedOpacity.buildOwner, onEnd),
    alwaysIncludeSemantics: alwaysIncludeSemantics,
  ),
  [
    "key",
    "sliver",
    "opacity",
    "curve",
    "duration",
    "onEnd",
    "alwaysIncludeSemantics",
  ],
);
var _animatedDefaultTextStyle = MXFunctionInvoke(
  "AnimatedDefaultTextStyle",
  ({
    Key key,
    Widget child,
    TextStyle style,
    ui.TextAlign textAlign,
    bool softWrap = true,
    TextOverflow overflow = TextOverflow.clip,
    int maxLines,
    TextWidthBasis textWidthBasis = TextWidthBasis.parent,
    ui.TextHeightBehavior textHeightBehavior,
    Curve curve = Curves.linear,
    Duration duration,
    dynamic onEnd,
  }) =>
      AnimatedDefaultTextStyle(
    key: key,
    child: child,
    style: style,
    textAlign: textAlign,
    softWrap: softWrap,
    overflow: overflow,
    maxLines: maxLines,
    textWidthBasis: textWidthBasis,
    textHeightBehavior: textHeightBehavior,
    curve: curve,
    duration: duration,
    onEnd: createVoidCallbackClosure(_animatedDefaultTextStyle.buildOwner, onEnd),
  ),
  [
    "key",
    "child",
    "style",
    "textAlign",
    "softWrap",
    "overflow",
    "maxLines",
    "textWidthBasis",
    "textHeightBehavior",
    "curve",
    "duration",
    "onEnd",
  ],
);
var _animatedPhysicalModel = MXFunctionInvoke(
  "AnimatedPhysicalModel",
  ({
    Key key,
    Widget child,
    BoxShape shape,
    ui.Clip clipBehavior = Clip.none,
    BorderRadius borderRadius = BorderRadius.zero,
    dynamic elevation,
    ui.Color color,
    bool animateColor = true,
    ui.Color shadowColor,
    bool animateShadowColor = true,
    Curve curve = Curves.linear,
    Duration duration,
    dynamic onEnd,
  }) =>
      AnimatedPhysicalModel(
    key: key,
    child: child,
    shape: shape,
    clipBehavior: clipBehavior,
    borderRadius: borderRadius,
    elevation: elevation?.toDouble(),
    color: color,
    animateColor: animateColor,
    shadowColor: shadowColor,
    animateShadowColor: animateShadowColor,
    curve: curve,
    duration: duration,
    onEnd: createVoidCallbackClosure(_animatedPhysicalModel.buildOwner, onEnd),
  ),
  [
    "key",
    "child",
    "shape",
    "clipBehavior",
    "borderRadius",
    "elevation",
    "color",
    "animateColor",
    "shadowColor",
    "animateShadowColor",
    "curve",
    "duration",
    "onEnd",
  ],
);

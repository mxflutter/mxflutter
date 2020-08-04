//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
import 'dart:ui';
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
  m[boxConstraintsTween.funName] = boxConstraintsTween;
  m[decorationTween.funName] = decorationTween;
  m[edgeInsetsTween.funName] = edgeInsetsTween;
  m[edgeInsetsGeometryTween.funName] = edgeInsetsGeometryTween;
  m[borderRadiusTween.funName] = borderRadiusTween;
  m[borderTween.funName] = borderTween;
  m[matrix4Tween.funName] = matrix4Tween;
  m[textStyleTween.funName] = textStyleTween;
  m[animatedContainer.funName] = animatedContainer;
  m[animatedPadding.funName] = animatedPadding;
  m[animatedAlign.funName] = animatedAlign;
  m[animatedPositioned.funName] = animatedPositioned;
  m[animatedPositioned_fromRect.funName] = animatedPositioned_fromRect;
  m[animatedPositionedDirectional.funName] = animatedPositionedDirectional;
  m[animatedOpacity.funName] = animatedOpacity;
  m[sliverAnimatedOpacity.funName] = sliverAnimatedOpacity;
  m[animatedDefaultTextStyle.funName] = animatedDefaultTextStyle;
  m[animatedPhysicalModel.funName] = animatedPhysicalModel;
  return m;
}
var boxConstraintsTween = MXFunctionInvoke(
    "BoxConstraintsTween",
    ({
      BoxConstraints begin,
      BoxConstraints end,
    }) =>
      BoxConstraintsTween(
      begin: begin,
      end: end,
    ),
);
var decorationTween = MXFunctionInvoke(
    "DecorationTween",
    ({
      Decoration begin,
      Decoration end,
    }) =>
      DecorationTween(
      begin: begin,
      end: end,
    ),
);
var edgeInsetsTween = MXFunctionInvoke(
    "EdgeInsetsTween",
    ({
      EdgeInsets begin,
      EdgeInsets end,
    }) =>
      EdgeInsetsTween(
      begin: begin,
      end: end,
    ),
);
var edgeInsetsGeometryTween = MXFunctionInvoke(
    "EdgeInsetsGeometryTween",
    ({
      EdgeInsetsGeometry begin,
      EdgeInsetsGeometry end,
    }) =>
      EdgeInsetsGeometryTween(
      begin: begin,
      end: end,
    ),
);
var borderRadiusTween = MXFunctionInvoke(
    "BorderRadiusTween",
    ({
      BorderRadius begin,
      BorderRadius end,
    }) =>
      BorderRadiusTween(
      begin: begin,
      end: end,
    ),
);
var borderTween = MXFunctionInvoke(
    "BorderTween",
    ({
      Border begin,
      Border end,
    }) =>
      BorderTween(
      begin: begin,
      end: end,
    ),
);
var matrix4Tween = MXFunctionInvoke(
    "Matrix4Tween",
    ({
      Matrix4 begin,
      Matrix4 end,
    }) =>
      Matrix4Tween(
      begin: begin,
      end: end,
    ),
);
var textStyleTween = MXFunctionInvoke(
    "TextStyleTween",
    ({
      TextStyle begin,
      TextStyle end,
    }) =>
      TextStyleTween(
      begin: begin,
      end: end,
    ),
);
var animatedContainer = MXFunctionInvoke(
    "AnimatedContainer",
    ({
      Key key,
      AlignmentGeometry alignment,
      EdgeInsetsGeometry padding,
      Color color,
      Decoration decoration,
      Decoration foregroundDecoration,
      dynamic width,
      dynamic height,
      BoxConstraints constraints,
      EdgeInsetsGeometry margin,
      Matrix4 transform,
      Widget child,
      Curve curve,
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
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      child: child,
      curve: curve,
      duration: duration,
      onEnd: createVoidCallbackClosure(animatedContainer.buildOwner, onEnd),
    ),
);
var animatedPadding = MXFunctionInvoke(
    "AnimatedPadding",
    ({
      Key key,
      EdgeInsetsGeometry padding,
      Widget child,
      Curve curve,
      Duration duration,
      dynamic onEnd,
    }) =>
      AnimatedPadding(
      key: key,
      padding: padding,
      child: child,
      curve: curve,
      duration: duration,
      onEnd: createVoidCallbackClosure(animatedPadding.buildOwner, onEnd),
    ),
);
var animatedAlign = MXFunctionInvoke(
    "AnimatedAlign",
    ({
      Key key,
      AlignmentGeometry alignment,
      Widget child,
      Curve curve,
      Duration duration,
      dynamic onEnd,
    }) =>
      AnimatedAlign(
      key: key,
      alignment: alignment,
      child: child,
      curve: curve,
      duration: duration,
      onEnd: createVoidCallbackClosure(animatedAlign.buildOwner, onEnd),
    ),
);
var animatedPositioned = MXFunctionInvoke(
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
      Curve curve,
      Duration duration,
      dynamic onEnd,
    }) =>
      AnimatedPositioned(
      key: key,
      child: child,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      curve: curve,
      duration: duration,
      onEnd: createVoidCallbackClosure(animatedPositioned.buildOwner, onEnd),
    ),
);
var animatedPositioned_fromRect = MXFunctionInvoke(
  "animatedPositioned.fromRect",
    ({
      Key key,
      Widget child,
      Rect rect,
      Curve curve,
      Duration duration,
      dynamic onEnd,
    }) =>
      AnimatedPositioned.fromRect(
      key: key,
      child: child,
      rect: rect,
      curve: curve,
      duration: duration,
      onEnd: createVoidCallbackClosure(animatedPositioned_fromRect.buildOwner, onEnd),
    ),
);
var animatedPositionedDirectional = MXFunctionInvoke(
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
      Curve curve,
      Duration duration,
      dynamic onEnd,
    }) =>
      AnimatedPositionedDirectional(
      key: key,
      child: child,
      start: start,
      top: top,
      end: end,
      bottom: bottom,
      width: width,
      height: height,
      curve: curve,
      duration: duration,
      onEnd: createVoidCallbackClosure(animatedPositionedDirectional.buildOwner, onEnd),
    ),
);
var animatedOpacity = MXFunctionInvoke(
    "AnimatedOpacity",
    ({
      Key key,
      Widget child,
      dynamic opacity,
      Curve curve,
      Duration duration,
      dynamic onEnd,
      bool alwaysIncludeSemantics = false,
    }) =>
      AnimatedOpacity(
      key: key,
      child: child,
      opacity: opacity,
      curve: curve,
      duration: duration,
      onEnd: createVoidCallbackClosure(animatedOpacity.buildOwner, onEnd),
      alwaysIncludeSemantics: alwaysIncludeSemantics,
    ),
);
var sliverAnimatedOpacity = MXFunctionInvoke(
    "SliverAnimatedOpacity",
    ({
      Key key,
      Widget sliver,
      dynamic opacity,
      Curve curve,
      Duration duration,
      dynamic onEnd,
      bool alwaysIncludeSemantics = false,
    }) =>
      SliverAnimatedOpacity(
      key: key,
      sliver: sliver,
      opacity: opacity,
      curve: curve,
      duration: duration,
      onEnd: createVoidCallbackClosure(sliverAnimatedOpacity.buildOwner, onEnd),
      alwaysIncludeSemantics: alwaysIncludeSemantics,
    ),
);
var animatedDefaultTextStyle = MXFunctionInvoke(
    "AnimatedDefaultTextStyle",
    ({
      Key key,
      Widget child,
      TextStyle style,
      TextAlign textAlign,
      bool softWrap = true,
      TextOverflow overflow = TextOverflow.clip,
      int maxLines,
      TextWidthBasis textWidthBasis = TextWidthBasis.parent,
      TextHeightBehavior textHeightBehavior,
      Curve curve,
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
      onEnd: createVoidCallbackClosure(animatedDefaultTextStyle.buildOwner, onEnd),
    ),
);
var animatedPhysicalModel = MXFunctionInvoke(
    "AnimatedPhysicalModel",
    ({
      Key key,
      Widget child,
      BoxShape shape,
      Clip clipBehavior = Clip.none,
      BorderRadius borderRadius,
      dynamic elevation,
      Color color,
      bool animateColor = true,
      Color shadowColor,
      bool animateShadowColor = true,
      Curve curve,
      Duration duration,
      dynamic onEnd,
    }) =>
      AnimatedPhysicalModel(
      key: key,
      child: child,
      shape: shape,
      clipBehavior: clipBehavior,
      borderRadius: borderRadius,
      elevation: elevation,
      color: color,
      animateColor: animateColor,
      shadowColor: shadowColor,
      animateShadowColor: animateShadowColor,
      curve: curve,
      duration: duration,
      onEnd: createVoidCallbackClosure(animatedPhysicalModel.buildOwner, onEnd),
    ),
);

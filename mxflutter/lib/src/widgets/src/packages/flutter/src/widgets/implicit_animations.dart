//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';


class MXProxyImplicitAnimations {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
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
  static var boxConstraintsTween = MXFunctionInvoke(
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
  static var decorationTween = MXFunctionInvoke(
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
  static var edgeInsetsTween = MXFunctionInvoke(
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
  static var edgeInsetsGeometryTween = MXFunctionInvoke(
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
  static var borderRadiusTween = MXFunctionInvoke(
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
  static var borderTween = MXFunctionInvoke(
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
  static var matrix4Tween = MXFunctionInvoke(
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
  static var textStyleTween = MXFunctionInvoke(
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
  static var animatedContainer = MXFunctionInvoke(
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
        width: width?.toDouble(),
        height: height?.toDouble(),
        constraints: constraints,
        margin: margin,
        transform: transform,
        child: child,
        curve: curve,
        duration: duration,
        onEnd: createVoidCallbackClosure(animatedContainer.buildOwner, onEnd),
      ),
    );
  static var animatedPadding = MXFunctionInvoke(
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
  static var animatedAlign = MXFunctionInvoke(
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
  static var animatedPositioned = MXFunctionInvoke(
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
        left: left?.toDouble(),
        top: top?.toDouble(),
        right: right?.toDouble(),
        bottom: bottom?.toDouble(),
        width: width?.toDouble(),
        height: height?.toDouble(),
        curve: curve,
        duration: duration,
        onEnd: createVoidCallbackClosure(animatedPositioned.buildOwner, onEnd),
      ),
    );
  static var animatedPositioned_fromRect = MXFunctionInvoke(
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
  static var animatedPositionedDirectional = MXFunctionInvoke(
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
        start: start?.toDouble(),
        top: top?.toDouble(),
        end: end?.toDouble(),
        bottom: bottom?.toDouble(),
        width: width?.toDouble(),
        height: height?.toDouble(),
        curve: curve,
        duration: duration,
        onEnd: createVoidCallbackClosure(animatedPositionedDirectional.buildOwner, onEnd),
      ),
    );
  static var animatedOpacity = MXFunctionInvoke(
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
        opacity: opacity?.toDouble(),
        curve: curve,
        duration: duration,
        onEnd: createVoidCallbackClosure(animatedOpacity.buildOwner, onEnd),
        alwaysIncludeSemantics: alwaysIncludeSemantics,
      ),
    );
  static var sliverAnimatedOpacity = MXFunctionInvoke(
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
        opacity: opacity?.toDouble(),
        curve: curve,
        duration: duration,
        onEnd: createVoidCallbackClosure(sliverAnimatedOpacity.buildOwner, onEnd),
        alwaysIncludeSemantics: alwaysIncludeSemantics,
      ),
    );
  static var animatedDefaultTextStyle = MXFunctionInvoke(
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
  static var animatedPhysicalModel = MXFunctionInvoke(
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
        elevation: elevation?.toDouble(),
        color: color,
        animateColor: animateColor,
        shadowColor: shadowColor,
        animateShadowColor: animateShadowColor,
        curve: curve,
        duration: duration,
        onEnd: createVoidCallbackClosure(animatedPhysicalModel.buildOwner, onEnd),
      ),
    );
}

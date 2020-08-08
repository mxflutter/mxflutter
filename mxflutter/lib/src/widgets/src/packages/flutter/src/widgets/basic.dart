//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/src/widgets/widget_span.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/painting.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBasicSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_directionality.funName] = _directionality;
  m[_opacity.funName] = _opacity;
  m[_shaderMask.funName] = _shaderMask;
  m[_backdropFilter.funName] = _backdropFilter;
  m[_customPaint.funName] = _customPaint;
  m[_clipRect.funName] = _clipRect;
  m[_clipRRect.funName] = _clipRRect;
  m[_clipOval.funName] = _clipOval;
  m[_clipPath.funName] = _clipPath;
  m[_physicalModel.funName] = _physicalModel;
  m[_physicalShape.funName] = _physicalShape;
  m[_transform.funName] = _transform;
  m[_transform_rotate.funName] = _transform_rotate;
  m[_transform_translate.funName] = _transform_translate;
  m[_transform_scale.funName] = _transform_scale;
  m[_compositedTransformTarget.funName] = _compositedTransformTarget;
  m[_compositedTransformFollower.funName] = _compositedTransformFollower;
  m[_fittedBox.funName] = _fittedBox;
  m[_fractionalTranslation.funName] = _fractionalTranslation;
  m[_rotatedBox.funName] = _rotatedBox;
  m[_padding.funName] = _padding;
  m[_align.funName] = _align;
  m[_center.funName] = _center;
  m[_customSingleChildLayout.funName] = _customSingleChildLayout;
  m[_layoutId.funName] = _layoutId;
  m[_customMultiChildLayout.funName] = _customMultiChildLayout;
  m[_sizedBox.funName] = _sizedBox;
  m[_sizedBox_expand.funName] = _sizedBox_expand;
  m[_sizedBox_shrink.funName] = _sizedBox_shrink;
  m[_sizedBox_fromSize.funName] = _sizedBox_fromSize;
  m[_constrainedBox.funName] = _constrainedBox;
  m[_unconstrainedBox.funName] = _unconstrainedBox;
  m[_fractionallySizedBox.funName] = _fractionallySizedBox;
  m[_limitedBox.funName] = _limitedBox;
  m[_overflowBox.funName] = _overflowBox;
  m[_sizedOverflowBox.funName] = _sizedOverflowBox;
  m[_offstage.funName] = _offstage;
  m[_aspectRatio.funName] = _aspectRatio;
  m[_intrinsicWidth.funName] = _intrinsicWidth;
  m[_intrinsicHeight.funName] = _intrinsicHeight;
  m[_baseline.funName] = _baseline;
  m[_sliverToBoxAdapter.funName] = _sliverToBoxAdapter;
  m[_sliverPadding.funName] = _sliverPadding;
  m[_listBody.funName] = _listBody;
  m[_stack.funName] = _stack;
  m[_indexedStack.funName] = _indexedStack;
  m[_positioned.funName] = _positioned;
  m[_positioned_directional.funName] = _positioned_directional;
  m[_positioned_fromRect.funName] = _positioned_fromRect;
  m[_positioned_fromRelativeRect.funName] = _positioned_fromRelativeRect;
  m[_positioned_fill.funName] = _positioned_fill;
  m[_positionedDirectional.funName] = _positionedDirectional;
  m[_flex.funName] = _flex;
  m[_row.funName] = _row;
  m[_column.funName] = _column;
  m[_flexible.funName] = _flexible;
  m[_expanded.funName] = _expanded;
  m[_wrap.funName] = _wrap;
  m[_flow.funName] = _flow;
  m[_flow_unwrapped.funName] = _flow_unwrapped;
  m[_richText.funName] = _richText;
  m[_rawImage.funName] = _rawImage;
  m[_defaultAssetBundle.funName] = _defaultAssetBundle;
  m[_widgetToRenderBoxAdapter.funName] = _widgetToRenderBoxAdapter;
  m[_listener.funName] = _listener;
  m[_mouseRegion.funName] = _mouseRegion;
  m[_repaintBoundary.funName] = _repaintBoundary;
  m[_repaintBoundary_wrap.funName] = _repaintBoundary_wrap;
  m[_ignorePointer.funName] = _ignorePointer;
  m[_absorbPointer.funName] = _absorbPointer;
  m[_metaData.funName] = _metaData;
  m[_semantics.funName] = _semantics;
  m[_semantics_fromProperties.funName] = _semantics_fromProperties;
  m[_mergeSemantics.funName] = _mergeSemantics;
  m[_blockSemantics.funName] = _blockSemantics;
  m[_excludeSemantics.funName] = _excludeSemantics;
  m[_indexedSemantics.funName] = _indexedSemantics;
  m[_keyedSubtree.funName] = _keyedSubtree;
  m[_keyedSubtree_wrap.funName] = _keyedSubtree_wrap;
  m[_builder.funName] = _builder;
  m[_statefulBuilder.funName] = _statefulBuilder;
  m[_coloredBox.funName] = _coloredBox;
  return m;
}
var _directionality = MXFunctionInvoke(
    "Directionality",
    (
      {
      Key key,
      ui.TextDirection textDirection,
      Widget child,
      }
    ) =>
      Directionality(
      key: key,
      textDirection: textDirection,
      child: child,
    ),
);
var _opacity = MXFunctionInvoke(
    "Opacity",
    (
      {
      Key key,
      dynamic opacity,
      bool alwaysIncludeSemantics = false,
      Widget child,
      }
    ) =>
      Opacity(
      key: key,
      opacity: opacity?.toDouble(),
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: child,
    ),
);
var _shaderMask = MXFunctionInvoke(
    "ShaderMask",
    (
      {
      Key key,
      dynamic shaderCallback,
      ui.BlendMode blendMode = ui.BlendMode.modulate,
      Widget child,
      }
    ) =>
      ShaderMask(
      key: key,
      shaderCallback: null,
      blendMode: blendMode,
      child: child,
    ),
);
var _backdropFilter = MXFunctionInvoke(
    "BackdropFilter",
    (
      {
      Key key,
      ui.ImageFilter filter,
      Widget child,
      }
    ) =>
      BackdropFilter(
      key: key,
      filter: filter,
      child: child,
    ),
);
var _customPaint = MXFunctionInvoke(
    "CustomPaint",
    (
      {
      Key key,
      CustomPainter painter,
      CustomPainter foregroundPainter,
      ui.Size size,
      bool isComplex = false,
      bool willChange = false,
      Widget child,
      }
    ) =>
      CustomPaint(
      key: key,
      painter: painter,
      foregroundPainter: foregroundPainter,
      size: size,
      isComplex: isComplex,
      willChange: willChange,
      child: child,
    ),
);
var _clipRect = MXFunctionInvoke(
    "ClipRect",
    (
      {
      Key key,
      CustomClipper<ui.Rect> clipper,
      ui.Clip clipBehavior = ui.Clip.hardEdge,
      Widget child,
      }
    ) =>
      ClipRect(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: child,
    ),
);
var _clipRRect = MXFunctionInvoke(
    "ClipRRect",
    (
      {
      Key key,
      BorderRadius borderRadius,
      CustomClipper<ui.RRect> clipper,
      ui.Clip clipBehavior = ui.Clip.antiAlias,
      Widget child,
      }
    ) =>
      ClipRRect(
      key: key,
      borderRadius: borderRadius,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: child,
    ),
);
var _clipOval = MXFunctionInvoke(
    "ClipOval",
    (
      {
      Key key,
      CustomClipper<ui.Rect> clipper,
      ui.Clip clipBehavior = ui.Clip.antiAlias,
      Widget child,
      }
    ) =>
      ClipOval(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: child,
    ),
);
var _clipPath = MXFunctionInvoke(
    "ClipPath",
    (
      {
      Key key,
      CustomClipper<ui.Path> clipper,
      ui.Clip clipBehavior = ui.Clip.antiAlias,
      Widget child,
      }
    ) =>
      ClipPath(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: child,
    ),
);
var _physicalModel = MXFunctionInvoke(
    "PhysicalModel",
    (
      {
      Key key,
      BoxShape shape = BoxShape.rectangle,
      ui.Clip clipBehavior = ui.Clip.none,
      BorderRadius borderRadius,
      dynamic elevation = 0.0,
      ui.Color color,
      ui.Color shadowColor,
      Widget child,
      }
    ) =>
      PhysicalModel(
      key: key,
      shape: shape,
      clipBehavior: clipBehavior,
      borderRadius: borderRadius,
      elevation: elevation?.toDouble(),
      color: color,
      shadowColor: shadowColor,
      child: child,
    ),
);
var _physicalShape = MXFunctionInvoke(
    "PhysicalShape",
    (
      {
      Key key,
      CustomClipper<ui.Path> clipper,
      ui.Clip clipBehavior = ui.Clip.none,
      dynamic elevation = 0.0,
      ui.Color color,
      ui.Color shadowColor,
      Widget child,
      }
    ) =>
      PhysicalShape(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      elevation: elevation?.toDouble(),
      color: color,
      shadowColor: shadowColor,
      child: child,
    ),
);
var _transform = MXFunctionInvoke(
    "Transform",
    (
      {
      Key key,
      Matrix4 transform,
      ui.Offset origin,
      AlignmentGeometry alignment,
      bool transformHitTests = true,
      Widget child,
      }
    ) =>
      Transform(
      key: key,
      transform: transform,
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
      child: child,
    ),
);
var _transform_rotate = MXFunctionInvoke(
  "Transform.rotate",
    (
      {
      Key key,
      dynamic angle,
      ui.Offset origin,
      AlignmentGeometry alignment,
      bool transformHitTests = true,
      Widget child,
      }
    ) =>
      Transform.rotate(
      key: key,
      angle: angle?.toDouble(),
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
      child: child,
    ),
);
var _transform_translate = MXFunctionInvoke(
  "Transform.translate",
    (
      {
      Key key,
      ui.Offset offset,
      bool transformHitTests = true,
      Widget child,
      }
    ) =>
      Transform.translate(
      key: key,
      offset: offset,
      transformHitTests: transformHitTests,
      child: child,
    ),
);
var _transform_scale = MXFunctionInvoke(
  "Transform.scale",
    (
      {
      Key key,
      dynamic scale,
      ui.Offset origin,
      AlignmentGeometry alignment,
      bool transformHitTests = true,
      Widget child,
      }
    ) =>
      Transform.scale(
      key: key,
      scale: scale?.toDouble(),
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
      child: child,
    ),
);
var _compositedTransformTarget = MXFunctionInvoke(
    "CompositedTransformTarget",
    (
      {
      Key key,
      LayerLink link,
      Widget child,
      }
    ) =>
      CompositedTransformTarget(
      key: key,
      link: link,
      child: child,
    ),
);
var _compositedTransformFollower = MXFunctionInvoke(
    "CompositedTransformFollower",
    (
      {
      Key key,
      LayerLink link,
      bool showWhenUnlinked = true,
      ui.Offset offset,
      Widget child,
      }
    ) =>
      CompositedTransformFollower(
      key: key,
      link: link,
      showWhenUnlinked: showWhenUnlinked,
      offset: offset,
      child: child,
    ),
);
var _fittedBox = MXFunctionInvoke(
    "FittedBox",
    (
      {
      Key key,
      BoxFit fit = BoxFit.contain,
      AlignmentGeometry alignment,
      Widget child,
      }
    ) =>
      FittedBox(
      key: key,
      fit: fit,
      alignment: alignment,
      child: child,
    ),
);
var _fractionalTranslation = MXFunctionInvoke(
    "FractionalTranslation",
    (
      {
      Key key,
      ui.Offset translation,
      bool transformHitTests = true,
      Widget child,
      }
    ) =>
      FractionalTranslation(
      key: key,
      translation: translation,
      transformHitTests: transformHitTests,
      child: child,
    ),
);
var _rotatedBox = MXFunctionInvoke(
    "RotatedBox",
    (
      {
      Key key,
      int quarterTurns,
      Widget child,
      }
    ) =>
      RotatedBox(
      key: key,
      quarterTurns: quarterTurns,
      child: child,
    ),
);
var _padding = MXFunctionInvoke(
    "Padding",
    (
      {
      Key key,
      EdgeInsetsGeometry padding,
      Widget child,
      }
    ) =>
      Padding(
      key: key,
      padding: padding,
      child: child,
    ),
);
var _align = MXFunctionInvoke(
    "Align",
    (
      {
      Key key,
      AlignmentGeometry alignment,
      dynamic widthFactor,
      dynamic heightFactor,
      Widget child,
      }
    ) =>
      Align(
      key: key,
      alignment: alignment,
      widthFactor: widthFactor?.toDouble(),
      heightFactor: heightFactor?.toDouble(),
      child: child,
    ),
);
var _center = MXFunctionInvoke(
    "Center",
    (
      {
      Key key,
      dynamic widthFactor,
      dynamic heightFactor,
      Widget child,
      }
    ) =>
      Center(
      key: key,
      widthFactor: widthFactor?.toDouble(),
      heightFactor: heightFactor?.toDouble(),
      child: child,
    ),
);
var _customSingleChildLayout = MXFunctionInvoke(
    "CustomSingleChildLayout",
    (
      {
      Key key,
      SingleChildLayoutDelegate delegate,
      Widget child,
      }
    ) =>
      CustomSingleChildLayout(
      key: key,
      delegate: delegate,
      child: child,
    ),
);
var _layoutId = MXFunctionInvoke(
    "LayoutId",
    (
      {
      Key key,
      Object id,
      Widget child,
      }
    ) =>
      LayoutId(
      key: key,
      id: id,
      child: child,
    ),
);
var _customMultiChildLayout = MXFunctionInvoke(
    "CustomMultiChildLayout",
    (
      {
      Key key,
      MultiChildLayoutDelegate delegate,
      List<Widget> children,
      }
    ) =>
      CustomMultiChildLayout(
      key: key,
      delegate: delegate,
      children: children,
    ),
);
var _sizedBox = MXFunctionInvoke(
    "SizedBox",
    (
      {
      Key key,
      dynamic width,
      dynamic height,
      Widget child,
      }
    ) =>
      SizedBox(
      key: key,
      width: width?.toDouble(),
      height: height?.toDouble(),
      child: child,
    ),
);
var _sizedBox_expand = MXFunctionInvoke(
  "SizedBox.expand",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      SizedBox.expand(
      key: key,
      child: child,
    ),
);
var _sizedBox_shrink = MXFunctionInvoke(
  "SizedBox.shrink",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      SizedBox.shrink(
      key: key,
      child: child,
    ),
);
var _sizedBox_fromSize = MXFunctionInvoke(
  "SizedBox.fromSize",
    (
      {
      Key key,
      Widget child,
      ui.Size size,
      }
    ) =>
      SizedBox.fromSize(
      key: key,
      child: child,
      size: size,
    ),
);
var _constrainedBox = MXFunctionInvoke(
    "ConstrainedBox",
    (
      {
      Key key,
      BoxConstraints constraints,
      Widget child,
      }
    ) =>
      ConstrainedBox(
      key: key,
      constraints: constraints,
      child: child,
    ),
);
var _unconstrainedBox = MXFunctionInvoke(
    "UnconstrainedBox",
    (
      {
      Key key,
      Widget child,
      ui.TextDirection textDirection,
      AlignmentGeometry alignment,
      Axis constrainedAxis,
      }
    ) =>
      UnconstrainedBox(
      key: key,
      child: child,
      textDirection: textDirection,
      alignment: alignment,
      constrainedAxis: constrainedAxis,
    ),
);
var _fractionallySizedBox = MXFunctionInvoke(
    "FractionallySizedBox",
    (
      {
      Key key,
      AlignmentGeometry alignment,
      dynamic widthFactor,
      dynamic heightFactor,
      Widget child,
      }
    ) =>
      FractionallySizedBox(
      key: key,
      alignment: alignment,
      widthFactor: widthFactor?.toDouble(),
      heightFactor: heightFactor?.toDouble(),
      child: child,
    ),
);
var _limitedBox = MXFunctionInvoke(
    "LimitedBox",
    (
      {
      Key key,
      dynamic maxWidth = double.infinity,
      dynamic maxHeight = double.infinity,
      Widget child,
      }
    ) =>
      LimitedBox(
      key: key,
      maxWidth: maxWidth?.toDouble(),
      maxHeight: maxHeight?.toDouble(),
      child: child,
    ),
);
var _overflowBox = MXFunctionInvoke(
    "OverflowBox",
    (
      {
      Key key,
      AlignmentGeometry alignment,
      dynamic minWidth,
      dynamic maxWidth,
      dynamic minHeight,
      dynamic maxHeight,
      Widget child,
      }
    ) =>
      OverflowBox(
      key: key,
      alignment: alignment,
      minWidth: minWidth?.toDouble(),
      maxWidth: maxWidth?.toDouble(),
      minHeight: minHeight?.toDouble(),
      maxHeight: maxHeight?.toDouble(),
      child: child,
    ),
);
var _sizedOverflowBox = MXFunctionInvoke(
    "SizedOverflowBox",
    (
      {
      Key key,
      ui.Size size,
      AlignmentGeometry alignment,
      Widget child,
      }
    ) =>
      SizedOverflowBox(
      key: key,
      size: size,
      alignment: alignment,
      child: child,
    ),
);
var _offstage = MXFunctionInvoke(
    "Offstage",
    (
      {
      Key key,
      bool offstage = true,
      Widget child,
      }
    ) =>
      Offstage(
      key: key,
      offstage: offstage,
      child: child,
    ),
);
var _aspectRatio = MXFunctionInvoke(
    "AspectRatio",
    (
      {
      Key key,
      dynamic aspectRatio,
      Widget child,
      }
    ) =>
      AspectRatio(
      key: key,
      aspectRatio: aspectRatio?.toDouble(),
      child: child,
    ),
);
var _intrinsicWidth = MXFunctionInvoke(
    "IntrinsicWidth",
    (
      {
      Key key,
      dynamic stepWidth,
      dynamic stepHeight,
      Widget child,
      }
    ) =>
      IntrinsicWidth(
      key: key,
      stepWidth: stepWidth?.toDouble(),
      stepHeight: stepHeight?.toDouble(),
      child: child,
    ),
);
var _intrinsicHeight = MXFunctionInvoke(
    "IntrinsicHeight",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      IntrinsicHeight(
      key: key,
      child: child,
    ),
);
var _baseline = MXFunctionInvoke(
    "Baseline",
    (
      {
      Key key,
      dynamic baseline,
      ui.TextBaseline baselineType,
      Widget child,
      }
    ) =>
      Baseline(
      key: key,
      baseline: baseline?.toDouble(),
      baselineType: baselineType,
      child: child,
    ),
);
var _sliverToBoxAdapter = MXFunctionInvoke(
    "SliverToBoxAdapter",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      SliverToBoxAdapter(
      key: key,
      child: child,
    ),
);
var _sliverPadding = MXFunctionInvoke(
    "SliverPadding",
    (
      {
      Key key,
      EdgeInsetsGeometry padding,
      Widget sliver,
      }
    ) =>
      SliverPadding(
      key: key,
      padding: padding,
      sliver: sliver,
    ),
);
var _listBody = MXFunctionInvoke(
    "ListBody",
    (
      {
      Key key,
      Axis mainAxis = Axis.vertical,
      bool reverse = false,
      List<Widget> children,
      }
    ) =>
      ListBody(
      key: key,
      mainAxis: mainAxis,
      reverse: reverse,
      children: children,
    ),
);
var _stack = MXFunctionInvoke(
    "Stack",
    (
      {
      Key key,
      AlignmentGeometry alignment,
      ui.TextDirection textDirection,
      StackFit fit = StackFit.loose,
      Overflow overflow = Overflow.clip,
      List<Widget> children,
      }
    ) =>
      Stack(
      key: key,
      alignment: alignment,
      textDirection: textDirection,
      fit: fit,
      overflow: overflow,
      children: children,
    ),
);
var _indexedStack = MXFunctionInvoke(
    "IndexedStack",
    (
      {
      Key key,
      AlignmentGeometry alignment,
      ui.TextDirection textDirection,
      StackFit sizing = StackFit.loose,
      int index = 0,
      List<Widget> children,
      }
    ) =>
      IndexedStack(
      key: key,
      alignment: alignment,
      textDirection: textDirection,
      sizing: sizing,
      index: index,
      children: children,
    ),
);
var _positioned = MXFunctionInvoke(
    "Positioned",
    (
      {
      Key key,
      dynamic left,
      dynamic top,
      dynamic right,
      dynamic bottom,
      dynamic width,
      dynamic height,
      Widget child,
      }
    ) =>
      Positioned(
      key: key,
      left: left?.toDouble(),
      top: top?.toDouble(),
      right: right?.toDouble(),
      bottom: bottom?.toDouble(),
      width: width?.toDouble(),
      height: height?.toDouble(),
      child: child,
    ),
);
var _positioned_directional = MXFunctionInvoke(
  "Positioned.directional",
    (
      {
      Key key,
      ui.TextDirection textDirection,
      dynamic start,
      dynamic top,
      dynamic end,
      dynamic bottom,
      dynamic width,
      dynamic height,
      Widget child,
      }
    ) =>
      Positioned.directional(
      key: key,
      textDirection: textDirection,
      start: start?.toDouble(),
      top: top?.toDouble(),
      end: end?.toDouble(),
      bottom: bottom?.toDouble(),
      width: width?.toDouble(),
      height: height?.toDouble(),
      child: child,
    ),
);
var _positioned_fromRect = MXFunctionInvoke(
  "Positioned.fromRect",
    (
      {
      Key key,
      ui.Rect rect,
      Widget child,
      }
    ) =>
      Positioned.fromRect(
      key: key,
      rect: rect,
      child: child,
    ),
);
var _positioned_fromRelativeRect = MXFunctionInvoke(
  "Positioned.fromRelativeRect",
    (
      {
      Key key,
      RelativeRect rect,
      Widget child,
      }
    ) =>
      Positioned.fromRelativeRect(
      key: key,
      rect: rect,
      child: child,
    ),
);
var _positioned_fill = MXFunctionInvoke(
  "Positioned.fill",
    (
      {
      Key key,
      dynamic left = 0.0,
      dynamic top = 0.0,
      dynamic right = 0.0,
      dynamic bottom = 0.0,
      Widget child,
      }
    ) =>
      Positioned.fill(
      key: key,
      left: left?.toDouble(),
      top: top?.toDouble(),
      right: right?.toDouble(),
      bottom: bottom?.toDouble(),
      child: child,
    ),
);
var _positionedDirectional = MXFunctionInvoke(
    "PositionedDirectional",
    (
      {
      Key key,
      dynamic start,
      dynamic top,
      dynamic end,
      dynamic bottom,
      dynamic width,
      dynamic height,
      Widget child,
      }
    ) =>
      PositionedDirectional(
      key: key,
      start: start?.toDouble(),
      top: top?.toDouble(),
      end: end?.toDouble(),
      bottom: bottom?.toDouble(),
      width: width?.toDouble(),
      height: height?.toDouble(),
      child: child,
    ),
);
var _flex = MXFunctionInvoke(
    "Flex",
    (
      {
      Key key,
      Axis direction,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      ui.TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      ui.TextBaseline textBaseline,
      List<Widget> children,
      }
    ) =>
      Flex(
      key: key,
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: children,
    ),
);
var _row = MXFunctionInvoke(
    "Row",
    (
      {
      Key key,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      ui.TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      ui.TextBaseline textBaseline,
      List<Widget> children,
      }
    ) =>
      Row(
      key: key,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: children,
    ),
);
var _column = MXFunctionInvoke(
    "Column",
    (
      {
      Key key,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      ui.TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      ui.TextBaseline textBaseline,
      List<Widget> children,
      }
    ) =>
      Column(
      key: key,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: children,
    ),
);
var _flexible = MXFunctionInvoke(
    "Flexible",
    (
      {
      Key key,
      int flex = 1,
      FlexFit fit = FlexFit.loose,
      Widget child,
      }
    ) =>
      Flexible(
      key: key,
      flex: flex,
      fit: fit,
      child: child,
    ),
);
var _expanded = MXFunctionInvoke(
    "Expanded",
    (
      {
      Key key,
      int flex = 1,
      Widget child,
      }
    ) =>
      Expanded(
      key: key,
      flex: flex,
      child: child,
    ),
);
var _wrap = MXFunctionInvoke(
    "Wrap",
    (
      {
      Key key,
      Axis direction = Axis.horizontal,
      WrapAlignment alignment = WrapAlignment.start,
      dynamic spacing = 0.0,
      WrapAlignment runAlignment = WrapAlignment.start,
      dynamic runSpacing = 0.0,
      WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
      ui.TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      List<Widget> children,
      }
    ) =>
      Wrap(
      key: key,
      direction: direction,
      alignment: alignment,
      spacing: spacing?.toDouble(),
      runAlignment: runAlignment,
      runSpacing: runSpacing?.toDouble(),
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      children: children,
    ),
);
var _flow = MXFunctionInvoke(
    "Flow",
    (
      {
      Key key,
      FlowDelegate delegate,
      List<Widget> children,
      }
    ) =>
      Flow(
      key: key,
      delegate: delegate,
      children: children,
    ),
);
var _flow_unwrapped = MXFunctionInvoke(
  "Flow.unwrapped",
    (
      {
      Key key,
      FlowDelegate delegate,
      List<Widget> children,
      }
    ) =>
      Flow.unwrapped(
      key: key,
      delegate: delegate,
      children: children,
    ),
);
var _richText = MXFunctionInvoke(
    "RichText",
    (
      {
      Key key,
      InlineSpan text,
      ui.TextAlign textAlign = ui.TextAlign.start,
      ui.TextDirection textDirection,
      bool softWrap = true,
      TextOverflow overflow = TextOverflow.clip,
      dynamic textScaleFactor = 1.0,
      int maxLines,
      ui.Locale locale,
      StrutStyle strutStyle,
      TextWidthBasis textWidthBasis = TextWidthBasis.parent,
      ui.TextHeightBehavior textHeightBehavior,
      }
    ) =>
      RichText(
      key: key,
      text: text,
      textAlign: textAlign,
      textDirection: textDirection,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor?.toDouble(),
      maxLines: maxLines,
      locale: locale,
      strutStyle: strutStyle,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    ),
);
var _rawImage = MXFunctionInvoke(
    "RawImage",
    (
      {
      Key key,
      ui.Image image,
      dynamic width,
      dynamic height,
      dynamic scale = 1.0,
      ui.Color color,
      ui.BlendMode colorBlendMode,
      BoxFit fit,
      AlignmentGeometry alignment,
      ImageRepeat repeat = ImageRepeat.noRepeat,
      ui.Rect centerSlice,
      bool matchTextDirection = false,
      bool invertColors = false,
      ui.FilterQuality filterQuality = ui.FilterQuality.low,
      }
    ) =>
      RawImage(
      key: key,
      image: image,
      width: width?.toDouble(),
      height: height?.toDouble(),
      scale: scale?.toDouble(),
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      invertColors: invertColors,
      filterQuality: filterQuality,
    ),
);
var _defaultAssetBundle = MXFunctionInvoke(
    "DefaultAssetBundle",
    (
      {
      Key key,
      AssetBundle bundle,
      Widget child,
      }
    ) =>
      DefaultAssetBundle(
      key: key,
      bundle: bundle,
      child: child,
    ),
);
var _widgetToRenderBoxAdapter = MXFunctionInvoke(
    "WidgetToRenderBoxAdapter",
    (
      {
      RenderBox renderBox,
      dynamic onBuild,
      }
    ) =>
      WidgetToRenderBoxAdapter(
      renderBox: renderBox,
      onBuild: createVoidCallbackClosure(_widgetToRenderBoxAdapter.buildOwner, onBuild),
    ),
);
var _listener = MXFunctionInvoke(
    "Listener",
    (
      {
      Key key,
      dynamic onPointerDown,
      dynamic onPointerMove,
      dynamic onPointerEnter,
      dynamic onPointerExit,
      dynamic onPointerHover,
      dynamic onPointerUp,
      dynamic onPointerCancel,
      dynamic onPointerSignal,
      HitTestBehavior behavior = HitTestBehavior.deferToChild,
      Widget child,
      }
    ) =>
      Listener(
      key: key,
      onPointerDown: createValueChangedGenericClosure<PointerDownEvent>(_listener.buildOwner, onPointerDown),
      onPointerMove: createValueChangedGenericClosure<PointerMoveEvent>(_listener.buildOwner, onPointerMove),
      onPointerEnter: createValueChangedGenericClosure<PointerEnterEvent>(_listener.buildOwner, onPointerEnter),
      onPointerExit: createValueChangedGenericClosure<PointerExitEvent>(_listener.buildOwner, onPointerExit),
      onPointerHover: createValueChangedGenericClosure<PointerHoverEvent>(_listener.buildOwner, onPointerHover),
      onPointerUp: createValueChangedGenericClosure<PointerUpEvent>(_listener.buildOwner, onPointerUp),
      onPointerCancel: createValueChangedGenericClosure<PointerCancelEvent>(_listener.buildOwner, onPointerCancel),
      onPointerSignal: createValueChangedGenericClosure<PointerSignalEvent>(_listener.buildOwner, onPointerSignal),
      behavior: behavior,
      child: child,
    ),
);
var _mouseRegion = MXFunctionInvoke(
    "MouseRegion",
    (
      {
      Key key,
      dynamic onEnter,
      dynamic onExit,
      dynamic onHover,
      bool opaque = true,
      Widget child,
      }
    ) =>
      MouseRegion(
      key: key,
      onEnter: createValueChangedGenericClosure<PointerEnterEvent>(_mouseRegion.buildOwner, onEnter),
      onExit: createValueChangedGenericClosure<PointerExitEvent>(_mouseRegion.buildOwner, onExit),
      onHover: createValueChangedGenericClosure<PointerHoverEvent>(_mouseRegion.buildOwner, onHover),
      opaque: opaque,
      child: child,
    ),
);
var _repaintBoundary = MXFunctionInvoke(
    "RepaintBoundary",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      RepaintBoundary(
      key: key,
      child: child,
    ),
);
var _repaintBoundary_wrap = MXFunctionInvoke(
  "RepaintBoundary.wrap",
    (
      {
      Widget child,
      int childIndex,
      }
    ) =>
      RepaintBoundary.wrap(
      child,
      childIndex,
    ),
);
var _ignorePointer = MXFunctionInvoke(
    "IgnorePointer",
    (
      {
      Key key,
      bool ignoring = true,
      bool ignoringSemantics,
      Widget child,
      }
    ) =>
      IgnorePointer(
      key: key,
      ignoring: ignoring,
      ignoringSemantics: ignoringSemantics,
      child: child,
    ),
);
var _absorbPointer = MXFunctionInvoke(
    "AbsorbPointer",
    (
      {
      Key key,
      bool absorbing = true,
      Widget child,
      bool ignoringSemantics,
      }
    ) =>
      AbsorbPointer(
      key: key,
      absorbing: absorbing,
      child: child,
      ignoringSemantics: ignoringSemantics,
    ),
);
var _metaData = MXFunctionInvoke(
    "MetaData",
    (
      {
      Key key,
      dynamic metaData,
      HitTestBehavior behavior = HitTestBehavior.deferToChild,
      Widget child,
      }
    ) =>
      MetaData(
      key: key,
      metaData: metaData,
      behavior: behavior,
      child: child,
    ),
);
var _semantics = MXFunctionInvoke(
    "Semantics",
    (
      {
      Key key,
      Widget child,
      bool container = false,
      bool explicitChildNodes = false,
      bool excludeSemantics = false,
      bool enabled,
      bool checked,
      bool selected,
      bool toggled,
      bool button,
      bool link,
      bool header,
      bool textField,
      bool readOnly,
      bool focusable,
      bool focused,
      bool inMutuallyExclusiveGroup,
      bool obscured,
      bool multiline,
      bool scopesRoute,
      bool namesRoute,
      bool hidden,
      bool image,
      bool liveRegion,
      int maxValueLength,
      int currentValueLength,
      String label,
      String value,
      String increasedValue,
      String decreasedValue,
      String hint,
      String onTapHint,
      String onLongPressHint,
      ui.TextDirection textDirection,
      SemanticsSortKey sortKey,
      dynamic onTap,
      dynamic onLongPress,
      dynamic onScrollLeft,
      dynamic onScrollRight,
      dynamic onScrollUp,
      dynamic onScrollDown,
      dynamic onIncrease,
      dynamic onDecrease,
      dynamic onCopy,
      dynamic onCut,
      dynamic onPaste,
      dynamic onDismiss,
      dynamic onMoveCursorForwardByCharacter,
      dynamic onMoveCursorBackwardByCharacter,
      dynamic onSetSelection,
      dynamic onDidGainAccessibilityFocus,
      dynamic onDidLoseAccessibilityFocus,
      Map<CustomSemanticsAction, void Function()> customSemanticsActions,
      }
    ) =>
      Semantics(
      key: key,
      child: child,
      container: container,
      explicitChildNodes: explicitChildNodes,
      excludeSemantics: excludeSemantics,
      enabled: enabled,
      checked: checked,
      selected: selected,
      toggled: toggled,
      button: button,
      link: link,
      header: header,
      textField: textField,
      readOnly: readOnly,
      focusable: focusable,
      focused: focused,
      inMutuallyExclusiveGroup: inMutuallyExclusiveGroup,
      obscured: obscured,
      multiline: multiline,
      scopesRoute: scopesRoute,
      namesRoute: namesRoute,
      hidden: hidden,
      image: image,
      liveRegion: liveRegion,
      maxValueLength: maxValueLength,
      currentValueLength: currentValueLength,
      label: label,
      value: value,
      increasedValue: increasedValue,
      decreasedValue: decreasedValue,
      hint: hint,
      onTapHint: onTapHint,
      onLongPressHint: onLongPressHint,
      textDirection: textDirection,
      sortKey: sortKey,
      onTap: createVoidCallbackClosure(_semantics.buildOwner, onTap),
      onLongPress: createVoidCallbackClosure(_semantics.buildOwner, onLongPress),
      onScrollLeft: createVoidCallbackClosure(_semantics.buildOwner, onScrollLeft),
      onScrollRight: createVoidCallbackClosure(_semantics.buildOwner, onScrollRight),
      onScrollUp: createVoidCallbackClosure(_semantics.buildOwner, onScrollUp),
      onScrollDown: createVoidCallbackClosure(_semantics.buildOwner, onScrollDown),
      onIncrease: createVoidCallbackClosure(_semantics.buildOwner, onIncrease),
      onDecrease: createVoidCallbackClosure(_semantics.buildOwner, onDecrease),
      onCopy: createVoidCallbackClosure(_semantics.buildOwner, onCopy),
      onCut: createVoidCallbackClosure(_semantics.buildOwner, onCut),
      onPaste: createVoidCallbackClosure(_semantics.buildOwner, onPaste),
      onDismiss: createVoidCallbackClosure(_semantics.buildOwner, onDismiss),
      onMoveCursorForwardByCharacter: createValueChangedGenericClosure<bool>(_semantics.buildOwner, onMoveCursorForwardByCharacter),
      onMoveCursorBackwardByCharacter: createValueChangedGenericClosure<bool>(_semantics.buildOwner, onMoveCursorBackwardByCharacter),
      onSetSelection: createValueChangedGenericClosure<TextSelection>(_semantics.buildOwner, onSetSelection),
      onDidGainAccessibilityFocus: createVoidCallbackClosure(_semantics.buildOwner, onDidGainAccessibilityFocus),
      onDidLoseAccessibilityFocus: createVoidCallbackClosure(_semantics.buildOwner, onDidLoseAccessibilityFocus),
      customSemanticsActions: customSemanticsActions,
    ),
);
var _semantics_fromProperties = MXFunctionInvoke(
  "Semantics.fromProperties",
    (
      {
      Key key,
      Widget child,
      bool container = false,
      bool explicitChildNodes = false,
      bool excludeSemantics = false,
      SemanticsProperties properties,
      }
    ) =>
      Semantics.fromProperties(
      key: key,
      child: child,
      container: container,
      explicitChildNodes: explicitChildNodes,
      excludeSemantics: excludeSemantics,
      properties: properties,
    ),
);
var _mergeSemantics = MXFunctionInvoke(
    "MergeSemantics",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      MergeSemantics(
      key: key,
      child: child,
    ),
);
var _blockSemantics = MXFunctionInvoke(
    "BlockSemantics",
    (
      {
      Key key,
      bool blocking = true,
      Widget child,
      }
    ) =>
      BlockSemantics(
      key: key,
      blocking: blocking,
      child: child,
    ),
);
var _excludeSemantics = MXFunctionInvoke(
    "ExcludeSemantics",
    (
      {
      Key key,
      bool excluding = true,
      Widget child,
      }
    ) =>
      ExcludeSemantics(
      key: key,
      excluding: excluding,
      child: child,
    ),
);
var _indexedSemantics = MXFunctionInvoke(
    "IndexedSemantics",
    (
      {
      Key key,
      int index,
      Widget child,
      }
    ) =>
      IndexedSemantics(
      key: key,
      index: index,
      child: child,
    ),
);
var _keyedSubtree = MXFunctionInvoke(
    "KeyedSubtree",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      KeyedSubtree(
      key: key,
      child: child,
    ),
);
var _keyedSubtree_wrap = MXFunctionInvoke(
  "KeyedSubtree.wrap",
    (
      {
      Widget child,
      int childIndex,
      }
    ) =>
      KeyedSubtree.wrap(
      child,
      childIndex,
    ),
);
var _builder = MXFunctionInvoke(
    "Builder",
    (
      {
      Key key,
      dynamic builder,
      }
    ) =>
      Builder(
      key: key,
      builder: null,
    ),
);
var _statefulBuilder = MXFunctionInvoke(
    "StatefulBuilder",
    (
      {
      Key key,
      dynamic builder,
      }
    ) =>
      StatefulBuilder(
      key: key,
      builder: null,
    ),
);
var _coloredBox = MXFunctionInvoke(
    "ColoredBox",
    (
      {
      ui.Color color,
      Widget child,
      Key key,
      }
    ) =>
      ColoredBox(
      color: color,
      child: child,
      key: key,
    ),
);

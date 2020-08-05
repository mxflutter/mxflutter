//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/mouse_tracking.dart';
import 'package:flutter/src/rendering/view.dart';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/binding.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'dart:typed_data';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/animation.dart';
import 'dart:math';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerLayerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_annotationEntry.funName] = _annotationEntry;
  m[_annotationResult.funName] = _annotationResult;
  m[_pictureLayer.funName] = _pictureLayer;
  m[_textureLayer.funName] = _textureLayer;
  m[_platformViewLayer.funName] = _platformViewLayer;
  m[_performanceOverlayLayer.funName] = _performanceOverlayLayer;
  m[_containerLayer.funName] = _containerLayer;
  m[_offsetLayer.funName] = _offsetLayer;
  m[_clipRectLayer.funName] = _clipRectLayer;
  m[_clipRRectLayer.funName] = _clipRRectLayer;
  m[_clipPathLayer.funName] = _clipPathLayer;
  m[_colorFilterLayer.funName] = _colorFilterLayer;
  m[_imageFilterLayer.funName] = _imageFilterLayer;
  m[_transformLayer.funName] = _transformLayer;
  m[_opacityLayer.funName] = _opacityLayer;
  m[_shaderMaskLayer.funName] = _shaderMaskLayer;
  m[_backdropFilterLayer.funName] = _backdropFilterLayer;
  m[_physicalModelLayer.funName] = _physicalModelLayer;
  m[_layerLink.funName] = _layerLink;
  m[_leaderLayer.funName] = _leaderLayer;
  m[_followerLayer.funName] = _followerLayer;
  m[_annotatedRegionLayer.funName] = _annotatedRegionLayer;
  m[_viewConfiguration.funName] = _viewConfiguration;
  m[_renderView.funName] = _renderView;
  m[_renderingFlutterBinding.funName] = _renderingFlutterBinding;
  m[_parentData.funName] = _parentData;
  m[_paintingContext.funName] = _paintingContext;
  m[_pipelineOwner.funName] = _pipelineOwner;
  m[_flutterErrorDetailsForRendering.funName] = _flutterErrorDetailsForRendering;
  m[_diagnosticsDebugCreator.funName] = _diagnosticsDebugCreator;
  m[_boxConstraints.funName] = _boxConstraints;
  m[_boxConstraints_tight.funName] = _boxConstraints_tight;
  m[_boxConstraints_tightFor.funName] = _boxConstraints_tightFor;
  m[_boxConstraints_tightForFinite.funName] = _boxConstraints_tightForFinite;
  m[_boxConstraints_loose.funName] = _boxConstraints_loose;
  m[_boxConstraints_expand.funName] = _boxConstraints_expand;
  m[_boxHitTestResult.funName] = _boxHitTestResult;
  m[_boxHitTestResult_wrap.funName] = _boxHitTestResult_wrap;
  m[_boxHitTestEntry.funName] = _boxHitTestEntry;
  m[_boxParentData.funName] = _boxParentData;
  return m;
}
var _annotationEntry = MXFunctionInvoke(
    "AnnotationEntry",
    (
      {
      dynamic annotation,
      Offset localPosition,
      }
    ) =>
      AnnotationEntry(
      annotation: annotation,
      localPosition: localPosition,
    ),
);
var _annotationResult = MXFunctionInvoke(
    "AnnotationResult",
    (
    ) =>
      AnnotationResult(
    ),
);
var _pictureLayer = MXFunctionInvoke(
    "PictureLayer",
    (
      {
      Rect canvasBounds,
      }
    ) =>
      PictureLayer(
      canvasBounds,
    ),
);
var _textureLayer = MXFunctionInvoke(
    "TextureLayer",
    (
      {
      Rect rect,
      int textureId,
      bool freeze = false,
      }
    ) =>
      TextureLayer(
      rect: rect,
      textureId: textureId,
      freeze: freeze,
    ),
);
var _platformViewLayer = MXFunctionInvoke(
    "PlatformViewLayer",
    (
      {
      Rect rect,
      int viewId,
      MouseTrackerAnnotation hoverAnnotation,
      }
    ) =>
      PlatformViewLayer(
      rect: rect,
      viewId: viewId,
      hoverAnnotation: hoverAnnotation,
    ),
);
var _performanceOverlayLayer = MXFunctionInvoke(
    "PerformanceOverlayLayer",
    (
      {
      Rect overlayRect,
      int optionsMask,
      int rasterizerThreshold,
      bool checkerboardRasterCacheImages,
      bool checkerboardOffscreenLayers,
      }
    ) =>
      PerformanceOverlayLayer(
      overlayRect: overlayRect,
      optionsMask: optionsMask,
      rasterizerThreshold: rasterizerThreshold,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
    ),
);
var _containerLayer = MXFunctionInvoke(
    "ContainerLayer",
    (
    ) =>
      ContainerLayer(
    ),
);
var _offsetLayer = MXFunctionInvoke(
    "OffsetLayer",
    (
      {
      Offset offset,
      }
    ) =>
      OffsetLayer(
      offset: offset,
    ),
);
var _clipRectLayer = MXFunctionInvoke(
    "ClipRectLayer",
    (
      {
      Rect clipRect,
      Clip clipBehavior = Clip.hardEdge,
      }
    ) =>
      ClipRectLayer(
      clipRect: clipRect,
      clipBehavior: clipBehavior,
    ),
);
var _clipRRectLayer = MXFunctionInvoke(
    "ClipRRectLayer",
    (
      {
      RRect clipRRect,
      Clip clipBehavior = Clip.antiAlias,
      }
    ) =>
      ClipRRectLayer(
      clipRRect: clipRRect,
      clipBehavior: clipBehavior,
    ),
);
var _clipPathLayer = MXFunctionInvoke(
    "ClipPathLayer",
    (
      {
      Path clipPath,
      Clip clipBehavior = Clip.antiAlias,
      }
    ) =>
      ClipPathLayer(
      clipPath: clipPath,
      clipBehavior: clipBehavior,
    ),
);
var _colorFilterLayer = MXFunctionInvoke(
    "ColorFilterLayer",
    (
      {
      ColorFilter colorFilter,
      }
    ) =>
      ColorFilterLayer(
      colorFilter: colorFilter,
    ),
);
var _imageFilterLayer = MXFunctionInvoke(
    "ImageFilterLayer",
    (
      {
      ImageFilter imageFilter,
      }
    ) =>
      ImageFilterLayer(
      imageFilter: imageFilter,
    ),
);
var _transformLayer = MXFunctionInvoke(
    "TransformLayer",
    (
      {
      Matrix4 transform,
      Offset offset,
      }
    ) =>
      TransformLayer(
      transform: transform,
      offset: offset,
    ),
);
var _opacityLayer = MXFunctionInvoke(
    "OpacityLayer",
    (
      {
      int alpha,
      Offset offset,
      }
    ) =>
      OpacityLayer(
      alpha: alpha,
      offset: offset,
    ),
);
var _shaderMaskLayer = MXFunctionInvoke(
    "ShaderMaskLayer",
    (
      {
      Shader shader,
      Rect maskRect,
      BlendMode blendMode,
      }
    ) =>
      ShaderMaskLayer(
      shader: shader,
      maskRect: maskRect,
      blendMode: blendMode,
    ),
);
var _backdropFilterLayer = MXFunctionInvoke(
    "BackdropFilterLayer",
    (
      {
      ImageFilter filter,
      }
    ) =>
      BackdropFilterLayer(
      filter: filter,
    ),
);
var _physicalModelLayer = MXFunctionInvoke(
    "PhysicalModelLayer",
    (
      {
      Path clipPath,
      Clip clipBehavior = Clip.none,
      double elevation,
      Color color,
      Color shadowColor,
      }
    ) =>
      PhysicalModelLayer(
      clipPath: clipPath,
      clipBehavior: clipBehavior,
      elevation: elevation?.toDouble(),
      color: color,
      shadowColor: shadowColor,
    ),
);
var _layerLink = MXFunctionInvoke(
    "LayerLink",
    (
    ) =>
      LayerLink(
    ),
);
var _leaderLayer = MXFunctionInvoke(
    "LeaderLayer",
    (
      {
      LayerLink link,
      Offset offset,
      }
    ) =>
      LeaderLayer(
      link: link,
      offset: offset,
    ),
);
var _followerLayer = MXFunctionInvoke(
    "FollowerLayer",
    (
      {
      LayerLink link,
      bool showWhenUnlinked = true,
      Offset unlinkedOffset,
      Offset linkedOffset,
      }
    ) =>
      FollowerLayer(
      link: link,
      showWhenUnlinked: showWhenUnlinked,
      unlinkedOffset: unlinkedOffset,
      linkedOffset: linkedOffset,
    ),
);
var _annotatedRegionLayer = MXFunctionInvoke(
    "AnnotatedRegionLayer",
    (
      {
      dynamic value,
      Size size,
      Offset offset,
      bool opaque = false,
      }
    ) =>
      AnnotatedRegionLayer(
      value,
      size: size,
      offset: offset,
      opaque: opaque,
    ),
);
var _viewConfiguration = MXFunctionInvoke(
    "ViewConfiguration",
    (
      {
      Size size,
      double devicePixelRatio = 1.0,
      }
    ) =>
      ViewConfiguration(
      size: size,
      devicePixelRatio: devicePixelRatio?.toDouble(),
    ),
);
var _renderView = MXFunctionInvoke(
    "RenderView",
    (
      {
      RenderBox child,
      ViewConfiguration configuration,
      Window window,
      }
    ) =>
      RenderView(
      child: child,
      configuration: configuration,
      window: window,
    ),
);
var _renderingFlutterBinding = MXFunctionInvoke(
    "RenderingFlutterBinding",
    (
      {
      RenderBox root,
      }
    ) =>
      RenderingFlutterBinding(
      root: root,
    ),
);
var _parentData = MXFunctionInvoke(
    "ParentData",
    (
    ) =>
      ParentData(
    ),
);
var _paintingContext = MXFunctionInvoke(
    "PaintingContext",
    (
      {
      ContainerLayer containerLayer,
      Rect estimatedBounds,
      }
    ) =>
      PaintingContext(
      containerLayer,
      estimatedBounds,
    ),
);
var _pipelineOwner = MXFunctionInvoke(
    "PipelineOwner",
    (
      {
      dynamic onNeedVisualUpdate,
      dynamic onSemanticsOwnerCreated,
      dynamic onSemanticsOwnerDisposed,
      }
    ) =>
      PipelineOwner(
      onNeedVisualUpdate: createVoidCallbackClosure(_pipelineOwner.buildOwner, onNeedVisualUpdate),
      onSemanticsOwnerCreated: createVoidCallbackClosure(_pipelineOwner.buildOwner, onSemanticsOwnerCreated),
      onSemanticsOwnerDisposed: createVoidCallbackClosure(_pipelineOwner.buildOwner, onSemanticsOwnerDisposed),
    ),
);
var _flutterErrorDetailsForRendering = MXFunctionInvoke(
    "FlutterErrorDetailsForRendering",
    (
      {
      dynamic exception,
      StackTrace stack,
      String library,
      DiagnosticsNode context,
      RenderObject renderObject,
      dynamic informationCollector,
      bool silent = false,
      }
    ) =>
      FlutterErrorDetailsForRendering(
      exception: exception,
      stack: stack,
      library: library,
      context: context,
      renderObject: renderObject,
      informationCollector: informationCollector,
      silent: silent,
    ),
);
var _diagnosticsDebugCreator = MXFunctionInvoke(
    "DiagnosticsDebugCreator",
    (
      {
      Object value,
      }
    ) =>
      DiagnosticsDebugCreator(
      value,
    ),
);
var _boxConstraints = MXFunctionInvoke(
    "BoxConstraints",
    (
      {
      double minWidth = 0.0,
      double maxWidth = double.infinity,
      double minHeight = 0.0,
      double maxHeight = double.infinity,
      }
    ) =>
      BoxConstraints(
      minWidth: minWidth?.toDouble(),
      maxWidth: maxWidth?.toDouble(),
      minHeight: minHeight?.toDouble(),
      maxHeight: maxHeight?.toDouble(),
    ),
);
var _boxConstraints_tight = MXFunctionInvoke(
  "boxConstraints.tight",
    (
      {
      Size size,
      }
    ) =>
      BoxConstraints.tight(
      size,
    ),
);
var _boxConstraints_tightFor = MXFunctionInvoke(
  "boxConstraints.tightFor",
    (
      {
      double width,
      double height,
      }
    ) =>
      BoxConstraints.tightFor(
      width: width?.toDouble(),
      height: height?.toDouble(),
    ),
);
var _boxConstraints_tightForFinite = MXFunctionInvoke(
  "boxConstraints.tightForFinite",
    (
      {
      double width = double.infinity,
      double height = double.infinity,
      }
    ) =>
      BoxConstraints.tightForFinite(
      width: width?.toDouble(),
      height: height?.toDouble(),
    ),
);
var _boxConstraints_loose = MXFunctionInvoke(
  "boxConstraints.loose",
    (
      {
      Size size,
      }
    ) =>
      BoxConstraints.loose(
      size,
    ),
);
var _boxConstraints_expand = MXFunctionInvoke(
  "boxConstraints.expand",
    (
      {
      double width,
      double height,
      }
    ) =>
      BoxConstraints.expand(
      width: width?.toDouble(),
      height: height?.toDouble(),
    ),
);
var _boxHitTestResult = MXFunctionInvoke(
    "BoxHitTestResult",
    (
    ) =>
      BoxHitTestResult(
    ),
);
var _boxHitTestResult_wrap = MXFunctionInvoke(
  "boxHitTestResult.wrap",
    (
      {
      HitTestResult result,
      }
    ) =>
      BoxHitTestResult.wrap(
      result,
    ),
);
var _boxHitTestEntry = MXFunctionInvoke(
    "BoxHitTestEntry",
    (
      {
      RenderBox target,
      Offset localPosition,
      }
    ) =>
      BoxHitTestEntry(
      target,
      localPosition,
    ),
);
var _boxParentData = MXFunctionInvoke(
    "BoxParentData",
    (
    ) =>
      BoxParentData(
    ),
);

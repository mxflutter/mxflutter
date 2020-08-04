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
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/binding.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/mouse_tracking.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/binding.dart';
import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/mouse_tracking.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/rendering/object.dart';
import 'dart:developer';
import 'dart:ui';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/semantics.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/binding.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/object.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerLayerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[annotationEntry.funName] = annotationEntry;
  m[annotationResult.funName] = annotationResult;
  m[pictureLayer.funName] = pictureLayer;
  m[textureLayer.funName] = textureLayer;
  m[platformViewLayer.funName] = platformViewLayer;
  m[performanceOverlayLayer.funName] = performanceOverlayLayer;
  m[containerLayer.funName] = containerLayer;
  m[offsetLayer.funName] = offsetLayer;
  m[clipRectLayer.funName] = clipRectLayer;
  m[clipRRectLayer.funName] = clipRRectLayer;
  m[clipPathLayer.funName] = clipPathLayer;
  m[colorFilterLayer.funName] = colorFilterLayer;
  m[imageFilterLayer.funName] = imageFilterLayer;
  m[transformLayer.funName] = transformLayer;
  m[opacityLayer.funName] = opacityLayer;
  m[shaderMaskLayer.funName] = shaderMaskLayer;
  m[backdropFilterLayer.funName] = backdropFilterLayer;
  m[physicalModelLayer.funName] = physicalModelLayer;
  m[layerLink.funName] = layerLink;
  m[leaderLayer.funName] = leaderLayer;
  m[followerLayer.funName] = followerLayer;
  m[annotatedRegionLayer.funName] = annotatedRegionLayer;
  m[viewConfiguration.funName] = viewConfiguration;
  m[renderView.funName] = renderView;
  m[renderingFlutterBinding.funName] = renderingFlutterBinding;
  m[parentData.funName] = parentData;
  m[paintingContext.funName] = paintingContext;
  m[pipelineOwner.funName] = pipelineOwner;
  m[flutterErrorDetailsForRendering.funName] = flutterErrorDetailsForRendering;
  m[diagnosticsDebugCreator.funName] = diagnosticsDebugCreator;
  m[boxConstraints.funName] = boxConstraints;
  m[boxConstraints_tight.funName] = boxConstraints_tight;
  m[boxConstraints_tightFor.funName] = boxConstraints_tightFor;
  m[boxConstraints_tightForFinite.funName] = boxConstraints_tightForFinite;
  m[boxConstraints_loose.funName] = boxConstraints_loose;
  m[boxConstraints_expand.funName] = boxConstraints_expand;
  m[boxHitTestResult.funName] = boxHitTestResult;
  m[boxHitTestResult_wrap.funName] = boxHitTestResult_wrap;
  m[boxHitTestEntry.funName] = boxHitTestEntry;
  m[boxParentData.funName] = boxParentData;
  return m;
}
var annotationEntry = MXFunctionInvoke(
    "AnnotationEntry",
    ({
      dynamic annotation,
      Offset localPosition,
    }) =>
      AnnotationEntry(
      annotation: annotation,
      localPosition: localPosition,
    ),
);
var annotationResult = MXFunctionInvoke(
    "AnnotationResult",
    ({
    }) =>
      AnnotationResult(
    ),
);
var pictureLayer = MXFunctionInvoke(
    "PictureLayer",
    ({
      Rect canvasBounds,
    }) =>
      PictureLayer(
      canvasBounds,
    ),
);
var textureLayer = MXFunctionInvoke(
    "TextureLayer",
    ({
      Rect rect,
      int textureId,
      bool freeze = false,
    }) =>
      TextureLayer(
      rect: rect,
      textureId: textureId,
      freeze: freeze,
    ),
);
var platformViewLayer = MXFunctionInvoke(
    "PlatformViewLayer",
    ({
      Rect rect,
      int viewId,
      MouseTrackerAnnotation hoverAnnotation,
    }) =>
      PlatformViewLayer(
      rect: rect,
      viewId: viewId,
      hoverAnnotation: hoverAnnotation,
    ),
);
var performanceOverlayLayer = MXFunctionInvoke(
    "PerformanceOverlayLayer",
    ({
      Rect overlayRect,
      int optionsMask,
      int rasterizerThreshold,
      bool checkerboardRasterCacheImages,
      bool checkerboardOffscreenLayers,
    }) =>
      PerformanceOverlayLayer(
      overlayRect: overlayRect,
      optionsMask: optionsMask,
      rasterizerThreshold: rasterizerThreshold,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
    ),
);
var containerLayer = MXFunctionInvoke(
    "ContainerLayer",
    ({
    }) =>
      ContainerLayer(
    ),
);
var offsetLayer = MXFunctionInvoke(
    "OffsetLayer",
    ({
      Offset offset,
    }) =>
      OffsetLayer(
      offset: offset,
    ),
);
var clipRectLayer = MXFunctionInvoke(
    "ClipRectLayer",
    ({
      Rect clipRect,
      Clip clipBehavior = Clip.hardEdge,
    }) =>
      ClipRectLayer(
      clipRect: clipRect,
      clipBehavior: clipBehavior,
    ),
);
var clipRRectLayer = MXFunctionInvoke(
    "ClipRRectLayer",
    ({
      RRect clipRRect,
      Clip clipBehavior = Clip.antiAlias,
    }) =>
      ClipRRectLayer(
      clipRRect: clipRRect,
      clipBehavior: clipBehavior,
    ),
);
var clipPathLayer = MXFunctionInvoke(
    "ClipPathLayer",
    ({
      Path clipPath,
      Clip clipBehavior = Clip.antiAlias,
    }) =>
      ClipPathLayer(
      clipPath: clipPath,
      clipBehavior: clipBehavior,
    ),
);
var colorFilterLayer = MXFunctionInvoke(
    "ColorFilterLayer",
    ({
      ColorFilter colorFilter,
    }) =>
      ColorFilterLayer(
      colorFilter: colorFilter,
    ),
);
var imageFilterLayer = MXFunctionInvoke(
    "ImageFilterLayer",
    ({
      ImageFilter imageFilter,
    }) =>
      ImageFilterLayer(
      imageFilter: imageFilter,
    ),
);
var transformLayer = MXFunctionInvoke(
    "TransformLayer",
    ({
      Matrix4 transform,
      Offset offset,
    }) =>
      TransformLayer(
      transform: transform,
      offset: offset,
    ),
);
var opacityLayer = MXFunctionInvoke(
    "OpacityLayer",
    ({
      int alpha,
      Offset offset,
    }) =>
      OpacityLayer(
      alpha: alpha,
      offset: offset,
    ),
);
var shaderMaskLayer = MXFunctionInvoke(
    "ShaderMaskLayer",
    ({
      Shader shader,
      Rect maskRect,
      BlendMode blendMode,
    }) =>
      ShaderMaskLayer(
      shader: shader,
      maskRect: maskRect,
      blendMode: blendMode,
    ),
);
var backdropFilterLayer = MXFunctionInvoke(
    "BackdropFilterLayer",
    ({
      ImageFilter filter,
    }) =>
      BackdropFilterLayer(
      filter: filter,
    ),
);
var physicalModelLayer = MXFunctionInvoke(
    "PhysicalModelLayer",
    ({
      Path clipPath,
      Clip clipBehavior = Clip.none,
      dynamic elevation,
      Color color,
      Color shadowColor,
    }) =>
      PhysicalModelLayer(
      clipPath: clipPath,
      clipBehavior: clipBehavior,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
    ),
);
var layerLink = MXFunctionInvoke(
    "LayerLink",
    ({
    }) =>
      LayerLink(
    ),
);
var leaderLayer = MXFunctionInvoke(
    "LeaderLayer",
    ({
      LayerLink link,
      Offset offset,
    }) =>
      LeaderLayer(
      link: link,
      offset: offset,
    ),
);
var followerLayer = MXFunctionInvoke(
    "FollowerLayer",
    ({
      LayerLink link,
      bool showWhenUnlinked = true,
      Offset unlinkedOffset,
      Offset linkedOffset,
    }) =>
      FollowerLayer(
      link: link,
      showWhenUnlinked: showWhenUnlinked,
      unlinkedOffset: unlinkedOffset,
      linkedOffset: linkedOffset,
    ),
);
var annotatedRegionLayer = MXFunctionInvoke(
    "AnnotatedRegionLayer",
    ({
      dynamic value,
      Size size,
      Offset offset,
      bool opaque = false,
    }) =>
      AnnotatedRegionLayer(
      value,
      size: size,
      offset: offset,
      opaque: opaque,
    ),
);
var viewConfiguration = MXFunctionInvoke(
    "ViewConfiguration",
    ({
      Size size,
      dynamic devicePixelRatio = 1.0,
    }) =>
      ViewConfiguration(
      size: size,
      devicePixelRatio: devicePixelRatio,
    ),
);
var renderView = MXFunctionInvoke(
    "RenderView",
    ({
      RenderBox child,
      ViewConfiguration configuration,
      Window window,
    }) =>
      RenderView(
      child: child,
      configuration: configuration,
      window: window,
    ),
);
var renderingFlutterBinding = MXFunctionInvoke(
    "RenderingFlutterBinding",
    ({
      RenderBox root,
    }) =>
      RenderingFlutterBinding(
      root: root,
    ),
);
var parentData = MXFunctionInvoke(
    "ParentData",
    ({
    }) =>
      ParentData(
    ),
);
var paintingContext = MXFunctionInvoke(
    "PaintingContext",
    ({
      ContainerLayer _containerLayer,
      Rect estimatedBounds,
    }) =>
      PaintingContext(
      _containerLayer,
      estimatedBounds,
    ),
);
var pipelineOwner = MXFunctionInvoke(
    "PipelineOwner",
    ({
      dynamic onNeedVisualUpdate,
      dynamic onSemanticsOwnerCreated,
      dynamic onSemanticsOwnerDisposed,
    }) =>
      PipelineOwner(
      onNeedVisualUpdate: createVoidCallbackClosure(pipelineOwner.buildOwner, onNeedVisualUpdate),
      onSemanticsOwnerCreated: createVoidCallbackClosure(pipelineOwner.buildOwner, onSemanticsOwnerCreated),
      onSemanticsOwnerDisposed: createVoidCallbackClosure(pipelineOwner.buildOwner, onSemanticsOwnerDisposed),
    ),
);
var flutterErrorDetailsForRendering = MXFunctionInvoke(
    "FlutterErrorDetailsForRendering",
    ({
      dynamic exception,
      StackTrace stack,
      String library,
      DiagnosticsNode context,
      RenderObject renderObject,
      dynamic informationCollector,
      bool silent = false,
    }) =>
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
var diagnosticsDebugCreator = MXFunctionInvoke(
    "DiagnosticsDebugCreator",
    ({
      Object value,
    }) =>
      DiagnosticsDebugCreator(
      value,
    ),
);
var boxConstraints = MXFunctionInvoke(
    "BoxConstraints",
    ({
      dynamic minWidth = 0.0,
      dynamic maxWidth = Infinity,
      dynamic minHeight = 0.0,
      dynamic maxHeight = Infinity,
    }) =>
      BoxConstraints(
      minWidth: minWidth,
      maxWidth: maxWidth,
      minHeight: minHeight,
      maxHeight: maxHeight,
    ),
);
var boxConstraints_tight = MXFunctionInvoke(
  "boxConstraints.tight",
    ({
      Size size,
    }) =>
      BoxConstraints.tight(
      size,
    ),
);
var boxConstraints_tightFor = MXFunctionInvoke(
  "boxConstraints.tightFor",
    ({
      dynamic width,
      dynamic height,
    }) =>
      BoxConstraints.tightFor(
      width: width,
      height: height,
    ),
);
var boxConstraints_tightForFinite = MXFunctionInvoke(
  "boxConstraints.tightForFinite",
    ({
      dynamic width = Infinity,
      dynamic height = Infinity,
    }) =>
      BoxConstraints.tightForFinite(
      width: width,
      height: height,
    ),
);
var boxConstraints_loose = MXFunctionInvoke(
  "boxConstraints.loose",
    ({
      Size size,
    }) =>
      BoxConstraints.loose(
      size,
    ),
);
var boxConstraints_expand = MXFunctionInvoke(
  "boxConstraints.expand",
    ({
      dynamic width,
      dynamic height,
    }) =>
      BoxConstraints.expand(
      width: width,
      height: height,
    ),
);
var boxHitTestResult = MXFunctionInvoke(
    "BoxHitTestResult",
    ({
    }) =>
      BoxHitTestResult(
    ),
);
var boxHitTestResult_wrap = MXFunctionInvoke(
  "boxHitTestResult.wrap",
    ({
      HitTestResult result,
    }) =>
      BoxHitTestResult.wrap(
      result,
    ),
);
var boxHitTestEntry = MXFunctionInvoke(
    "BoxHitTestEntry",
    ({
      RenderBox target,
      Offset localPosition,
    }) =>
      BoxHitTestEntry(
      target,
      localPosition,
    ),
);
var boxParentData = MXFunctionInvoke(
    "BoxParentData",
    ({
    }) =>
      BoxParentData(
    ),
);

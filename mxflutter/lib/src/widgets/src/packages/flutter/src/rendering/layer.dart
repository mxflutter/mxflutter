//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/mouse_tracking.dart';


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
      dynamic elevation,
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

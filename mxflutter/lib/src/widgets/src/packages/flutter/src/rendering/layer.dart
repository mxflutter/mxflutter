//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  ({
    dynamic annotation,
    ui.Offset localPosition,
  }) =>
      AnnotationEntry(
    annotation: annotation,
    localPosition: localPosition,
  ),
  [
    "annotation",
    "localPosition",
  ],
);
var _annotationResult = MXFunctionInvoke(
  "AnnotationResult",
  () => AnnotationResult(),
  [],
);
var _pictureLayer = MXFunctionInvoke(
  "PictureLayer",
  ({
    ui.Rect canvasBounds,
  }) =>
      PictureLayer(
    canvasBounds,
  ),
  [
    "canvasBounds",
  ],
);
var _textureLayer = MXFunctionInvoke(
  "TextureLayer",
  ({
    ui.Rect rect,
    int textureId,
    bool freeze = false,
    ui.FilterQuality filterQuality = FilterQuality.low,
  }) =>
      TextureLayer(
    rect: rect,
    textureId: textureId,
    freeze: freeze,
    filterQuality: filterQuality,
  ),
  [
    "rect",
    "textureId",
    "freeze",
    "filterQuality",
  ],
);
var _platformViewLayer = MXFunctionInvoke(
  "PlatformViewLayer",
  ({
    ui.Rect rect,
    int viewId,
  }) =>
      PlatformViewLayer(
    rect: rect,
    viewId: viewId,
  ),
  [
    "rect",
    "viewId",
  ],
);
var _performanceOverlayLayer = MXFunctionInvoke(
  "PerformanceOverlayLayer",
  ({
    ui.Rect overlayRect,
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
  [
    "overlayRect",
    "optionsMask",
    "rasterizerThreshold",
    "checkerboardRasterCacheImages",
    "checkerboardOffscreenLayers",
  ],
);
var _containerLayer = MXFunctionInvoke(
  "ContainerLayer",
  () => ContainerLayer(),
  [],
);
var _offsetLayer = MXFunctionInvoke(
  "OffsetLayer",
  ({
    ui.Offset offset = Offset.zero,
  }) =>
      OffsetLayer(
    offset: offset,
  ),
  [
    "offset",
  ],
);
var _clipRectLayer = MXFunctionInvoke(
  "ClipRectLayer",
  ({
    ui.Rect clipRect,
    ui.Clip clipBehavior = Clip.hardEdge,
  }) =>
      ClipRectLayer(
    clipRect: clipRect,
    clipBehavior: clipBehavior,
  ),
  [
    "clipRect",
    "clipBehavior",
  ],
);
var _clipRRectLayer = MXFunctionInvoke(
  "ClipRRectLayer",
  ({
    ui.RRect clipRRect,
    ui.Clip clipBehavior = Clip.antiAlias,
  }) =>
      ClipRRectLayer(
    clipRRect: clipRRect,
    clipBehavior: clipBehavior,
  ),
  [
    "clipRRect",
    "clipBehavior",
  ],
);
var _clipPathLayer = MXFunctionInvoke(
  "ClipPathLayer",
  ({
    ui.Path clipPath,
    ui.Clip clipBehavior = Clip.antiAlias,
  }) =>
      ClipPathLayer(
    clipPath: clipPath,
    clipBehavior: clipBehavior,
  ),
  [
    "clipPath",
    "clipBehavior",
  ],
);
var _colorFilterLayer = MXFunctionInvoke(
  "ColorFilterLayer",
  ({
    ui.ColorFilter colorFilter,
  }) =>
      ColorFilterLayer(
    colorFilter: colorFilter,
  ),
  [
    "colorFilter",
  ],
);
var _imageFilterLayer = MXFunctionInvoke(
  "ImageFilterLayer",
  ({
    ui.ImageFilter imageFilter,
  }) =>
      ImageFilterLayer(
    imageFilter: imageFilter,
  ),
  [
    "imageFilter",
  ],
);
var _transformLayer = MXFunctionInvoke(
  "TransformLayer",
  ({
    Matrix4 transform,
    ui.Offset offset = Offset.zero,
  }) =>
      TransformLayer(
    transform: transform,
    offset: offset,
  ),
  [
    "transform",
    "offset",
  ],
);
var _opacityLayer = MXFunctionInvoke(
  "OpacityLayer",
  ({
    int alpha,
    ui.Offset offset = Offset.zero,
  }) =>
      OpacityLayer(
    alpha: alpha,
    offset: offset,
  ),
  [
    "alpha",
    "offset",
  ],
);
var _shaderMaskLayer = MXFunctionInvoke(
  "ShaderMaskLayer",
  ({
    ui.Shader shader,
    ui.Rect maskRect,
    ui.BlendMode blendMode,
  }) =>
      ShaderMaskLayer(
    shader: shader,
    maskRect: maskRect,
    blendMode: blendMode,
  ),
  [
    "shader",
    "maskRect",
    "blendMode",
  ],
);
var _backdropFilterLayer = MXFunctionInvoke(
  "BackdropFilterLayer",
  ({
    ui.ImageFilter filter,
  }) =>
      BackdropFilterLayer(
    filter: filter,
  ),
  [
    "filter",
  ],
);
var _physicalModelLayer = MXFunctionInvoke(
  "PhysicalModelLayer",
  ({
    ui.Path clipPath,
    ui.Clip clipBehavior = Clip.none,
    dynamic elevation,
    ui.Color color,
    ui.Color shadowColor,
  }) =>
      PhysicalModelLayer(
    clipPath: clipPath,
    clipBehavior: clipBehavior,
    elevation: elevation?.toDouble(),
    color: color,
    shadowColor: shadowColor,
  ),
  [
    "clipPath",
    "clipBehavior",
    "elevation",
    "color",
    "shadowColor",
  ],
);
var _layerLink = MXFunctionInvoke(
  "LayerLink",
  () => LayerLink(),
  [],
);
var _leaderLayer = MXFunctionInvoke(
  "LeaderLayer",
  ({
    LayerLink link,
    ui.Offset offset = Offset.zero,
  }) =>
      LeaderLayer(
    link: link,
    offset: offset,
  ),
  [
    "link",
    "offset",
  ],
);
var _followerLayer = MXFunctionInvoke(
  "FollowerLayer",
  ({
    LayerLink link,
    bool showWhenUnlinked = true,
    ui.Offset unlinkedOffset = Offset.zero,
    ui.Offset linkedOffset = Offset.zero,
  }) =>
      FollowerLayer(
    link: link,
    showWhenUnlinked: showWhenUnlinked,
    unlinkedOffset: unlinkedOffset,
    linkedOffset: linkedOffset,
  ),
  [
    "link",
    "showWhenUnlinked",
    "unlinkedOffset",
    "linkedOffset",
  ],
);
var _annotatedRegionLayer = MXFunctionInvoke(
  "AnnotatedRegionLayer",
  ({
    dynamic value,
    ui.Size size,
    ui.Offset offset,
    bool opaque = false,
  }) =>
      AnnotatedRegionLayer(
    value,
    size: size,
    offset: offset,
    opaque: opaque,
  ),
  [
    "value",
    "size",
    "offset",
    "opaque",
  ],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/view.dart';
import 'package:flutter/src/rendering/binding.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/box.dart';


class MXProxyLayer {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
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
    m[semanticsHandle_.funName] = semanticsHandle_;
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
  static var annotationEntry = MXFunctionInvoke(
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
  static var annotationResult = MXFunctionInvoke(
      "AnnotationResult",
      ({
      }) =>
        AnnotationResult(
      ),
    );
  static var pictureLayer = MXFunctionInvoke(
      "PictureLayer",
      ({
        Rect canvasBounds,
      }) =>
        PictureLayer(
        canvasBounds,
      ),
    );
  static var textureLayer = MXFunctionInvoke(
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
  static var platformViewLayer = MXFunctionInvoke(
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
  static var performanceOverlayLayer = MXFunctionInvoke(
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
  static var containerLayer = MXFunctionInvoke(
      "ContainerLayer",
      ({
      }) =>
        ContainerLayer(
      ),
    );
  static var offsetLayer = MXFunctionInvoke(
      "OffsetLayer",
      ({
        Offset offset,
      }) =>
        OffsetLayer(
        offset: offset,
      ),
    );
  static var clipRectLayer = MXFunctionInvoke(
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
  static var clipRRectLayer = MXFunctionInvoke(
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
  static var clipPathLayer = MXFunctionInvoke(
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
  static var colorFilterLayer = MXFunctionInvoke(
      "ColorFilterLayer",
      ({
        ColorFilter colorFilter,
      }) =>
        ColorFilterLayer(
        colorFilter: colorFilter,
      ),
    );
  static var imageFilterLayer = MXFunctionInvoke(
      "ImageFilterLayer",
      ({
        ImageFilter imageFilter,
      }) =>
        ImageFilterLayer(
        imageFilter: imageFilter,
      ),
    );
  static var transformLayer = MXFunctionInvoke(
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
  static var opacityLayer = MXFunctionInvoke(
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
  static var shaderMaskLayer = MXFunctionInvoke(
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
  static var backdropFilterLayer = MXFunctionInvoke(
      "BackdropFilterLayer",
      ({
        ImageFilter filter,
      }) =>
        BackdropFilterLayer(
        filter: filter,
      ),
    );
  static var physicalModelLayer = MXFunctionInvoke(
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
        elevation: elevation?.toDouble(),
        color: color,
        shadowColor: shadowColor,
      ),
    );
  static var layerLink = MXFunctionInvoke(
      "LayerLink",
      ({
      }) =>
        LayerLink(
      ),
    );
  static var leaderLayer = MXFunctionInvoke(
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
  static var followerLayer = MXFunctionInvoke(
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
  static var annotatedRegionLayer = MXFunctionInvoke(
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
  static var viewConfiguration = MXFunctionInvoke(
      "ViewConfiguration",
      ({
        Size size,
        dynamic devicePixelRatio = 1.0,
      }) =>
        ViewConfiguration(
        size: size,
        devicePixelRatio: devicePixelRatio?.toDouble(),
      ),
    );
  static var renderView = MXFunctionInvoke(
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
  static var renderingFlutterBinding = MXFunctionInvoke(
      "RenderingFlutterBinding",
      ({
        RenderBox root,
      }) =>
        RenderingFlutterBinding(
        root: root,
      ),
    );
  static var parentData = MXFunctionInvoke(
      "ParentData",
      ({
      }) =>
        ParentData(
      ),
    );
  static var paintingContext = MXFunctionInvoke(
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
  static var semanticsHandle_ = MXFunctionInvoke(
    "semanticsHandle.",
      ({
        PipelineOwner _owner,
        dynamic listener,
      }) =>
        SemanticsHandle.(
        _owner,
        listener,
      ),
    );
  static var pipelineOwner = MXFunctionInvoke(
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
  static var flutterErrorDetailsForRendering = MXFunctionInvoke(
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
  static var diagnosticsDebugCreator = MXFunctionInvoke(
      "DiagnosticsDebugCreator",
      ({
        Object value,
      }) =>
        DiagnosticsDebugCreator(
        value,
      ),
    );
  static var boxConstraints = MXFunctionInvoke(
      "BoxConstraints",
      ({
        dynamic minWidth = 0.0,
        dynamic maxWidth = Infinity,
        dynamic minHeight = 0.0,
        dynamic maxHeight = Infinity,
      }) =>
        BoxConstraints(
        minWidth: minWidth?.toDouble(),
        maxWidth: maxWidth?.toDouble(),
        minHeight: minHeight?.toDouble(),
        maxHeight: maxHeight?.toDouble(),
      ),
    );
  static var boxConstraints_tight = MXFunctionInvoke(
    "boxConstraints.tight",
      ({
        Size size,
      }) =>
        BoxConstraints.tight(
        size,
      ),
    );
  static var boxConstraints_tightFor = MXFunctionInvoke(
    "boxConstraints.tightFor",
      ({
        dynamic width,
        dynamic height,
      }) =>
        BoxConstraints.tightFor(
        width: width?.toDouble(),
        height: height?.toDouble(),
      ),
    );
  static var boxConstraints_tightForFinite = MXFunctionInvoke(
    "boxConstraints.tightForFinite",
      ({
        dynamic width = Infinity,
        dynamic height = Infinity,
      }) =>
        BoxConstraints.tightForFinite(
        width: width?.toDouble(),
        height: height?.toDouble(),
      ),
    );
  static var boxConstraints_loose = MXFunctionInvoke(
    "boxConstraints.loose",
      ({
        Size size,
      }) =>
        BoxConstraints.loose(
        size,
      ),
    );
  static var boxConstraints_expand = MXFunctionInvoke(
    "boxConstraints.expand",
      ({
        dynamic width,
        dynamic height,
      }) =>
        BoxConstraints.expand(
        width: width?.toDouble(),
        height: height?.toDouble(),
      ),
    );
  static var boxHitTestResult = MXFunctionInvoke(
      "BoxHitTestResult",
      ({
      }) =>
        BoxHitTestResult(
      ),
    );
  static var boxHitTestResult_wrap = MXFunctionInvoke(
    "boxHitTestResult.wrap",
      ({
        HitTestResult result,
      }) =>
        BoxHitTestResult.wrap(
        result,
      ),
    );
  static var boxHitTestEntry = MXFunctionInvoke(
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
  static var boxParentData = MXFunctionInvoke(
      "BoxParentData",
      ({
      }) =>
        BoxParentData(
      ),
    );
}

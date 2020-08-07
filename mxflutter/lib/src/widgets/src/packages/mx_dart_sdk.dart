//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'dart:ui';
import 'dart:async' ;
import 'dart:collection' as collection;
import 'dart:convert' ;
import 'dart:html' as html;
import 'dart:math' as math;
import 'dart:typed_data' ;
import 'dart:_engine' as engine;
import 'dart:_engine' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMxDartSdkSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_pointMode.funName] = _pointMode;
  m[_clipOp.funName] = _clipOp;
  m[_vertexMode.funName] = _vertexMode;
  m[_vertices.funName] = _vertices;
  m[_vertices.funName] = _vertices;
  m[_vertices_raw.funName] = _vertices_raw;
  m[_canvas.funName] = _canvas;
  m[_canvas.funName] = _canvas;
  m[_pathFillType.funName] = _pathFillType;
  m[_pathOperation.funName] = _pathOperation;
  m[_rawRecordingCanvas.funName] = _rawRecordingCanvas;
  m[_channelBuffers.funName] = _channelBuffers;
  m[_engineLayer.funName] = _engineLayer;
  m[_sceneHost.funName] = _sceneHost;
  m[_offset.funName] = _offset;
  m[_offset_fromDirection.funName] = _offset_fromDirection;
  m[_size.funName] = _size;
  m[_size_copy.funName] = _size_copy;
  m[_size_square.funName] = _size_square;
  m[_size_fromWidth.funName] = _size_fromWidth;
  m[_size_fromHeight.funName] = _size_fromHeight;
  m[_size_fromRadius.funName] = _size_fromRadius;
  m[_rect.funName] = _rect;
  m[_rect_fromLTRB.funName] = _rect_fromLTRB;
  m[_rect_fromLTWH.funName] = _rect_fromLTWH;
  m[_rect_fromCircle.funName] = _rect_fromCircle;
  m[_rect_fromCenter.funName] = _rect_fromCenter;
  m[_rect_fromPoints.funName] = _rect_fromPoints;
  m[_radius.funName] = _radius;
  m[_radius_circular.funName] = _radius_circular;
  m[_radius_elliptical.funName] = _radius_elliptical;
  m[_rRect.funName] = _rRect;
  m[_rRect_fromLTRBXY.funName] = _rRect_fromLTRBXY;
  m[_rRect_fromLTRBR.funName] = _rRect_fromLTRBR;
  m[_rRect_fromRectXY.funName] = _rRect_fromRectXY;
  m[_rRect_fromRectAndRadius.funName] = _rRect_fromRectAndRadius;
  m[_rRect_fromLTRBAndCorners.funName] = _rRect_fromLTRBAndCorners;
  m[_rRect_fromRectAndCorners.funName] = _rRect_fromRectAndCorners;
  m[_rSTransform.funName] = _rSTransform;
  m[_rSTransform_fromComponents.funName] = _rSTransform_fromComponents;
  m[_point.funName] = _point;
  m[_color.funName] = _color;
  m[_color_fromARGB.funName] = _color_fromARGB;
  m[_color_fromRGBO.funName] = _color_fromRGBO;
  m[_strokeCap.funName] = _strokeCap;
  m[_strokeJoin.funName] = _strokeJoin;
  m[_paintingStyle.funName] = _paintingStyle;
  m[_blendMode.funName] = _blendMode;
  m[_clip.funName] = _clip;
  m[_blurStyle.funName] = _blurStyle;
  m[_maskFilter.funName] = _maskFilter;
  m[_maskFilter_blur.funName] = _maskFilter_blur;
  m[_filterQuality.funName] = _filterQuality;
  m[_imageFilter.funName] = _imageFilter;
  m[_imageFilter_blur.funName] = _imageFilter_blur;
  m[_imageFilter_matrix.funName] = _imageFilter_matrix;
  m[_imageByteFormat.funName] = _imageByteFormat;
  m[_pixelFormat.funName] = _pixelFormat;
  m[_codec.funName] = _codec;
  m[_shadow.funName] = _shadow;
  m[_tangent.funName] = _tangent;
  m[_tangent_fromAngle.funName] = _tangent_fromAngle;
  m[_pointerChange.funName] = _pointerChange;
  m[_pointerDeviceKind.funName] = _pointerDeviceKind;
  m[_pointerSignalKind.funName] = _pointerSignalKind;
  m[_pointerData.funName] = _pointerData;
  m[_pointerDataPacket.funName] = _pointerDataPacket;
  m[_semanticsAction.funName] = _semanticsAction;
  m[_semanticsFlag.funName] = _semanticsFlag;
  m[_semanticsUpdateBuilder.funName] = _semanticsUpdateBuilder;
  m[_fontStyle.funName] = _fontStyle;
  m[_placeholderAlignment.funName] = _placeholderAlignment;
  m[_fontWeight.funName] = _fontWeight;
  m[_fontFeature.funName] = _fontFeature;
  m[_fontFeature_stylisticSet.funName] = _fontFeature_stylisticSet;
  m[_fontFeature_enable.funName] = _fontFeature_enable;
  m[_fontFeature_disable.funName] = _fontFeature_disable;
  m[_fontFeature_randomize.funName] = _fontFeature_randomize;
  m[_fontFeature_slashedZero.funName] = _fontFeature_slashedZero;
  m[_fontFeature_oldstyleFigures.funName] = _fontFeature_oldstyleFigures;
  m[_fontFeature_proportionalFigures.funName] = _fontFeature_proportionalFigures;
  m[_fontFeature_tabularFigures.funName] = _fontFeature_tabularFigures;
  m[_textAlign.funName] = _textAlign;
  m[_textBaseline.funName] = _textBaseline;
  m[_textDecoration.funName] = _textDecoration;
  m[_textDecoration_combine.funName] = _textDecoration_combine;
  m[_textDecorationStyle.funName] = _textDecorationStyle;
  m[_textHeightBehavior.funName] = _textHeightBehavior;
  m[_textHeightBehavior_fromEncoded.funName] = _textHeightBehavior_fromEncoded;
  m[_textDirection.funName] = _textDirection;
  m[_textBox.funName] = _textBox;
  m[_textBox_fromLTRBD.funName] = _textBox_fromLTRBD;
  m[_textAffinity.funName] = _textAffinity;
  m[_textPosition.funName] = _textPosition;
  m[_textRange.funName] = _textRange;
  m[_textRange_collapsed.funName] = _textRange_collapsed;
  m[_paragraphConstraints.funName] = _paragraphConstraints;
  m[_boxHeightStyle.funName] = _boxHeightStyle;
  m[_boxWidthStyle.funName] = _boxWidthStyle;
  m[_tileMode.funName] = _tileMode;
  m[_appLifecycleState.funName] = _appLifecycleState;
  m[_windowPadding.funName] = _windowPadding;
  m[_locale.funName] = _locale;
  m[_locale_fromSubtags.funName] = _locale_fromSubtags;
  m[_accessibilityFeatures.funName] = _accessibilityFeatures;
  m[_brightness.funName] = _brightness;
  m[_callbackHandle.funName] = _callbackHandle;
  m[_callbackHandle_fromRawHandle.funName] = _callbackHandle_fromRawHandle;
  m[_pluginUtilities.funName] = _pluginUtilities;
  m[_imageShader.funName] = _imageShader;
  m[_isolateNameServer.funName] = _isolateNameServer;
  m[_framePhase.funName] = _framePhase;
  m[_frameTiming.funName] = _frameTiming;
  return m;
}
var _pointMode = MXFunctionInvoke(
    "PointMode",
    ({Map args}) => MXPointMode.parse(args),
  );
var _clipOp = MXFunctionInvoke(
    "ClipOp",
    ({Map args}) => MXClipOp.parse(args),
  );
var _vertexMode = MXFunctionInvoke(
    "VertexMode",
    ({Map args}) => MXVertexMode.parse(args),
  );
var _vertices = MXFunctionInvoke(
    "Vertices",
    (
    ) =>
      Vertices(
    ),
);
var _vertices = MXFunctionInvoke(
    "Vertices",
    (
      {
      VertexMode mode,
      List<Offset> positions,
      List<Offset> textureCoordinates,
      List<Color> colors,
      List<int> indices,
      }
    ) =>
      Vertices(
      mode,
      positions,
      textureCoordinates: textureCoordinates,
      colors: colors,
      indices: indices,
    ),
);
var _vertices_raw = MXFunctionInvoke(
  "Vertices.raw",
    (
      {
      VertexMode mode,
      Float32List positions,
      Float32List textureCoordinates,
      Int32List colors,
      Uint16List indices,
      }
    ) =>
      Vertices.raw(
      mode,
      positions,
      textureCoordinates: textureCoordinates,
      colors: colors,
      indices: indices,
    ),
);
var _canvas = MXFunctionInvoke(
    "Canvas",
    (
    ) =>
      Canvas(
    ),
);
var _canvas = MXFunctionInvoke(
    "Canvas",
    (
      {
      PictureRecorder recorder,
      Rect cullRect,
      }
    ) =>
      Canvas(
      recorder,
      cullRect,
    ),
);
var _pathFillType = MXFunctionInvoke(
    "PathFillType",
    ({Map args}) => MXPathFillType.parse(args),
  );
var _pathOperation = MXFunctionInvoke(
    "PathOperation",
    ({Map args}) => MXPathOperation.parse(args),
  );
var _rawRecordingCanvas = MXFunctionInvoke(
    "RawRecordingCanvas",
    (
      {
      Size size,
      }
    ) =>
      RawRecordingCanvas(
      size,
    ),
);
var _channelBuffers = MXFunctionInvoke(
    "ChannelBuffers",
    (
    ) =>
      ChannelBuffers(
    ),
);
var _engineLayer = MXFunctionInvoke(
    "EngineLayer",
    (
    ) =>
      EngineLayer(
    ),
);
var _sceneHost = MXFunctionInvoke(
    "SceneHost",
    (
      {
      dynamic viewHolderToken,
      dynamic viewConnectedCallback,
      dynamic viewDisconnectedCallback,
      dynamic viewStateChangedCallback,
      }
    ) =>
      SceneHost(
      viewHolderToken,
      viewConnectedCallback,
      viewDisconnectedCallback,
      viewStateChangedCallback,
    ),
);
var _offset = MXFunctionInvoke(
    "Offset",
    (
      {
      dynamic dx,
      dynamic dy,
      }
    ) =>
      Offset(
      dx,
      dy,
    ),
);
var _offset_fromDirection = MXFunctionInvoke(
  "Offset.fromDirection",
    (
      {
      dynamic direction,
      dynamic distance,
      }
    ) =>
      Offset.fromDirection(
      direction,
      distance,
    ),
);
var _size = MXFunctionInvoke(
    "Size",
    (
      {
      dynamic width,
      dynamic height,
      }
    ) =>
      Size(
      width,
      height,
    ),
);
var _size_copy = MXFunctionInvoke(
  "Size.copy",
    (
      {
      Size source,
      }
    ) =>
      Size.copy(
      source,
    ),
);
var _size_square = MXFunctionInvoke(
  "Size.square",
    (
      {
      dynamic dimension,
      }
    ) =>
      Size.square(
      dimension,
    ),
);
var _size_fromWidth = MXFunctionInvoke(
  "Size.fromWidth",
    (
      {
      dynamic width,
      }
    ) =>
      Size.fromWidth(
      width,
    ),
);
var _size_fromHeight = MXFunctionInvoke(
  "Size.fromHeight",
    (
      {
      dynamic height,
      }
    ) =>
      Size.fromHeight(
      height,
    ),
);
var _size_fromRadius = MXFunctionInvoke(
  "Size.fromRadius",
    (
      {
      dynamic radius,
      }
    ) =>
      Size.fromRadius(
      radius,
    ),
);
var _rect = MXFunctionInvoke(
    "Rect",
    (
    ) =>
      Rect(
    ),
);
var _rect_fromLTRB = MXFunctionInvoke(
  "Rect.fromLTRB",
    (
      {
      dynamic left,
      dynamic top,
      dynamic right,
      dynamic bottom,
      }
    ) =>
      Rect.fromLTRB(
      left,
      top,
      right,
      bottom,
    ),
);
var _rect_fromLTWH = MXFunctionInvoke(
  "Rect.fromLTWH",
    (
      {
      dynamic left,
      dynamic top,
      dynamic width,
      dynamic height,
      }
    ) =>
      Rect.fromLTWH(
      left,
      top,
      width,
      height,
    ),
);
var _rect_fromCircle = MXFunctionInvoke(
  "Rect.fromCircle",
    (
      {
      Offset center,
      dynamic radius,
      }
    ) =>
      Rect.fromCircle(
      center: center,
      radius: radius?.toDouble(),
    ),
);
var _rect_fromCenter = MXFunctionInvoke(
  "Rect.fromCenter",
    (
      {
      Offset center,
      dynamic width,
      dynamic height,
      }
    ) =>
      Rect.fromCenter(
      center: center,
      width: width?.toDouble(),
      height: height?.toDouble(),
    ),
);
var _rect_fromPoints = MXFunctionInvoke(
  "Rect.fromPoints",
    (
      {
      Offset a,
      Offset b,
      }
    ) =>
      Rect.fromPoints(
      a,
      b,
    ),
);
var _radius = MXFunctionInvoke(
    "Radius",
    (
    ) =>
      Radius(
    ),
);
var _radius_circular = MXFunctionInvoke(
  "Radius.circular",
    (
      {
      dynamic radius,
      }
    ) =>
      Radius.circular(
      radius,
    ),
);
var _radius_elliptical = MXFunctionInvoke(
  "Radius.elliptical",
    (
      {
      dynamic x,
      dynamic y,
      }
    ) =>
      Radius.elliptical(
      x,
      y,
    ),
);
var _rRect = MXFunctionInvoke(
    "RRect",
    (
    ) =>
      RRect(
    ),
);
var _rRect_fromLTRBXY = MXFunctionInvoke(
  "RRect.fromLTRBXY",
    (
      {
      dynamic left,
      dynamic top,
      dynamic right,
      dynamic bottom,
      dynamic radiusX,
      dynamic radiusY,
      }
    ) =>
      RRect.fromLTRBXY(
      left,
      top,
      right,
      bottom,
      radiusX,
      radiusY,
    ),
);
var _rRect_fromLTRBR = MXFunctionInvoke(
  "RRect.fromLTRBR",
    (
      {
      dynamic left,
      dynamic top,
      dynamic right,
      dynamic bottom,
      Radius radius,
      }
    ) =>
      RRect.fromLTRBR(
      left,
      top,
      right,
      bottom,
      radius,
    ),
);
var _rRect_fromRectXY = MXFunctionInvoke(
  "RRect.fromRectXY",
    (
      {
      Rect rect,
      dynamic radiusX,
      dynamic radiusY,
      }
    ) =>
      RRect.fromRectXY(
      rect,
      radiusX,
      radiusY,
    ),
);
var _rRect_fromRectAndRadius = MXFunctionInvoke(
  "RRect.fromRectAndRadius",
    (
      {
      Rect rect,
      Radius radius,
      }
    ) =>
      RRect.fromRectAndRadius(
      rect,
      radius,
    ),
);
var _rRect_fromLTRBAndCorners = MXFunctionInvoke(
  "RRect.fromLTRBAndCorners",
    (
      {
      dynamic left,
      dynamic top,
      dynamic right,
      dynamic bottom,
      Radius topLeft,
      Radius topRight,
      Radius bottomRight,
      Radius bottomLeft,
      }
    ) =>
      RRect.fromLTRBAndCorners(
      left,
      top,
      right,
      bottom,
      topLeft: topLeft,
      topRight: topRight,
      bottomRight: bottomRight,
      bottomLeft: bottomLeft,
    ),
);
var _rRect_fromRectAndCorners = MXFunctionInvoke(
  "RRect.fromRectAndCorners",
    (
      {
      Rect rect,
      Radius topLeft,
      Radius topRight,
      Radius bottomRight,
      Radius bottomLeft,
      }
    ) =>
      RRect.fromRectAndCorners(
      rect,
      topLeft: topLeft,
      topRight: topRight,
      bottomRight: bottomRight,
      bottomLeft: bottomLeft,
    ),
);
var _rSTransform = MXFunctionInvoke(
    "RSTransform",
    (
      {
      dynamic scos,
      dynamic ssin,
      dynamic tx,
      dynamic ty,
      }
    ) =>
      RSTransform(
      scos,
      ssin,
      tx,
      ty,
    ),
);
var _rSTransform_fromComponents = MXFunctionInvoke(
  "RSTransform.fromComponents",
    (
      {
      dynamic rotation,
      dynamic scale,
      dynamic anchorX,
      dynamic anchorY,
      dynamic translateX,
      dynamic translateY,
      }
    ) =>
      RSTransform.fromComponents(
      rotation: rotation?.toDouble(),
      scale: scale?.toDouble(),
      anchorX: anchorX?.toDouble(),
      anchorY: anchorY?.toDouble(),
      translateX: translateX?.toDouble(),
      translateY: translateY?.toDouble(),
    ),
);
var _point = MXFunctionInvoke(
    "Point",
    (
      {
      dynamic x,
      dynamic y,
      }
    ) =>
      Point(
      x,
      y,
    ),
);
var _color = MXFunctionInvoke(
    "Color",
    (
      {
      int value,
      }
    ) =>
      Color(
      value,
    ),
);
var _color_fromARGB = MXFunctionInvoke(
  "Color.fromARGB",
    (
      {
      int a,
      int r,
      int g,
      int b,
      }
    ) =>
      Color.fromARGB(
      a,
      r,
      g,
      b,
    ),
);
var _color_fromRGBO = MXFunctionInvoke(
  "Color.fromRGBO",
    (
      {
      int r,
      int g,
      int b,
      dynamic opacity,
      }
    ) =>
      Color.fromRGBO(
      r,
      g,
      b,
      opacity,
    ),
);
var _strokeCap = MXFunctionInvoke(
    "StrokeCap",
    ({Map args}) => MXStrokeCap.parse(args),
  );
var _strokeJoin = MXFunctionInvoke(
    "StrokeJoin",
    ({Map args}) => MXStrokeJoin.parse(args),
  );
var _paintingStyle = MXFunctionInvoke(
    "PaintingStyle",
    ({Map args}) => MXPaintingStyle.parse(args),
  );
var _blendMode = MXFunctionInvoke(
    "BlendMode",
    ({Map args}) => MXBlendMode.parse(args),
  );
var _clip = MXFunctionInvoke(
    "Clip",
    ({Map args}) => MXClip.parse(args),
  );
var _blurStyle = MXFunctionInvoke(
    "BlurStyle",
    ({Map args}) => MXBlurStyle.parse(args),
  );
var _maskFilter = MXFunctionInvoke(
    "MaskFilter",
    (
    ) =>
      MaskFilter(
    ),
);
var _maskFilter_blur = MXFunctionInvoke(
  "MaskFilter.blur",
    (
      {
      BlurStyle style,
      dynamic sigma,
      }
    ) =>
      MaskFilter.blur(
      style,
      sigma,
    ),
);
var _filterQuality = MXFunctionInvoke(
    "FilterQuality",
    ({Map args}) => MXFilterQuality.parse(args),
  );
var _imageFilter = MXFunctionInvoke(
    "ImageFilter",
    (
    ) =>
      ImageFilter(
    ),
);
var _imageFilter_blur = MXFunctionInvoke(
  "ImageFilter.blur",
    (
      {
      dynamic sigmaX = 0.0,
      dynamic sigmaY = 0.0,
      }
    ) =>
      ImageFilter.blur(
      sigmaX: sigmaX?.toDouble(),
      sigmaY: sigmaY?.toDouble(),
    ),
);
var _imageFilter_matrix = MXFunctionInvoke(
  "ImageFilter.matrix",
    (
      {
      Float64List matrix4,
      FilterQuality filterQuality = FilterQuality.low,
      }
    ) =>
      ImageFilter.matrix(
      matrix4,
      filterQuality: filterQuality,
    ),
);
var _imageByteFormat = MXFunctionInvoke(
    "ImageByteFormat",
    ({Map args}) => MXImageByteFormat.parse(args),
  );
var _pixelFormat = MXFunctionInvoke(
    "PixelFormat",
    ({Map args}) => MXPixelFormat.parse(args),
  );
var _codec = MXFunctionInvoke(
    "Codec",
    (
    ) =>
      Codec(
    ),
);
var _shadow = MXFunctionInvoke(
    "Shadow",
    (
      {
      Color color,
      Offset offset,
      dynamic blurRadius = 0.0,
      }
    ) =>
      Shadow(
      color: color,
      offset: offset,
      blurRadius: blurRadius?.toDouble(),
    ),
);
var _tangent = MXFunctionInvoke(
    "Tangent",
    (
      {
      Offset position,
      Offset vector,
      }
    ) =>
      Tangent(
      position,
      vector,
    ),
);
var _tangent_fromAngle = MXFunctionInvoke(
  "Tangent.fromAngle",
    (
      {
      Offset position,
      dynamic angle,
      }
    ) =>
      Tangent.fromAngle(
      position,
      angle,
    ),
);
var _pointerChange = MXFunctionInvoke(
    "PointerChange",
    ({Map args}) => MXPointerChange.parse(args),
  );
var _pointerDeviceKind = MXFunctionInvoke(
    "PointerDeviceKind",
    ({Map args}) => MXPointerDeviceKind.parse(args),
  );
var _pointerSignalKind = MXFunctionInvoke(
    "PointerSignalKind",
    ({Map args}) => MXPointerSignalKind.parse(args),
  );
var _pointerData = MXFunctionInvoke(
    "PointerData",
    (
      {
      Duration timeStamp,
      PointerChange change = PointerChange.cancel,
      PointerDeviceKind kind = PointerDeviceKind.touch,
      PointerSignalKind signalKind,
      int device = 0,
      int pointerIdentifier = 0,
      dynamic physicalX = 0.0,
      dynamic physicalY = 0.0,
      dynamic physicalDeltaX = 0.0,
      dynamic physicalDeltaY = 0.0,
      int buttons = 0,
      bool obscured = false,
      bool synthesized = false,
      dynamic pressure = 0.0,
      dynamic pressureMin = 0.0,
      dynamic pressureMax = 0.0,
      dynamic distance = 0.0,
      dynamic distanceMax = 0.0,
      dynamic size = 0.0,
      dynamic radiusMajor = 0.0,
      dynamic radiusMinor = 0.0,
      dynamic radiusMin = 0.0,
      dynamic radiusMax = 0.0,
      dynamic orientation = 0.0,
      dynamic tilt = 0.0,
      int platformData = 0,
      dynamic scrollDeltaX = 0.0,
      dynamic scrollDeltaY = 0.0,
      }
    ) =>
      PointerData(
      timeStamp: timeStamp,
      change: change,
      kind: kind,
      signalKind: signalKind,
      device: device,
      pointerIdentifier: pointerIdentifier,
      physicalX: physicalX?.toDouble(),
      physicalY: physicalY?.toDouble(),
      physicalDeltaX: physicalDeltaX?.toDouble(),
      physicalDeltaY: physicalDeltaY?.toDouble(),
      buttons: buttons,
      obscured: obscured,
      synthesized: synthesized,
      pressure: pressure?.toDouble(),
      pressureMin: pressureMin?.toDouble(),
      pressureMax: pressureMax?.toDouble(),
      distance: distance?.toDouble(),
      distanceMax: distanceMax?.toDouble(),
      size: size?.toDouble(),
      radiusMajor: radiusMajor?.toDouble(),
      radiusMinor: radiusMinor?.toDouble(),
      radiusMin: radiusMin?.toDouble(),
      radiusMax: radiusMax?.toDouble(),
      orientation: orientation?.toDouble(),
      tilt: tilt?.toDouble(),
      platformData: platformData,
      scrollDeltaX: scrollDeltaX?.toDouble(),
      scrollDeltaY: scrollDeltaY?.toDouble(),
    ),
);
var _pointerDataPacket = MXFunctionInvoke(
    "PointerDataPacket",
    (
      {
      List<PointerData> data,
      }
    ) =>
      PointerDataPacket(
      data: data,
    ),
);
var _semanticsAction = MXFunctionInvoke(
    "SemanticsAction",
    (
    ) =>
      SemanticsAction(
    ),
);
var _semanticsFlag = MXFunctionInvoke(
    "SemanticsFlag",
    (
    ) =>
      SemanticsFlag(
    ),
);
var _semanticsUpdateBuilder = MXFunctionInvoke(
    "SemanticsUpdateBuilder",
    (
    ) =>
      SemanticsUpdateBuilder(
    ),
);
var _fontStyle = MXFunctionInvoke(
    "FontStyle",
    ({Map args}) => MXFontStyle.parse(args),
  );
var _placeholderAlignment = MXFunctionInvoke(
    "PlaceholderAlignment",
    ({Map args}) => MXPlaceholderAlignment.parse(args),
  );
var _fontWeight = MXFunctionInvoke(
    "FontWeight",
    (
    ) =>
      FontWeight(
    ),
);
var _fontFeature = MXFunctionInvoke(
    "FontFeature",
    (
      {
      String feature,
      int value,
      }
    ) =>
      FontFeature(
      feature,
      value,
    ),
);
var _fontFeature_stylisticSet = MXFunctionInvoke(
  "FontFeature.stylisticSet",
    (
      {
      int value,
      }
    ) =>
      FontFeature.stylisticSet(
      value,
    ),
);
var _fontFeature_enable = MXFunctionInvoke(
  "FontFeature.enable",
    (
      {
      String feature,
      }
    ) =>
      FontFeature.enable(
      feature,
    ),
);
var _fontFeature_disable = MXFunctionInvoke(
  "FontFeature.disable",
    (
      {
      String feature,
      }
    ) =>
      FontFeature.disable(
      feature,
    ),
);
var _fontFeature_randomize = MXFunctionInvoke(
  "FontFeature.randomize",
    (
    ) =>
      FontFeature.randomize(
    ),
);
var _fontFeature_slashedZero = MXFunctionInvoke(
  "FontFeature.slashedZero",
    (
    ) =>
      FontFeature.slashedZero(
    ),
);
var _fontFeature_oldstyleFigures = MXFunctionInvoke(
  "FontFeature.oldstyleFigures",
    (
    ) =>
      FontFeature.oldstyleFigures(
    ),
);
var _fontFeature_proportionalFigures = MXFunctionInvoke(
  "FontFeature.proportionalFigures",
    (
    ) =>
      FontFeature.proportionalFigures(
    ),
);
var _fontFeature_tabularFigures = MXFunctionInvoke(
  "FontFeature.tabularFigures",
    (
    ) =>
      FontFeature.tabularFigures(
    ),
);
var _textAlign = MXFunctionInvoke(
    "TextAlign",
    ({Map args}) => MXTextAlign.parse(args),
  );
var _textBaseline = MXFunctionInvoke(
    "TextBaseline",
    ({Map args}) => MXTextBaseline.parse(args),
  );
var _textDecoration = MXFunctionInvoke(
    "TextDecoration",
    (
    ) =>
      TextDecoration(
    ),
);
var _textDecoration_combine = MXFunctionInvoke(
  "TextDecoration.combine",
    (
      {
      List<TextDecoration> decorations,
      }
    ) =>
      TextDecoration.combine(
      decorations,
    ),
);
var _textDecorationStyle = MXFunctionInvoke(
    "TextDecorationStyle",
    ({Map args}) => MXTextDecorationStyle.parse(args),
  );
var _textHeightBehavior = MXFunctionInvoke(
    "TextHeightBehavior",
    (
      {
      bool applyHeightToFirstAscent = true,
      bool applyHeightToLastDescent = true,
      }
    ) =>
      TextHeightBehavior(
      applyHeightToFirstAscent: applyHeightToFirstAscent,
      applyHeightToLastDescent: applyHeightToLastDescent,
    ),
);
var _textHeightBehavior_fromEncoded = MXFunctionInvoke(
  "TextHeightBehavior.fromEncoded",
    (
      {
      int encoded,
      }
    ) =>
      TextHeightBehavior.fromEncoded(
      encoded,
    ),
);
var _textDirection = MXFunctionInvoke(
    "TextDirection",
    ({Map args}) => MXTextDirection.parse(args),
  );
var _textBox = MXFunctionInvoke(
    "TextBox",
    (
    ) =>
      TextBox(
    ),
);
var _textBox_fromLTRBD = MXFunctionInvoke(
  "TextBox.fromLTRBD",
    (
      {
      dynamic left,
      dynamic top,
      dynamic right,
      dynamic bottom,
      TextDirection direction,
      }
    ) =>
      TextBox.fromLTRBD(
      left,
      top,
      right,
      bottom,
      direction,
    ),
);
var _textAffinity = MXFunctionInvoke(
    "TextAffinity",
    ({Map args}) => MXTextAffinity.parse(args),
  );
var _textPosition = MXFunctionInvoke(
    "TextPosition",
    (
      {
      int offset,
      TextAffinity affinity = TextAffinity.downstream,
      }
    ) =>
      TextPosition(
      offset: offset,
      affinity: affinity,
    ),
);
var _textRange = MXFunctionInvoke(
    "TextRange",
    (
      {
      int start,
      int end,
      }
    ) =>
      TextRange(
      start: start,
      end: end,
    ),
);
var _textRange_collapsed = MXFunctionInvoke(
  "TextRange.collapsed",
    (
      {
      int offset,
      }
    ) =>
      TextRange.collapsed(
      offset,
    ),
);
var _paragraphConstraints = MXFunctionInvoke(
    "ParagraphConstraints",
    (
      {
      dynamic width,
      }
    ) =>
      ParagraphConstraints(
      width: width?.toDouble(),
    ),
);
var _boxHeightStyle = MXFunctionInvoke(
    "BoxHeightStyle",
    ({Map args}) => MXBoxHeightStyle.parse(args),
  );
var _boxWidthStyle = MXFunctionInvoke(
    "BoxWidthStyle",
    ({Map args}) => MXBoxWidthStyle.parse(args),
  );
var _tileMode = MXFunctionInvoke(
    "TileMode",
    ({Map args}) => MXTileMode.parse(args),
  );
var _appLifecycleState = MXFunctionInvoke(
    "AppLifecycleState",
    ({Map args}) => MXAppLifecycleState.parse(args),
  );
var _windowPadding = MXFunctionInvoke(
    "WindowPadding",
    (
    ) =>
      WindowPadding(
    ),
);
var _locale = MXFunctionInvoke(
    "Locale",
    (
      {
      String languageCode,
      String countryCode,
      }
    ) =>
      Locale(
      languageCode,
      countryCode,
    ),
);
var _locale_fromSubtags = MXFunctionInvoke(
  "Locale.fromSubtags",
    (
      {
      String languageCode = 'und',
      String scriptCode,
      String countryCode,
      }
    ) =>
      Locale.fromSubtags(
      languageCode: languageCode,
      scriptCode: scriptCode,
      countryCode: countryCode,
    ),
);
var _accessibilityFeatures = MXFunctionInvoke(
    "AccessibilityFeatures",
    (
    ) =>
      AccessibilityFeatures(
    ),
);
var _brightness = MXFunctionInvoke(
    "Brightness",
    ({Map args}) => MXBrightness.parse(args),
  );
var _callbackHandle = MXFunctionInvoke(
    "CallbackHandle",
    (
    ) =>
      CallbackHandle(
    ),
);
var _callbackHandle_fromRawHandle = MXFunctionInvoke(
  "CallbackHandle.fromRawHandle",
    (
      {
      int handle,
      }
    ) =>
      CallbackHandle.fromRawHandle(
      handle,
    ),
);
var _pluginUtilities = MXFunctionInvoke(
    "PluginUtilities",
    (
    ) =>
      PluginUtilities(
    ),
);
var _imageShader = MXFunctionInvoke(
    "ImageShader",
    (
      {
      Image image,
      TileMode tmx,
      TileMode tmy,
      Float64List matrix4,
      }
    ) =>
      ImageShader(
      image,
      tmx,
      tmy,
      matrix4,
    ),
);
var _isolateNameServer = MXFunctionInvoke(
    "IsolateNameServer",
    (
    ) =>
      IsolateNameServer(
    ),
);
var _framePhase = MXFunctionInvoke(
    "FramePhase",
    ({Map args}) => MXFramePhase.parse(args),
  );
var _frameTiming = MXFunctionInvoke(
    "FrameTiming",
    (
      {
      List<int> timestamps,
      }
    ) =>
      FrameTiming(
      timestamps,
    ),
);
class MXPointMode {
  static Map str2VMap = {
    'PointMode.points': PointMode.points,
    'PointMode.lines': PointMode.lines,
    'PointMode.polygon': PointMode.polygon,
  };
  static PointMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXClipOp {
  static Map str2VMap = {
    'ClipOp.difference': ClipOp.difference,
    'ClipOp.intersect': ClipOp.intersect,
  };
  static ClipOp parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXVertexMode {
  static Map str2VMap = {
    'VertexMode.triangles': VertexMode.triangles,
    'VertexMode.triangleStrip': VertexMode.triangleStrip,
    'VertexMode.triangleFan': VertexMode.triangleFan,
  };
  static VertexMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXPathFillType {
  static Map str2VMap = {
    'PathFillType.nonZero': PathFillType.nonZero,
    'PathFillType.evenOdd': PathFillType.evenOdd,
  };
  static PathFillType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXPathOperation {
  static Map str2VMap = {
    'PathOperation.difference': PathOperation.difference,
    'PathOperation.intersect': PathOperation.intersect,
    'PathOperation.union': PathOperation.union,
    'PathOperation.xor': PathOperation.xor,
    'PathOperation.reverseDifference': PathOperation.reverseDifference,
  };
  static PathOperation parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXStrokeCap {
  static Map str2VMap = {
    'StrokeCap.butt': StrokeCap.butt,
    'StrokeCap.round': StrokeCap.round,
    'StrokeCap.square': StrokeCap.square,
  };
  static StrokeCap parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXStrokeJoin {
  static Map str2VMap = {
    'StrokeJoin.miter': StrokeJoin.miter,
    'StrokeJoin.round': StrokeJoin.round,
    'StrokeJoin.bevel': StrokeJoin.bevel,
  };
  static StrokeJoin parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXPaintingStyle {
  static Map str2VMap = {
    'PaintingStyle.fill': PaintingStyle.fill,
    'PaintingStyle.stroke': PaintingStyle.stroke,
  };
  static PaintingStyle parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXBlendMode {
  static Map str2VMap = {
    'BlendMode.clear': BlendMode.clear,
    'BlendMode.src': BlendMode.src,
    'BlendMode.dst': BlendMode.dst,
    'BlendMode.srcOver': BlendMode.srcOver,
    'BlendMode.dstOver': BlendMode.dstOver,
    'BlendMode.srcIn': BlendMode.srcIn,
    'BlendMode.dstIn': BlendMode.dstIn,
    'BlendMode.srcOut': BlendMode.srcOut,
    'BlendMode.dstOut': BlendMode.dstOut,
    'BlendMode.srcATop': BlendMode.srcATop,
    'BlendMode.dstATop': BlendMode.dstATop,
    'BlendMode.xor': BlendMode.xor,
    'BlendMode.plus': BlendMode.plus,
    'BlendMode.modulate': BlendMode.modulate,
    'BlendMode.screen': BlendMode.screen,
    'BlendMode.overlay': BlendMode.overlay,
    'BlendMode.darken': BlendMode.darken,
    'BlendMode.lighten': BlendMode.lighten,
    'BlendMode.colorDodge': BlendMode.colorDodge,
    'BlendMode.colorBurn': BlendMode.colorBurn,
    'BlendMode.hardLight': BlendMode.hardLight,
    'BlendMode.softLight': BlendMode.softLight,
    'BlendMode.difference': BlendMode.difference,
    'BlendMode.exclusion': BlendMode.exclusion,
    'BlendMode.multiply': BlendMode.multiply,
    'BlendMode.hue': BlendMode.hue,
    'BlendMode.saturation': BlendMode.saturation,
    'BlendMode.color': BlendMode.color,
    'BlendMode.luminosity': BlendMode.luminosity,
  };
  static BlendMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXClip {
  static Map str2VMap = {
    'Clip.none': Clip.none,
    'Clip.hardEdge': Clip.hardEdge,
    'Clip.antiAlias': Clip.antiAlias,
    'Clip.antiAliasWithSaveLayer': Clip.antiAliasWithSaveLayer,
  };
  static Clip parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXBlurStyle {
  static Map str2VMap = {
    'BlurStyle.normal': BlurStyle.normal,
    'BlurStyle.solid': BlurStyle.solid,
    'BlurStyle.outer': BlurStyle.outer,
    'BlurStyle.inner': BlurStyle.inner,
  };
  static BlurStyle parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXFilterQuality {
  static Map str2VMap = {
    'FilterQuality.none': FilterQuality.none,
    'FilterQuality.low': FilterQuality.low,
    'FilterQuality.medium': FilterQuality.medium,
    'FilterQuality.high': FilterQuality.high,
  };
  static FilterQuality parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXImageByteFormat {
  static Map str2VMap = {
    'ImageByteFormat.rawRgba': ImageByteFormat.rawRgba,
    'ImageByteFormat.rawUnmodified': ImageByteFormat.rawUnmodified,
    'ImageByteFormat.png': ImageByteFormat.png,
  };
  static ImageByteFormat parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXPixelFormat {
  static Map str2VMap = {
    'PixelFormat.rgba8888': PixelFormat.rgba8888,
    'PixelFormat.bgra8888': PixelFormat.bgra8888,
  };
  static PixelFormat parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXPointerChange {
  static Map str2VMap = {
    'PointerChange.cancel': PointerChange.cancel,
    'PointerChange.add': PointerChange.add,
    'PointerChange.remove': PointerChange.remove,
    'PointerChange.hover': PointerChange.hover,
    'PointerChange.down': PointerChange.down,
    'PointerChange.move': PointerChange.move,
    'PointerChange.up': PointerChange.up,
  };
  static PointerChange parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXPointerDeviceKind {
  static Map str2VMap = {
    'PointerDeviceKind.touch': PointerDeviceKind.touch,
    'PointerDeviceKind.mouse': PointerDeviceKind.mouse,
    'PointerDeviceKind.stylus': PointerDeviceKind.stylus,
    'PointerDeviceKind.invertedStylus': PointerDeviceKind.invertedStylus,
    'PointerDeviceKind.unknown': PointerDeviceKind.unknown,
  };
  static PointerDeviceKind parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXPointerSignalKind {
  static Map str2VMap = {
    'PointerSignalKind.none': PointerSignalKind.none,
    'PointerSignalKind.scroll': PointerSignalKind.scroll,
    'PointerSignalKind.unknown': PointerSignalKind.unknown,
  };
  static PointerSignalKind parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXFontStyle {
  static Map str2VMap = {
    'FontStyle.normal': FontStyle.normal,
    'FontStyle.italic': FontStyle.italic,
  };
  static FontStyle parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXPlaceholderAlignment {
  static Map str2VMap = {
    'PlaceholderAlignment.baseline': PlaceholderAlignment.baseline,
    'PlaceholderAlignment.aboveBaseline': PlaceholderAlignment.aboveBaseline,
    'PlaceholderAlignment.belowBaseline': PlaceholderAlignment.belowBaseline,
    'PlaceholderAlignment.top': PlaceholderAlignment.top,
    'PlaceholderAlignment.bottom': PlaceholderAlignment.bottom,
    'PlaceholderAlignment.middle': PlaceholderAlignment.middle,
  };
  static PlaceholderAlignment parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTextAlign {
  static Map str2VMap = {
    'TextAlign.left': TextAlign.left,
    'TextAlign.right': TextAlign.right,
    'TextAlign.center': TextAlign.center,
    'TextAlign.justify': TextAlign.justify,
    'TextAlign.start': TextAlign.start,
    'TextAlign.end': TextAlign.end,
  };
  static TextAlign parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTextBaseline {
  static Map str2VMap = {
    'TextBaseline.alphabetic': TextBaseline.alphabetic,
    'TextBaseline.ideographic': TextBaseline.ideographic,
  };
  static TextBaseline parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTextDecorationStyle {
  static Map str2VMap = {
    'TextDecorationStyle.solid': TextDecorationStyle.solid,
    'TextDecorationStyle.double': TextDecorationStyle.double,
    'TextDecorationStyle.dotted': TextDecorationStyle.dotted,
    'TextDecorationStyle.dashed': TextDecorationStyle.dashed,
    'TextDecorationStyle.wavy': TextDecorationStyle.wavy,
  };
  static TextDecorationStyle parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTextDirection {
  static Map str2VMap = {
    'TextDirection.rtl': TextDirection.rtl,
    'TextDirection.ltr': TextDirection.ltr,
  };
  static TextDirection parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTextAffinity {
  static Map str2VMap = {
    'TextAffinity.upstream': TextAffinity.upstream,
    'TextAffinity.downstream': TextAffinity.downstream,
  };
  static TextAffinity parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXBoxHeightStyle {
  static Map str2VMap = {
    'BoxHeightStyle.tight': BoxHeightStyle.tight,
    'BoxHeightStyle.max': BoxHeightStyle.max,
    'BoxHeightStyle.includeLineSpacingMiddle': BoxHeightStyle.includeLineSpacingMiddle,
    'BoxHeightStyle.includeLineSpacingTop': BoxHeightStyle.includeLineSpacingTop,
    'BoxHeightStyle.includeLineSpacingBottom': BoxHeightStyle.includeLineSpacingBottom,
    'BoxHeightStyle.strut': BoxHeightStyle.strut,
  };
  static BoxHeightStyle parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXBoxWidthStyle {
  static Map str2VMap = {
    'BoxWidthStyle.tight': BoxWidthStyle.tight,
    'BoxWidthStyle.max': BoxWidthStyle.max,
  };
  static BoxWidthStyle parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTileMode {
  static Map str2VMap = {
    'TileMode.clamp': TileMode.clamp,
    'TileMode.repeated': TileMode.repeated,
    'TileMode.mirror': TileMode.mirror,
  };
  static TileMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXAppLifecycleState {
  static Map str2VMap = {
    'AppLifecycleState.resumed': AppLifecycleState.resumed,
    'AppLifecycleState.inactive': AppLifecycleState.inactive,
    'AppLifecycleState.paused': AppLifecycleState.paused,
    'AppLifecycleState.detached': AppLifecycleState.detached,
  };
  static AppLifecycleState parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXBrightness {
  static Map str2VMap = {
    'Brightness.dark': Brightness.dark,
    'Brightness.light': Brightness.light,
  };
  static Brightness parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXFramePhase {
  static Map str2VMap = {
    'FramePhase.buildStart': FramePhase.buildStart,
    'FramePhase.buildFinish': FramePhase.buildFinish,
    'FramePhase.rasterStart': FramePhase.rasterStart,
    'FramePhase.rasterFinish': FramePhase.rasterFinish,
  };
  static FramePhase parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

//# sourceMappingURL=mx_dart_sdk.map

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'dart:ui';
import 'dart:async';
import 'dart:collection' as collection;
import 'dart:convert';
// import 'dart:html' as html;
import 'dart:math' as math;
import 'dart:typed_data';
// import 'dart:_engine' as engine;
// import 'dart:_engine';
import 'dart:core';
// import 'dart:_internal' as _symbol_dev;
// import 'dart:_interceptors';
// import 'dart:_js_helper';
// import 'dart:_runtime' as dart;
// import 'dart:_foreign_helper';
// import 'dart:_native_typed_data';
import 'dart:collection';
// import 'dart:_internal';
// import 'dart:_internal' as internal;
import 'dart:math';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMxDartSdkSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_pointMode.funName] = _pointMode;
  m[_clipOp.funName] = _clipOp;
  m[_vertexMode.funName] = _vertexMode;
  m[_vertices.funName] = _vertices;
  m[_vertices_raw.funName] = _vertices_raw;
  m[_pictureRecorder.funName] = _pictureRecorder;
  m[_canvas.funName] = _canvas;
  m[_pathFillType.funName] = _pathFillType;
  m[_pathOperation.funName] = _pathOperation;
  // m[_rawRecordingCanvas.funName] = _rawRecordingCanvas;
  m[_channelBuffers.funName] = _channelBuffers;
  m[_sceneBuilder.funName] = _sceneBuilder;
  // m[_engineLayer.funName] = _engineLayer;
  m[_sceneHost.funName] = _sceneHost;
  m[_offset.funName] = _offset;
  m[_offset_fromDirection.funName] = _offset_fromDirection;
  m[_size.funName] = _size;
  m[_size_copy.funName] = _size_copy;
  m[_size_square.funName] = _size_square;
  m[_size_fromWidth.funName] = _size_fromWidth;
  m[_size_fromHeight.funName] = _size_fromHeight;
  m[_size_fromRadius.funName] = _size_fromRadius;
  m[_rect_fromLTRB.funName] = _rect_fromLTRB;
  m[_rect_fromLTWH.funName] = _rect_fromLTWH;
  m[_rect_fromCircle.funName] = _rect_fromCircle;
  m[_rect_fromCenter.funName] = _rect_fromCenter;
  m[_rect_fromPoints.funName] = _rect_fromPoints;
  m[_radius_circular.funName] = _radius_circular;
  m[_radius_elliptical.funName] = _radius_elliptical;
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
  m[_paint.funName] = _paint;
  m[_gradient_linear.funName] = _gradient_linear;
  m[_gradient_radial.funName] = _gradient_radial;
  m[_gradient_sweep.funName] = _gradient_sweep;
  m[_colorFilter_mode.funName] = _colorFilter_mode;
  m[_colorFilter_matrix.funName] = _colorFilter_matrix;
  m[_colorFilter_linearToSrgbGamma.funName] = _colorFilter_linearToSrgbGamma;
  m[_colorFilter_srgbToLinearGamma.funName] = _colorFilter_srgbToLinearGamma;
  m[_blurStyle.funName] = _blurStyle;
  m[_maskFilter_blur.funName] = _maskFilter_blur;
  m[_filterQuality.funName] = _filterQuality;
  m[_imageFilter_blur.funName] = _imageFilter_blur;
  m[_imageFilter_matrix.funName] = _imageFilter_matrix;
  m[_imageByteFormat.funName] = _imageByteFormat;
  m[_pixelFormat.funName] = _pixelFormat;
  m[_shadow.funName] = _shadow;
  m[_path.funName] = _path;
  m[_path_from.funName] = _path_from;
  m[_tangent.funName] = _tangent;
  m[_tangent_fromAngle.funName] = _tangent_fromAngle;
  m[_pointerChange.funName] = _pointerChange;
  m[_pointerDeviceKind.funName] = _pointerDeviceKind;
  m[_pointerSignalKind.funName] = _pointerSignalKind;
  m[_pointerData.funName] = _pointerData;
  m[_pointerDataPacket.funName] = _pointerDataPacket;
  m[_semanticsUpdateBuilder.funName] = _semanticsUpdateBuilder;
  m[_fontStyle.funName] = _fontStyle;
  m[_placeholderAlignment.funName] = _placeholderAlignment;
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
  m[_textDecoration_combine.funName] = _textDecoration_combine;
  m[_textDecorationStyle.funName] = _textDecorationStyle;
  m[_textHeightBehavior.funName] = _textHeightBehavior;
  m[_textHeightBehavior_fromEncoded.funName] = _textHeightBehavior_fromEncoded;
  m[_textStyle.funName] = _textStyle;
  m[_paragraphStyle.funName] = _paragraphStyle;
  m[_strutStyle.funName] = _strutStyle;
  m[_textDirection.funName] = _textDirection;
  m[_textBox_fromLTRBD.funName] = _textBox_fromLTRBD;
  m[_textAffinity.funName] = _textAffinity;
  m[_textPosition.funName] = _textPosition;
  m[_textRange.funName] = _textRange;
  m[_textRange_collapsed.funName] = _textRange_collapsed;
  m[_paragraphConstraints.funName] = _paragraphConstraints;
  m[_boxHeightStyle.funName] = _boxHeightStyle;
  m[_boxWidthStyle.funName] = _boxWidthStyle;
  m[_lineMetrics.funName] = _lineMetrics;
  m[_paragraphBuilder.funName] = _paragraphBuilder;
  m[_tileMode.funName] = _tileMode;
  m[_appLifecycleState.funName] = _appLifecycleState;
  m[_locale.funName] = _locale;
  m[_locale_fromSubtags.funName] = _locale_fromSubtags;
  m[_brightness.funName] = _brightness;
  m[_callbackHandle_fromRawHandle.funName] = _callbackHandle_fromRawHandle;
  // m[_pluginUtilities.funName] = _pluginUtilities;
  m[_imageShader.funName] = _imageShader;
  // m[_isolateNameServer.funName] = _isolateNameServer;
  m[_framePhase.funName] = _framePhase;
  m[_frameTiming.funName] = _frameTiming;
  m[_deprecated.funName] = _deprecated;
  m[_provisional.funName] = _provisional;
  m[_pragma.funName] = _pragma;
  m[_bigInt_from.funName] = _bigInt_from;
  m[_bool_fromEnvironment.funName] = _bool_fromEnvironment;
  m[_bool_hasEnvironment.funName] = _bool_hasEnvironment;
  m[_dateTime.funName] = _dateTime;
  m[_dateTime_utc.funName] = _dateTime_utc;
  m[_dateTime_now.funName] = _dateTime_now;
  m[_dateTime_fromMillisecondsSinceEpoch.funName] = _dateTime_fromMillisecondsSinceEpoch;
  m[_dateTime_fromMicrosecondsSinceEpoch.funName] = _dateTime_fromMicrosecondsSinceEpoch;
  m[_duration.funName] = _duration;
  m[_error.funName] = _error;
  m[_assertionError.funName] = _assertionError;
  m[_typeError.funName] = _typeError;
  m[_castError.funName] = _castError;
  m[_nullThrownError.funName] = _nullThrownError;
  m[_argumentError.funName] = _argumentError;
  m[_argumentError_value.funName] = _argumentError_value;
  m[_argumentError_notNull.funName] = _argumentError_notNull;
  m[_rangeError.funName] = _rangeError;
  m[_rangeError_index.funName] = _rangeError_index;
  m[_rangeError_value.funName] = _rangeError_value;
  m[_rangeError_range.funName] = _rangeError_range;
  m[_indexError.funName] = _indexError;
  m[_fallThroughError.funName] = _fallThroughError;
  m[_abstractClassInstantiationError.funName] = _abstractClassInstantiationError;
  // m[_noSuchMethodError.funName] = _noSuchMethodError;
  m[_noSuchMethodError_withInvocation.funName] = _noSuchMethodError_withInvocation;
  m[_unsupportedError.funName] = _unsupportedError;
  m[_unimplementedError.funName] = _unimplementedError;
  m[_stateError.funName] = _stateError;
  m[_concurrentModificationError.funName] = _concurrentModificationError;
  m[_outOfMemoryError.funName] = _outOfMemoryError;
  m[_stackOverflowError.funName] = _stackOverflowError;
  m[_cyclicInitializationError.funName] = _cyclicInitializationError;
  m[_exception.funName] = _exception;
  m[_formatException.funName] = _formatException;
  m[_integerDivisionByZeroException.funName] = _integerDivisionByZeroException;
  m[_expando.funName] = _expando;
  m[_int_fromEnvironment.funName] = _int_fromEnvironment;
  // m[_invocation_method.funName] = _invocation_method;
  // m[_invocation_genericMethod.funName] = _invocation_genericMethod;
  // m[_invocation_getter.funName] = _invocation_getter;
  // m[_invocation_setter.funName] = _invocation_setter;
  m[_iterable_generate.funName] = _iterable_generate;
  m[_iterable_empty.funName] = _iterable_empty;
  m[_list.funName] = _list;
  m[_list_filled.funName] = _list_filled;
  m[_list_from.funName] = _list_from;
  m[_list_of.funName] = _list_of;
  m[_list_generate.funName] = _list_generate;
  m[_list_unmodifiable.funName] = _list_unmodifiable;
  m[_list_copyRange.funName] = _list_copyRange;
  m[_list_writeIterable.funName] = _list_writeIterable;
  m[_map.funName] = _map;
  m[_map_from.funName] = _map_from;
  m[_map_of.funName] = _map_of;
  m[_map_unmodifiable.funName] = _map_unmodifiable;
  m[_map_identity.funName] = _map_identity;
  m[_map_fromIterable.funName] = _map_fromIterable;
  m[_map_fromIterables.funName] = _map_fromIterables;
  m[_map_fromEntries.funName] = _map_fromEntries;
  m[_mapEntry.funName] = _mapEntry;
  m[_regExp.funName] = _regExp;
  m[_set.funName] = _set;
  m[_set_identity.funName] = _set_identity;
  m[_set_from.funName] = _set_from;
  m[_set_of.funName] = _set_of;
  m[_stackTrace_fromString.funName] = _stackTrace_fromString;
  m[_stopwatch.funName] = _stopwatch;
  m[_string_fromCharCodes.funName] = _string_fromCharCodes;
  m[_string_fromCharCode.funName] = _string_fromCharCode;
  m[_string_fromEnvironment.funName] = _string_fromEnvironment;
  m[_runes.funName] = _runes;
  m[_runeIterator.funName] = _runeIterator;
  m[_runeIterator_at.funName] = _runeIterator_at;
  m[_stringBuffer.funName] = _stringBuffer;
  // m[_symbol.funName] = _symbol;
  m[_uri.funName] = _uri;
  m[_uri_http.funName] = _uri_http;
  m[_uri_https.funName] = _uri_https;
  m[_uri_file.funName] = _uri_file;
  m[_uri_directory.funName] = _uri_directory;
  m[_uri_dataFromString.funName] = _uri_dataFromString;
  m[_uri_dataFromBytes.funName] = _uri_dataFromBytes;
  m[_uriData_fromString.funName] = _uriData_fromString;
  m[_uriData_fromBytes.funName] = _uriData_fromBytes;
  m[_uriData_fromUri.funName] = _uriData_fromUri;
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
var _pictureRecorder = MXFunctionInvoke(
    "PictureRecorder",
    (
    ) =>
      PictureRecorder(
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
// var _rawRecordingCanvas = MXFunctionInvoke(
//     "RawRecordingCanvas",
//     (
//       {
//       Size size,
//       }
//     ) =>
//       RawRecordingCanvas(
//       size,
//     ),
// );
var _channelBuffers = MXFunctionInvoke(
    "ChannelBuffers",
    (
    ) =>
      ChannelBuffers(
    ),
);
var _sceneBuilder = MXFunctionInvoke(
    "SceneBuilder",
    (
    ) =>
      SceneBuilder(
    ),
);
// var _engineLayer = MXFunctionInvoke(
//     "EngineLayer",
//     (
//     ) =>
//       EngineLayer(
//     ),
// );
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
      createVoidCallbackClosure(_sceneHost.buildOwner, viewConnectedCallback),
      createVoidCallbackClosure(_sceneHost.buildOwner, viewDisconnectedCallback),
      createValueChangedGenericClosure<bool>(_sceneHost.buildOwner, viewStateChangedCallback),
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
      dx?.toDouble(),
      dy?.toDouble(),
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
      direction?.toDouble(),
      distance?.toDouble(),
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
      width?.toDouble(),
      height?.toDouble(),
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
      dimension?.toDouble(),
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
      width?.toDouble(),
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
      height?.toDouble(),
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
      radius?.toDouble(),
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
      left?.toDouble(),
      top?.toDouble(),
      right?.toDouble(),
      bottom?.toDouble(),
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
      left?.toDouble(),
      top?.toDouble(),
      width?.toDouble(),
      height?.toDouble(),
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
var _radius_circular = MXFunctionInvoke(
  "Radius.circular",
    (
      {
      dynamic radius,
      }
    ) =>
      Radius.circular(
      radius?.toDouble(),
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
      x?.toDouble(),
      y?.toDouble(),
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
      left?.toDouble(),
      top?.toDouble(),
      right?.toDouble(),
      bottom?.toDouble(),
      radiusX?.toDouble(),
      radiusY?.toDouble(),
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
      left?.toDouble(),
      top?.toDouble(),
      right?.toDouble(),
      bottom?.toDouble(),
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
      radiusX?.toDouble(),
      radiusY?.toDouble(),
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
      left?.toDouble(),
      top?.toDouble(),
      right?.toDouble(),
      bottom?.toDouble(),
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
      scos?.toDouble(),
      ssin?.toDouble(),
      tx?.toDouble(),
      ty?.toDouble(),
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
      Point<double>( ///TODO:先写死double吧
      x?.toDouble(),
      y?.toDouble(),
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
      opacity?.toDouble(),
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
var _paint = MXFunctionInvoke(
    "Paint",
    (
    ) =>
      Paint(
    ),
);
var _gradient_linear = MXFunctionInvoke(
  "Gradient.linear",
    (
      {
      Offset from,
      Offset to,
      List<Color> colors,
      List<double> colorStops,
      TileMode tileMode,
      Float64List matrix4,
      }
    ) =>
      Gradient.linear(
      from,
      to,
      colors,
      colorStops,
      tileMode,
      matrix4,
    ),
);
var _gradient_radial = MXFunctionInvoke(
  "Gradient.radial",
    (
      {
      Offset center,
      dynamic radius,
      List<Color> colors,
      List<double> colorStops,
      TileMode tileMode,
      Float64List matrix4,
      Offset focal,
      dynamic focalRadius,
      }
    ) =>
      Gradient.radial(
      center,
      radius?.toDouble(),
      colors,
      colorStops,
      tileMode,
      matrix4,
      focal,
      focalRadius?.toDouble(),
    ),
);
var _gradient_sweep = MXFunctionInvoke(
  "Gradient.sweep",
    (
      {
      Offset center,
      List<Color> colors,
      List<double> colorStops,
      TileMode tileMode,
      dynamic startAngle,
      dynamic endAngle,
      Float64List matrix4,
      }
    ) =>
      Gradient.sweep(
      center,
      colors,
      colorStops,
      tileMode,
      startAngle?.toDouble(),
      endAngle?.toDouble(),
      matrix4,
    ),
);
var _colorFilter_mode = MXFunctionInvoke(
  "ColorFilter.mode",
    (
      {
      Color color,
      BlendMode blendMode,
      }
    ) =>
      ColorFilter.mode(
      color,
      blendMode,
    ),
);
var _colorFilter_matrix = MXFunctionInvoke(
  "ColorFilter.matrix",
    (
      {
      List<double> matrix,
      }
    ) =>
      ColorFilter.matrix(
      matrix,
    ),
);
var _colorFilter_linearToSrgbGamma = MXFunctionInvoke(
  "ColorFilter.linearToSrgbGamma",
    (
    ) =>
      ColorFilter.linearToSrgbGamma(
    ),
);
var _colorFilter_srgbToLinearGamma = MXFunctionInvoke(
  "ColorFilter.srgbToLinearGamma",
    (
    ) =>
      ColorFilter.srgbToLinearGamma(
    ),
);
var _blurStyle = MXFunctionInvoke(
    "BlurStyle",
    ({Map args}) => MXBlurStyle.parse(args),
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
      sigma?.toDouble(),
    ),
);
var _filterQuality = MXFunctionInvoke(
    "FilterQuality",
    ({Map args}) => MXFilterQuality.parse(args),
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
var _path = MXFunctionInvoke(
    "Path",
    (
    ) =>
      Path(
    ),
);
var _path_from = MXFunctionInvoke(
  "Path.from",
    (
      {
      Path source,
      }
    ) =>
      Path.from(
      source,
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
      angle?.toDouble(),
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
var _textStyle = MXFunctionInvoke(
    "TextStyle",
    (
      {
      Color color,
      TextDecoration decoration,
      Color decorationColor,
      TextDecorationStyle decorationStyle,
      dynamic decorationThickness,
      FontWeight fontWeight,
      FontStyle fontStyle,
      TextBaseline textBaseline,
      String fontFamily,
      List<String> fontFamilyFallback,
      dynamic fontSize,
      dynamic letterSpacing,
      dynamic wordSpacing,
      dynamic height,
      Locale locale,
      Paint background,
      Paint foreground,
      List<Shadow> shadows,
      List<FontFeature> fontFeatures,
      }
    ) =>
      TextStyle(
      color: color,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness?.toDouble(),
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      textBaseline: textBaseline,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      fontSize: fontSize?.toDouble(),
      letterSpacing: letterSpacing?.toDouble(),
      wordSpacing: wordSpacing?.toDouble(),
      height: height?.toDouble(),
      locale: locale,
      background: background,
      foreground: foreground,
      shadows: shadows,
      fontFeatures: fontFeatures,
    ),
);
var _paragraphStyle = MXFunctionInvoke(
    "ParagraphStyle",
    (
      {
      TextAlign textAlign,
      TextDirection textDirection,
      int maxLines,
      String fontFamily,
      dynamic fontSize,
      dynamic height,
      TextHeightBehavior textHeightBehavior,
      FontWeight fontWeight,
      FontStyle fontStyle,
      StrutStyle strutStyle,
      String ellipsis,
      Locale locale,
      }
    ) =>
      ParagraphStyle(
      textAlign: textAlign,
      textDirection: textDirection,
      maxLines: maxLines,
      fontFamily: fontFamily,
      fontSize: fontSize?.toDouble(),
      height: height?.toDouble(),
      textHeightBehavior: textHeightBehavior,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      strutStyle: strutStyle,
      ellipsis: ellipsis,
      locale: locale,
    ),
);
var _strutStyle = MXFunctionInvoke(
    "StrutStyle",
    (
      {
      String fontFamily,
      List<String> fontFamilyFallback,
      dynamic fontSize,
      dynamic height,
      dynamic leading,
      FontWeight fontWeight,
      FontStyle fontStyle,
      bool forceStrutHeight,
      }
    ) =>
      StrutStyle(
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      fontSize: fontSize?.toDouble(),
      height: height?.toDouble(),
      leading: leading?.toDouble(),
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      forceStrutHeight: forceStrutHeight,
    ),
);
var _textDirection = MXFunctionInvoke(
    "TextDirection",
    ({Map args}) => MXTextDirection.parse(args),
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
      left?.toDouble(),
      top?.toDouble(),
      right?.toDouble(),
      bottom?.toDouble(),
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
var _lineMetrics = MXFunctionInvoke(
    "LineMetrics",
    (
      {
      bool hardBreak,
      dynamic ascent,
      dynamic descent,
      dynamic unscaledAscent,
      dynamic height,
      dynamic width,
      dynamic left,
      dynamic baseline,
      int lineNumber,
      }
    ) =>
      LineMetrics(
      hardBreak: hardBreak,
      ascent: ascent?.toDouble(),
      descent: descent?.toDouble(),
      unscaledAscent: unscaledAscent?.toDouble(),
      height: height?.toDouble(),
      width: width?.toDouble(),
      left: left?.toDouble(),
      baseline: baseline?.toDouble(),
      lineNumber: lineNumber,
    ),
);
var _paragraphBuilder = MXFunctionInvoke(
    "ParagraphBuilder",
    (
      {
      ParagraphStyle style,
      }
    ) =>
      ParagraphBuilder(
      style,
    ),
);
var _tileMode = MXFunctionInvoke(
    "TileMode",
    ({Map args}) => MXTileMode.parse(args),
  );
var _appLifecycleState = MXFunctionInvoke(
    "AppLifecycleState",
    ({Map args}) => MXAppLifecycleState.parse(args),
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
var _brightness = MXFunctionInvoke(
    "Brightness",
    ({Map args}) => MXBrightness.parse(args),
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
// var _pluginUtilities = MXFunctionInvoke(
//     "PluginUtilities",
//     (
//     ) =>
//       PluginUtilities(
//     ),
// );
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
// var _isolateNameServer = MXFunctionInvoke(
//     "IsolateNameServer",
//     (
//     ) =>
//       IsolateNameServer(
//     ),
// );
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
var _deprecated = MXFunctionInvoke(
    "Deprecated",
    (
      {
      String message,
      }
    ) =>
      Deprecated(
      message,
    ),
);
var _provisional = MXFunctionInvoke(
    "Provisional",
    (
      {
      String message,
      }
    ) =>
      Provisional(
      message: message,
    ),
);
var _pragma = MXFunctionInvoke(
    "pragma",
    (
      {
      String name,
      Object options,
      }
    ) =>
      pragma(
      name,
      options,
    ),
);
var _bigInt_from = MXFunctionInvoke(
  "BigInt.from",
    (
      {
      num value,
      }
    ) =>
      BigInt.from(
      value,
    ),
);
var _bool_fromEnvironment = MXFunctionInvoke(
  "bool.fromEnvironment",
    (
      {
      String name,
      bool defaultValue = false,
      }
    ) =>
      bool.fromEnvironment(
      name,
      defaultValue: defaultValue,
    ),
);
var _bool_hasEnvironment = MXFunctionInvoke(
  "bool.hasEnvironment",
    (
      {
      String name,
      }
    ) =>
      bool.hasEnvironment(
      name,
    ),
);
var _dateTime = MXFunctionInvoke(
    "DateTime",
    (
      {
      int year,
      int month,
      int day,
      int hour,
      int minute,
      int second,
      int millisecond,
      int microsecond,
      }
    ) =>
      DateTime(
      year,
      month,
      day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
    ),
);
var _dateTime_utc = MXFunctionInvoke(
  "DateTime.utc",
    (
      {
      int year,
      int month,
      int day,
      int hour,
      int minute,
      int second,
      int millisecond,
      int microsecond,
      }
    ) =>
      DateTime.utc(
      year,
      month,
      day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
    ),
);
var _dateTime_now = MXFunctionInvoke(
  "DateTime.now",
    (
    ) =>
      DateTime.now(
    ),
);
var _dateTime_fromMillisecondsSinceEpoch = MXFunctionInvoke(
  "DateTime.fromMillisecondsSinceEpoch",
    (
      {
      int millisecondsSinceEpoch,
      bool isUtc = false,
      }
    ) =>
      DateTime.fromMillisecondsSinceEpoch(
      millisecondsSinceEpoch,
      isUtc: isUtc,
    ),
);
var _dateTime_fromMicrosecondsSinceEpoch = MXFunctionInvoke(
  "DateTime.fromMicrosecondsSinceEpoch",
    (
      {
      int microsecondsSinceEpoch,
      bool isUtc = false,
      }
    ) =>
      DateTime.fromMicrosecondsSinceEpoch(
      microsecondsSinceEpoch,
      isUtc: isUtc,
    ),
);
var _duration = MXFunctionInvoke(
    "Duration",
    (
      {
      int days = 0,
      int hours = 0,
      int minutes = 0,
      int seconds = 0,
      int milliseconds = 0,
      int microseconds = 0,
      }
    ) =>
      Duration(
      days: days,
      hours: hours,
      minutes: minutes,
      seconds: seconds,
      milliseconds: milliseconds,
      microseconds: microseconds,
    ),
);
var _error = MXFunctionInvoke(
    "Error",
    (
    ) =>
      Error(
    ),
);
var _assertionError = MXFunctionInvoke(
    "AssertionError",
    (
      {
      Object message,
      }
    ) =>
      AssertionError(
      message,
    ),
);
var _typeError = MXFunctionInvoke(
    "TypeError",
    (
    ) =>
      TypeError(
    ),
);
var _castError = MXFunctionInvoke(
    "CastError",
    (
    ) =>
      CastError(
    ),
);
var _nullThrownError = MXFunctionInvoke(
    "NullThrownError",
    (
    ) =>
      NullThrownError(
    ),
);
var _argumentError = MXFunctionInvoke(
    "ArgumentError",
    (
      {
      dynamic message,
      }
    ) =>
      ArgumentError(
      message,
    ),
);
var _argumentError_value = MXFunctionInvoke(
  "ArgumentError.value",
    (
      {
      dynamic value,
      String name,
      dynamic message,
      }
    ) =>
      ArgumentError.value(
      value,
      name,
      message,
    ),
);
var _argumentError_notNull = MXFunctionInvoke(
  "ArgumentError.notNull",
    (
      {
      String name,
      }
    ) =>
      ArgumentError.notNull(
      name,
    ),
);
var _rangeError = MXFunctionInvoke(
    "RangeError",
    (
      {
      dynamic message,
      }
    ) =>
      RangeError(
      message,
    ),
);
var _rangeError_index = MXFunctionInvoke(
  "RangeError.index",
    (
      {
      int index,
      dynamic indexable,
      String name,
      String message,
      int length,
      }
    ) =>
      RangeError.index(
      index,
      indexable,
      name,
      message,
      length,
    ),
);
var _rangeError_value = MXFunctionInvoke(
  "RangeError.value",
    (
      {
      num value,
      String name,
      String message,
      }
    ) =>
      RangeError.value(
      value,
      name,
      message,
    ),
);
var _rangeError_range = MXFunctionInvoke(
  "RangeError.range",
    (
      {
      num invalidValue,
      int minValue,
      int maxValue,
      String name,
      String message,
      }
    ) =>
      RangeError.range(
      invalidValue,
      minValue,
      maxValue,
      name,
      message,
    ),
);
var _indexError = MXFunctionInvoke(
    "IndexError",
    (
      {
      int invalidValue,
      dynamic indexable,
      String name,
      String message,
      int length,
      }
    ) =>
      IndexError(
      invalidValue,
      indexable,
      name,
      message,
      length,
    ),
);
var _fallThroughError = MXFunctionInvoke(
    "FallThroughError",
    (
    ) =>
      FallThroughError(
    ),
);
var _abstractClassInstantiationError = MXFunctionInvoke(
    "AbstractClassInstantiationError",
    (
      {
      String className,
      }
    ) =>
      AbstractClassInstantiationError(
      className,
    ),
);
// var _noSuchMethodError = MXFunctionInvoke(
//     "NoSuchMethodError",
//     (
//       {
//       Object receiver,
//       Symbol memberName,
//       List<dynamic> positionalArguments,
//       Map<Symbol, dynamic> namedArguments,
//       List<dynamic> existingArgumentNames,
//       }
//     ) =>
//       NoSuchMethodError(
//       receiver,
//       memberName,
//       positionalArguments,
//       namedArguments,
//       existingArgumentNames,
//     ),
// );
var _noSuchMethodError_withInvocation = MXFunctionInvoke(
  "NoSuchMethodError.withInvocation",
    (
      {
      Object receiver,
      Invocation invocation,
      }
    ) =>
      NoSuchMethodError.withInvocation(
      receiver,
      invocation,
    ),
);
var _unsupportedError = MXFunctionInvoke(
    "UnsupportedError",
    (
      {
      String message,
      }
    ) =>
      UnsupportedError(
      message,
    ),
);
var _unimplementedError = MXFunctionInvoke(
    "UnimplementedError",
    (
      {
      String message,
      }
    ) =>
      UnimplementedError(
      message,
    ),
);
var _stateError = MXFunctionInvoke(
    "StateError",
    (
      {
      String message,
      }
    ) =>
      StateError(
      message,
    ),
);
var _concurrentModificationError = MXFunctionInvoke(
    "ConcurrentModificationError",
    (
      {
      Object modifiedObject,
      }
    ) =>
      ConcurrentModificationError(
      modifiedObject,
    ),
);
var _outOfMemoryError = MXFunctionInvoke(
    "OutOfMemoryError",
    (
    ) =>
      OutOfMemoryError(
    ),
);
var _stackOverflowError = MXFunctionInvoke(
    "StackOverflowError",
    (
    ) =>
      StackOverflowError(
    ),
);
var _cyclicInitializationError = MXFunctionInvoke(
    "CyclicInitializationError",
    (
      {
      String variableName,
      }
    ) =>
      CyclicInitializationError(
      variableName,
    ),
);
var _exception = MXFunctionInvoke(
    "Exception",
    (
      {
      dynamic message,
      }
    ) =>
      Exception(
      message,
    ),
);
var _formatException = MXFunctionInvoke(
    "FormatException",
    (
      {
      String message,
      dynamic source,
      int offset,
      }
    ) =>
      FormatException(
      message,
      source,
      offset,
    ),
);
var _integerDivisionByZeroException = MXFunctionInvoke(
    "IntegerDivisionByZeroException",
    (
    ) =>
      IntegerDivisionByZeroException(
    ),
);
var _expando = MXFunctionInvoke(
    "Expando",
    (
      {
      String name,
      }
    ) =>
      Expando(
      name,
    ),
);
var _int_fromEnvironment = MXFunctionInvoke(
  "int.fromEnvironment",
    (
      {
      String name,
      int defaultValue = 0,
      }
    ) =>
      int.fromEnvironment(
      name,
      defaultValue: defaultValue,
    ),
);
// var _invocation_method = MXFunctionInvoke(
//   "Invocation.method",
//     (
//       {
//       Symbol memberName,
//       Iterable<Object> positionalArguments,
//       Map<Symbol, Object> namedArguments,
//       }
//     ) =>
//       Invocation.method(
//       memberName,
//       positionalArguments,
//       namedArguments,
//     ),
// );
// var _invocation_genericMethod = MXFunctionInvoke(
//   "Invocation.genericMethod",
//     (
//       {
//       Symbol memberName,
//       Iterable<Type> typeArguments,
//       Iterable<Object> positionalArguments,
//       Map<Symbol, Object> namedArguments,
//       }
//     ) =>
//       Invocation.genericMethod(
//       memberName,
//       typeArguments,
//       positionalArguments,
//       namedArguments,
//     ),
// );
// var _invocation_getter = MXFunctionInvoke(
//   "Invocation.getter",
//     (
//       {
//       Symbol name,
//       }
//     ) =>
//       Invocation.getter(
//       name,
//     ),
// );
// var _invocation_setter = MXFunctionInvoke(
//   "Invocation.setter",
//     (
//       {
//       Symbol memberName,
//       Object argument,
//       }
//     ) =>
//       Invocation.setter(
//       memberName,
//       argument,
//     ),
// );
var _iterable_generate = MXFunctionInvoke(
  "Iterable.generate",
    (
      {
      int count,
      dynamic generator,
      }
    ) =>
      Iterable.generate(
      count,
      null,
    ),
);
var _iterable_empty = MXFunctionInvoke(
  "Iterable.empty",
    (
    ) =>
      Iterable.empty(
    ),
);
var _list = MXFunctionInvoke(
    "List",
    (
      {
      int length,
      }
    ) =>
      List(
      length,
    ),
);
var _list_filled = MXFunctionInvoke(
  "List.filled",
    (
      {
      int length,
      dynamic fill,
      bool growable = false,
      }
    ) =>
      List.filled(
      length,
      fill,
      growable: growable,
    ),
);
var _list_from = MXFunctionInvoke(
  "List.from",
    (
      {
      Iterable<dynamic> elements,
      bool growable = true,
      }
    ) =>
      List.from(
      elements,
      growable: growable,
    ),
);
var _list_of = MXFunctionInvoke(
  "List.of",
    (
      {
      Iterable<dynamic> elements,
      bool growable = true,
      }
    ) =>
      List.of(
      elements,
      growable: growable,
    ),
);
var _list_generate = MXFunctionInvoke(
  "List.generate",
    (
      {
      int length,
      dynamic generator,
      bool growable = true,
      }
    ) =>
      List.generate(
      length,
      null,
      growable: growable,
    ),
);
var _list_unmodifiable = MXFunctionInvoke(
  "List.unmodifiable",
    (
      {
      Iterable<dynamic> elements,
      }
    ) =>
      List.unmodifiable(
      elements,
    ),
);
var _list_copyRange = MXFunctionInvoke(
  "List.copyRange",
    (
      {
      List<dynamic> target,
      int at,
      List<dynamic> source,
      int start,
      int end,
      }
    ) =>
      List.copyRange(
      target,
      at,
      source,
      start,
      end,
    ),
);
var _list_writeIterable = MXFunctionInvoke(
  "List.writeIterable",
    (
      {
      List<dynamic> target,
      int at,
      Iterable<dynamic> source,
      }
    ) =>
      List.writeIterable(
      target,
      at,
      source,
    ),
);
var _map = MXFunctionInvoke(
    "Map",
    (
    ) =>
      Map(
    ),
);
var _map_from = MXFunctionInvoke(
  "Map.from",
    (
      {
      Map<dynamic, dynamic> other,
      }
    ) =>
      Map.from(
      other,
    ),
);
var _map_of = MXFunctionInvoke(
  "Map.of",
    (
      {
      Map<dynamic, dynamic> other,
      }
    ) =>
      Map.of(
      other,
    ),
);
var _map_unmodifiable = MXFunctionInvoke(
  "Map.unmodifiable",
    (
      {
      Map<dynamic, dynamic> other,
      }
    ) =>
      Map.unmodifiable(
      other,
    ),
);
var _map_identity = MXFunctionInvoke(
  "Map.identity",
    (
    ) =>
      Map.identity(
    ),
);
var _map_fromIterable = MXFunctionInvoke(
  "Map.fromIterable",
    (
      {
      Iterable<dynamic> iterable,
      dynamic key,
      dynamic value,
      }
    ) =>
      Map.fromIterable(
      iterable,
      key: null,
      value: null,
    ),
);
var _map_fromIterables = MXFunctionInvoke(
  "Map.fromIterables",
    (
      {
      Iterable<dynamic> keys,
      Iterable<dynamic> values,
      }
    ) =>
      Map.fromIterables(
      keys,
      values,
    ),
);
var _map_fromEntries = MXFunctionInvoke(
  "Map.fromEntries",
    (
      {
      Iterable<MapEntry<dynamic, dynamic>> entries,
      }
    ) =>
      Map.fromEntries(
      entries,
    ),
);
var _mapEntry = MXFunctionInvoke(
    "MapEntry",
    (
      {
      dynamic key,
      dynamic value,
      }
    ) =>
      MapEntry(
      key,
      value,
    ),
);
var _regExp = MXFunctionInvoke(
    "RegExp",
    (
      {
      String source,
      bool multiLine = false,
      bool caseSensitive = true,
      bool unicode = false,
      bool dotAll = false,
      }
    ) =>
      RegExp(
      source,
      multiLine: multiLine,
      caseSensitive: caseSensitive,
      unicode: unicode,
      dotAll: dotAll,
    ),
);
var _set = MXFunctionInvoke(
    "Set",
    (
    ) =>
      Set(
    ),
);
var _set_identity = MXFunctionInvoke(
  "Set.identity",
    (
    ) =>
      Set.identity(
    ),
);
var _set_from = MXFunctionInvoke(
  "Set.from",
    (
      {
      Iterable<dynamic> elements,
      }
    ) =>
      Set.from(
      elements,
    ),
);
var _set_of = MXFunctionInvoke(
  "Set.of",
    (
      {
      Iterable<dynamic> elements,
      }
    ) =>
      Set.of(
      elements,
    ),
);
var _stackTrace_fromString = MXFunctionInvoke(
  "StackTrace.fromString",
    (
      {
      String stackTraceString,
      }
    ) =>
      StackTrace.fromString(
      stackTraceString,
    ),
);
var _stopwatch = MXFunctionInvoke(
    "Stopwatch",
    (
    ) =>
      Stopwatch(
    ),
);
var _string_fromCharCodes = MXFunctionInvoke(
  "String.fromCharCodes",
    (
      {
      Iterable<int> charCodes,
      int start,
      int end,
      }
    ) =>
      String.fromCharCodes(
      charCodes,
      start,
      end,
    ),
);
var _string_fromCharCode = MXFunctionInvoke(
  "String.fromCharCode",
    (
      {
      int charCode,
      }
    ) =>
      String.fromCharCode(
      charCode,
    ),
);
var _string_fromEnvironment = MXFunctionInvoke(
  "String.fromEnvironment",
    (
      {
      String name,
      String defaultValue = '',
      }
    ) =>
      String.fromEnvironment(
      name,
      defaultValue: defaultValue,
    ),
);
var _runes = MXFunctionInvoke(
    "Runes",
    (
      {
      String string,
      }
    ) =>
      Runes(
      string,
    ),
);
var _runeIterator = MXFunctionInvoke(
    "RuneIterator",
    (
      {
      String string,
      }
    ) =>
      RuneIterator(
      string,
    ),
);
var _runeIterator_at = MXFunctionInvoke(
  "RuneIterator.at",
    (
      {
      String string,
      int index,
      }
    ) =>
      RuneIterator.at(
      string,
      index,
    ),
);
var _stringBuffer = MXFunctionInvoke(
    "StringBuffer",
    (
      {
      Object content,
      }
    ) =>
      StringBuffer(
      content,
    ),
);
// var _symbol = MXFunctionInvoke(
//     "Symbol",
//     (
//       {
//       String name,
//       }
//     ) =>
//       Symbol(
//       name,
//     ),
// );
var _uri = MXFunctionInvoke(
    "Uri",
    (
      {
      String scheme,
      String userInfo,
      String host,
      int port,
      String path,
      Iterable<String> pathSegments,
      String query,
      Map<String, dynamic> queryParameters,
      String fragment,
      }
    ) =>
      Uri(
      scheme: scheme,
      userInfo: userInfo,
      host: host,
      port: port,
      path: path,
      pathSegments: pathSegments,
      query: query,
      queryParameters: queryParameters,
      fragment: fragment,
    ),
);
var _uri_http = MXFunctionInvoke(
  "Uri.http",
    (
      {
      String authority,
      String unencodedPath,
      Map<String, String> queryParameters,
      }
    ) =>
      Uri.http(
      authority,
      unencodedPath,
      queryParameters,
    ),
);
var _uri_https = MXFunctionInvoke(
  "Uri.https",
    (
      {
      String authority,
      String unencodedPath,
      Map<String, String> queryParameters,
      }
    ) =>
      Uri.https(
      authority,
      unencodedPath,
      queryParameters,
    ),
);
var _uri_file = MXFunctionInvoke(
  "Uri.file",
    (
      {
      String path,
      bool windows,
      }
    ) =>
      Uri.file(
      path,
      windows: windows,
    ),
);
var _uri_directory = MXFunctionInvoke(
  "Uri.directory",
    (
      {
      String path,
      bool windows,
      }
    ) =>
      Uri.directory(
      path,
      windows: windows,
    ),
);
var _uri_dataFromString = MXFunctionInvoke(
  "Uri.dataFromString",
    (
      {
      String content,
      String mimeType,
      Encoding encoding,
      Map<String, String> parameters,
      bool base64 = false,
      }
    ) =>
      Uri.dataFromString(
      content,
      mimeType: mimeType,
      encoding: encoding,
      parameters: parameters,
      base64: base64,
    ),
);
var _uri_dataFromBytes = MXFunctionInvoke(
  "Uri.dataFromBytes",
    (
      {
      List<int> bytes,
      dynamic mimeType = 'application/octet-stream',
      Map<String, String> parameters,
      dynamic percentEncoded = false,
      }
    ) =>
      Uri.dataFromBytes(
      bytes,
      mimeType: mimeType,
      parameters: parameters,
      percentEncoded: percentEncoded,
    ),
);
var _uriData_fromString = MXFunctionInvoke(
  "UriData.fromString",
    (
      {
      String content,
      String mimeType,
      Encoding encoding,
      Map<String, String> parameters,
      bool base64 = false,
      }
    ) =>
      UriData.fromString(
      content,
      mimeType: mimeType,
      encoding: encoding,
      parameters: parameters,
      base64: base64,
    ),
);
var _uriData_fromBytes = MXFunctionInvoke(
  "UriData.fromBytes",
    (
      {
      List<int> bytes,
      dynamic mimeType = 'application/octet-stream',
      Map<String, String> parameters,
      dynamic percentEncoded = false,
      }
    ) =>
      UriData.fromBytes(
      bytes,
      mimeType: mimeType,
      parameters: parameters,
      percentEncoded: percentEncoded,
    ),
);
var _uriData_fromUri = MXFunctionInvoke(
  "UriData.fromUri",
    (
      {
      Uri uri,
      }
    ) =>
      UriData.fromUri(
      uri,
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

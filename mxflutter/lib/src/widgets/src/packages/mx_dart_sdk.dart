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
import 'dart:html' as html;
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:_engine' as engine;
import 'dart:_engine';
import 'dart:core';
import 'dart:_internal' as _symbol_dev;
import 'dart:_interceptors';
import 'dart:_js_helper';
import 'dart:_runtime' as dart;
import 'dart:_foreign_helper';
import 'dart:_native_typed_data';
import 'dart:collection';
import 'dart:_internal';
import 'dart:_internal' as internal;
import 'dart:math';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMxDartSdkSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_pointMode.funName] = _pointMode;
  m[_clipOp.funName] = _clipOp;
  m[_vertexMode.funName] = _vertexMode;
  m[_vertices.funName] = _vertices;
  m[_verticesRaw.funName] = _verticesRaw;
  m[_pictureRecorder.funName] = _pictureRecorder;
  m[_canvas.funName] = _canvas;
  m[_pathFillType.funName] = _pathFillType;
  m[_pathOperation.funName] = _pathOperation;
  m[_rawRecordingCanvas.funName] = _rawRecordingCanvas;
  m[_channelBuffers.funName] = _channelBuffers;
  m[_channelBuffersKDefaultBufferSize.funName] =
      _channelBuffersKDefaultBufferSize;
  m[_channelBuffersKControlChannelName.funName] =
      _channelBuffersKControlChannelName;
  m[_sceneBuilder.funName] = _sceneBuilder;
  m[_engineLayer.funName] = _engineLayer;
  m[_sceneHost.funName] = _sceneHost;
  m[_offset.funName] = _offset;
  m[_offsetZero.funName] = _offsetZero;
  m[_offsetInfinite.funName] = _offsetInfinite;
  m[_offsetFromDirection.funName] = _offsetFromDirection;
  m[_size.funName] = _size;
  m[_sizeZero.funName] = _sizeZero;
  m[_sizeInfinite.funName] = _sizeInfinite;
  m[_sizeCopy.funName] = _sizeCopy;
  m[_sizeSquare.funName] = _sizeSquare;
  m[_sizeFromWidth.funName] = _sizeFromWidth;
  m[_sizeFromHeight.funName] = _sizeFromHeight;
  m[_sizeFromRadius.funName] = _sizeFromRadius;
  m[_rectZero.funName] = _rectZero;
  m[_rectLargest.funName] = _rectLargest;
  m[_rectFromLTRB.funName] = _rectFromLTRB;
  m[_rectFromLTWH.funName] = _rectFromLTWH;
  m[_rectFromCircle.funName] = _rectFromCircle;
  m[_rectFromCenter.funName] = _rectFromCenter;
  m[_rectFromPoints.funName] = _rectFromPoints;
  m[_radiusZero.funName] = _radiusZero;
  m[_radiusCircular.funName] = _radiusCircular;
  m[_radiusElliptical.funName] = _radiusElliptical;
  m[_rRectZero.funName] = _rRectZero;
  m[_rRectFromLTRBXY.funName] = _rRectFromLTRBXY;
  m[_rRectFromLTRBR.funName] = _rRectFromLTRBR;
  m[_rRectFromRectXY.funName] = _rRectFromRectXY;
  m[_rRectFromRectAndRadius.funName] = _rRectFromRectAndRadius;
  m[_rRectFromLTRBAndCorners.funName] = _rRectFromLTRBAndCorners;
  m[_rRectFromRectAndCorners.funName] = _rRectFromRectAndCorners;
  m[_rSTransform.funName] = _rSTransform;
  m[_rSTransformFromComponents.funName] = _rSTransformFromComponents;
  m[_point.funName] = _point;
  m[_pointOrigin.funName] = _pointOrigin;
  m[_color.funName] = _color;
  m[_colorFromARGB.funName] = _colorFromARGB;
  m[_colorFromRGBO.funName] = _colorFromRGBO;
  m[_strokeCap.funName] = _strokeCap;
  m[_strokeJoin.funName] = _strokeJoin;
  m[_paintingStyle.funName] = _paintingStyle;
  m[_blendMode.funName] = _blendMode;
  m[_clip.funName] = _clip;
  m[_paint.funName] = _paint;
  m[_gradientLinear.funName] = _gradientLinear;
  m[_gradientRadial.funName] = _gradientRadial;
  m[_gradientSweep.funName] = _gradientSweep;
  m[_colorFilterMode.funName] = _colorFilterMode;
  m[_colorFilterMatrix.funName] = _colorFilterMatrix;
  m[_colorFilterLinearToSrgbGamma.funName] = _colorFilterLinearToSrgbGamma;
  m[_colorFilterSrgbToLinearGamma.funName] = _colorFilterSrgbToLinearGamma;
  m[_blurStyle.funName] = _blurStyle;
  m[_maskFilterBlur.funName] = _maskFilterBlur;
  m[_filterQuality.funName] = _filterQuality;
  m[_imageFilterBlur.funName] = _imageFilterBlur;
  m[_imageFilterMatrix.funName] = _imageFilterMatrix;
  m[_imageByteFormat.funName] = _imageByteFormat;
  m[_pixelFormat.funName] = _pixelFormat;
  m[_shadow.funName] = _shadow;
  m[_path.funName] = _path;
  m[_pathFrom.funName] = _pathFrom;
  m[_tangent.funName] = _tangent;
  m[_tangentFromAngle.funName] = _tangentFromAngle;
  m[_pointerChange.funName] = _pointerChange;
  m[_pointerDeviceKind.funName] = _pointerDeviceKind;
  m[_pointerSignalKind.funName] = _pointerSignalKind;
  m[_pointerData.funName] = _pointerData;
  m[_pointerDataPacket.funName] = _pointerDataPacket;
  m[_semanticsActionTap.funName] = _semanticsActionTap;
  m[_semanticsActionLongPress.funName] = _semanticsActionLongPress;
  m[_semanticsActionScrollLeft.funName] = _semanticsActionScrollLeft;
  m[_semanticsActionScrollRight.funName] = _semanticsActionScrollRight;
  m[_semanticsActionScrollUp.funName] = _semanticsActionScrollUp;
  m[_semanticsActionScrollDown.funName] = _semanticsActionScrollDown;
  m[_semanticsActionIncrease.funName] = _semanticsActionIncrease;
  m[_semanticsActionDecrease.funName] = _semanticsActionDecrease;
  m[_semanticsActionShowOnScreen.funName] = _semanticsActionShowOnScreen;
  m[_semanticsActionMoveCursorForwardByCharacter.funName] =
      _semanticsActionMoveCursorForwardByCharacter;
  m[_semanticsActionMoveCursorBackwardByCharacter.funName] =
      _semanticsActionMoveCursorBackwardByCharacter;
  m[_semanticsActionSetSelection.funName] = _semanticsActionSetSelection;
  m[_semanticsActionCopy.funName] = _semanticsActionCopy;
  m[_semanticsActionCut.funName] = _semanticsActionCut;
  m[_semanticsActionPaste.funName] = _semanticsActionPaste;
  m[_semanticsActionDidGainAccessibilityFocus.funName] =
      _semanticsActionDidGainAccessibilityFocus;
  m[_semanticsActionDidLoseAccessibilityFocus.funName] =
      _semanticsActionDidLoseAccessibilityFocus;
  m[_semanticsActionCustomAction.funName] = _semanticsActionCustomAction;
  m[_semanticsActionDismiss.funName] = _semanticsActionDismiss;
  m[_semanticsActionMoveCursorForwardByWord.funName] =
      _semanticsActionMoveCursorForwardByWord;
  m[_semanticsActionMoveCursorBackwardByWord.funName] =
      _semanticsActionMoveCursorBackwardByWord;
  m[_semanticsActionValues.funName] = _semanticsActionValues;
  m[_semanticsFlagHasCheckedState.funName] = _semanticsFlagHasCheckedState;
  m[_semanticsFlagIsChecked.funName] = _semanticsFlagIsChecked;
  m[_semanticsFlagIsSelected.funName] = _semanticsFlagIsSelected;
  m[_semanticsFlagIsButton.funName] = _semanticsFlagIsButton;
  m[_semanticsFlagIsLink.funName] = _semanticsFlagIsLink;
  m[_semanticsFlagIsTextField.funName] = _semanticsFlagIsTextField;
  m[_semanticsFlagIsReadOnly.funName] = _semanticsFlagIsReadOnly;
  m[_semanticsFlagIsFocusable.funName] = _semanticsFlagIsFocusable;
  m[_semanticsFlagIsFocused.funName] = _semanticsFlagIsFocused;
  m[_semanticsFlagHasEnabledState.funName] = _semanticsFlagHasEnabledState;
  m[_semanticsFlagIsEnabled.funName] = _semanticsFlagIsEnabled;
  m[_semanticsFlagIsInMutuallyExclusiveGroup.funName] =
      _semanticsFlagIsInMutuallyExclusiveGroup;
  m[_semanticsFlagIsHeader.funName] = _semanticsFlagIsHeader;
  m[_semanticsFlagIsObscured.funName] = _semanticsFlagIsObscured;
  m[_semanticsFlagScopesRoute.funName] = _semanticsFlagScopesRoute;
  m[_semanticsFlagNamesRoute.funName] = _semanticsFlagNamesRoute;
  m[_semanticsFlagIsHidden.funName] = _semanticsFlagIsHidden;
  m[_semanticsFlagIsImage.funName] = _semanticsFlagIsImage;
  m[_semanticsFlagIsLiveRegion.funName] = _semanticsFlagIsLiveRegion;
  m[_semanticsFlagHasToggledState.funName] = _semanticsFlagHasToggledState;
  m[_semanticsFlagIsToggled.funName] = _semanticsFlagIsToggled;
  m[_semanticsFlagHasImplicitScrolling.funName] =
      _semanticsFlagHasImplicitScrolling;
  m[_semanticsFlagIsMultiline.funName] = _semanticsFlagIsMultiline;
  m[_semanticsFlagValues.funName] = _semanticsFlagValues;
  m[_semanticsUpdateBuilder.funName] = _semanticsUpdateBuilder;
  m[_fontStyle.funName] = _fontStyle;
  m[_placeholderAlignment.funName] = _placeholderAlignment;
  m[_fontWeightW100.funName] = _fontWeightW100;
  m[_fontWeightW200.funName] = _fontWeightW200;
  m[_fontWeightW300.funName] = _fontWeightW300;
  m[_fontWeightW400.funName] = _fontWeightW400;
  m[_fontWeightW500.funName] = _fontWeightW500;
  m[_fontWeightW600.funName] = _fontWeightW600;
  m[_fontWeightW700.funName] = _fontWeightW700;
  m[_fontWeightW800.funName] = _fontWeightW800;
  m[_fontWeightW900.funName] = _fontWeightW900;
  m[_fontWeightNormal.funName] = _fontWeightNormal;
  m[_fontWeightBold.funName] = _fontWeightBold;
  m[_fontWeightValues.funName] = _fontWeightValues;
  m[_fontFeature.funName] = _fontFeature;
  m[_fontFeatureStylisticSet.funName] = _fontFeatureStylisticSet;
  m[_fontFeatureEnable.funName] = _fontFeatureEnable;
  m[_fontFeatureDisable.funName] = _fontFeatureDisable;
  m[_fontFeatureRandomize.funName] = _fontFeatureRandomize;
  m[_fontFeatureSlashedZero.funName] = _fontFeatureSlashedZero;
  m[_fontFeatureOldstyleFigures.funName] = _fontFeatureOldstyleFigures;
  m[_fontFeatureProportionalFigures.funName] = _fontFeatureProportionalFigures;
  m[_fontFeatureTabularFigures.funName] = _fontFeatureTabularFigures;
  m[_textAlign.funName] = _textAlign;
  m[_textBaseline.funName] = _textBaseline;
  m[_textDecorationNone.funName] = _textDecorationNone;
  m[_textDecorationUnderline.funName] = _textDecorationUnderline;
  m[_textDecorationOverline.funName] = _textDecorationOverline;
  m[_textDecorationLineThrough.funName] = _textDecorationLineThrough;
  m[_textDecorationCombine.funName] = _textDecorationCombine;
  m[_textDecorationStyle.funName] = _textDecorationStyle;
  m[_textHeightBehavior.funName] = _textHeightBehavior;
  m[_textHeightBehaviorFromEncoded.funName] = _textHeightBehaviorFromEncoded;
  m[_textStyle.funName] = _textStyle;
  m[_paragraphStyle.funName] = _paragraphStyle;
  m[_strutStyle.funName] = _strutStyle;
  m[_textDirection.funName] = _textDirection;
  m[_textBoxFromLTRBD.funName] = _textBoxFromLTRBD;
  m[_textAffinity.funName] = _textAffinity;
  m[_textPosition.funName] = _textPosition;
  m[_textRange.funName] = _textRange;
  m[_textRangeEmpty.funName] = _textRangeEmpty;
  m[_textRangeCollapsed.funName] = _textRangeCollapsed;
  m[_paragraphConstraints.funName] = _paragraphConstraints;
  m[_boxHeightStyle.funName] = _boxHeightStyle;
  m[_boxWidthStyle.funName] = _boxWidthStyle;
  m[_lineMetrics.funName] = _lineMetrics;
  m[_paragraphBuilder.funName] = _paragraphBuilder;
  m[_tileMode.funName] = _tileMode;
  m[_appLifecycleState.funName] = _appLifecycleState;
  m[_windowPaddingZero.funName] = _windowPaddingZero;
  m[_locale.funName] = _locale;
  m[_localeFromSubtags.funName] = _localeFromSubtags;
  m[_brightness.funName] = _brightness;
  m[_callbackHandleFromRawHandle.funName] = _callbackHandleFromRawHandle;
  m[_pluginUtilities.funName] = _pluginUtilities;
  m[_imageShader.funName] = _imageShader;
  m[_isolateNameServer.funName] = _isolateNameServer;
  m[_framePhase.funName] = _framePhase;
  m[_frameTiming.funName] = _frameTiming;
  m[_deprecated.funName] = _deprecated;
  m[_provisional.funName] = _provisional;
  m[_pragma.funName] = _pragma;
  m[_bigIntFrom.funName] = _bigIntFrom;
  m[_boolFromEnvironment.funName] = _boolFromEnvironment;
  m[_boolHasEnvironment.funName] = _boolHasEnvironment;
  m[_dateTime.funName] = _dateTime;
  m[_dateTimeMonday.funName] = _dateTimeMonday;
  m[_dateTimeTuesday.funName] = _dateTimeTuesday;
  m[_dateTimeWednesday.funName] = _dateTimeWednesday;
  m[_dateTimeThursday.funName] = _dateTimeThursday;
  m[_dateTimeFriday.funName] = _dateTimeFriday;
  m[_dateTimeSaturday.funName] = _dateTimeSaturday;
  m[_dateTimeSunday.funName] = _dateTimeSunday;
  m[_dateTimeDaysPerWeek.funName] = _dateTimeDaysPerWeek;
  m[_dateTimeJanuary.funName] = _dateTimeJanuary;
  m[_dateTimeFebruary.funName] = _dateTimeFebruary;
  m[_dateTimeMarch.funName] = _dateTimeMarch;
  m[_dateTimeApril.funName] = _dateTimeApril;
  m[_dateTimeMay.funName] = _dateTimeMay;
  m[_dateTimeJune.funName] = _dateTimeJune;
  m[_dateTimeJuly.funName] = _dateTimeJuly;
  m[_dateTimeAugust.funName] = _dateTimeAugust;
  m[_dateTimeSeptember.funName] = _dateTimeSeptember;
  m[_dateTimeOctober.funName] = _dateTimeOctober;
  m[_dateTimeNovember.funName] = _dateTimeNovember;
  m[_dateTimeDecember.funName] = _dateTimeDecember;
  m[_dateTimeMonthsPerYear.funName] = _dateTimeMonthsPerYear;
  m[_dateTimeUtc.funName] = _dateTimeUtc;
  m[_dateTimeNow.funName] = _dateTimeNow;
  m[_dateTimeFromMillisecondsSinceEpoch.funName] =
      _dateTimeFromMillisecondsSinceEpoch;
  m[_dateTimeFromMicrosecondsSinceEpoch.funName] =
      _dateTimeFromMicrosecondsSinceEpoch;
  m[_doubleNan.funName] = _doubleNan;
  m[_doubleInfinity.funName] = _doubleInfinity;
  m[_doubleNegativeInfinity.funName] = _doubleNegativeInfinity;
  m[_doubleMinPositive.funName] = _doubleMinPositive;
  m[_doubleMaxFinite.funName] = _doubleMaxFinite;
  m[_duration.funName] = _duration;
  m[_durationMicrosecondsPerMillisecond.funName] =
      _durationMicrosecondsPerMillisecond;
  m[_durationMillisecondsPerSecond.funName] = _durationMillisecondsPerSecond;
  m[_durationSecondsPerMinute.funName] = _durationSecondsPerMinute;
  m[_durationMinutesPerHour.funName] = _durationMinutesPerHour;
  m[_durationHoursPerDay.funName] = _durationHoursPerDay;
  m[_durationMicrosecondsPerSecond.funName] = _durationMicrosecondsPerSecond;
  m[_durationMicrosecondsPerMinute.funName] = _durationMicrosecondsPerMinute;
  m[_durationMicrosecondsPerHour.funName] = _durationMicrosecondsPerHour;
  m[_durationMicrosecondsPerDay.funName] = _durationMicrosecondsPerDay;
  m[_durationMillisecondsPerMinute.funName] = _durationMillisecondsPerMinute;
  m[_durationMillisecondsPerHour.funName] = _durationMillisecondsPerHour;
  m[_durationMillisecondsPerDay.funName] = _durationMillisecondsPerDay;
  m[_durationSecondsPerHour.funName] = _durationSecondsPerHour;
  m[_durationSecondsPerDay.funName] = _durationSecondsPerDay;
  m[_durationMinutesPerDay.funName] = _durationMinutesPerDay;
  m[_durationZero.funName] = _durationZero;
  m[_error.funName] = _error;
  m[_assertionError.funName] = _assertionError;
  m[_typeError.funName] = _typeError;
  m[_castError.funName] = _castError;
  m[_nullThrownError.funName] = _nullThrownError;
  m[_argumentError.funName] = _argumentError;
  m[_argumentErrorValue.funName] = _argumentErrorValue;
  m[_argumentErrorNotNull.funName] = _argumentErrorNotNull;
  m[_rangeError.funName] = _rangeError;
  m[_rangeErrorIndex.funName] = _rangeErrorIndex;
  m[_rangeErrorValue.funName] = _rangeErrorValue;
  m[_rangeErrorRange.funName] = _rangeErrorRange;
  m[_indexError.funName] = _indexError;
  m[_fallThroughError.funName] = _fallThroughError;
  m[_abstractClassInstantiationError.funName] =
      _abstractClassInstantiationError;
  m[_noSuchMethodError.funName] = _noSuchMethodError;
  m[_noSuchMethodErrorWithInvocation.funName] =
      _noSuchMethodErrorWithInvocation;
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
  m[_intFromEnvironment.funName] = _intFromEnvironment;
  m[_invocationMethod.funName] = _invocationMethod;
  m[_invocationGenericMethod.funName] = _invocationGenericMethod;
  m[_invocationGetter.funName] = _invocationGetter;
  m[_invocationSetter.funName] = _invocationSetter;
  m[_iterableGenerate.funName] = _iterableGenerate;
  m[_iterableEmpty.funName] = _iterableEmpty;
  m[_list.funName] = _list;
  m[_listFilled.funName] = _listFilled;
  m[_listFrom.funName] = _listFrom;
  m[_listOf.funName] = _listOf;
  m[_listGenerate.funName] = _listGenerate;
  m[_listUnmodifiable.funName] = _listUnmodifiable;
  m[_listCopyRange.funName] = _listCopyRange;
  m[_listWriteIterable.funName] = _listWriteIterable;
  m[_map.funName] = _map;
  m[_mapFrom.funName] = _mapFrom;
  m[_mapOf.funName] = _mapOf;
  m[_mapUnmodifiable.funName] = _mapUnmodifiable;
  m[_mapIdentity.funName] = _mapIdentity;
  m[_mapFromIterable.funName] = _mapFromIterable;
  m[_mapFromIterables.funName] = _mapFromIterables;
  m[_mapFromEntries.funName] = _mapFromEntries;
  m[_mapEntry.funName] = _mapEntry;
  m[_regExp.funName] = _regExp;
  m[_set.funName] = _set;
  m[_setIdentity.funName] = _setIdentity;
  m[_setFrom.funName] = _setFrom;
  m[_setOf.funName] = _setOf;
  m[_stackTraceEmpty.funName] = _stackTraceEmpty;
  m[_stackTraceFromString.funName] = _stackTraceFromString;
  m[_stopwatch.funName] = _stopwatch;
  m[_stringFromCharCodes.funName] = _stringFromCharCodes;
  m[_stringFromCharCode.funName] = _stringFromCharCode;
  m[_stringFromEnvironment.funName] = _stringFromEnvironment;
  m[_runes.funName] = _runes;
  m[_runeIterator.funName] = _runeIterator;
  m[_runeIteratorAt.funName] = _runeIteratorAt;
  m[_stringBuffer.funName] = _stringBuffer;
  m[_symbolUnaryMinus.funName] = _symbolUnaryMinus;
  m[_symbolEmpty.funName] = _symbolEmpty;
  m[_symbol.funName] = _symbol;
  m[_uri.funName] = _uri;
  m[_uriHttp.funName] = _uriHttp;
  m[_uriHttps.funName] = _uriHttps;
  m[_uriFile.funName] = _uriFile;
  m[_uriDirectory.funName] = _uriDirectory;
  m[_uriDataFromString.funName] = _uriDataFromString;
  m[_uriDataFromBytes.funName] = _uriDataFromBytes;
  m[_uriDataFromString.funName] = _uriDataFromString;
  m[_uriDataFromBytes.funName] = _uriDataFromBytes;
  m[_uriDataFromUri.funName] = _uriDataFromUri;
  return m;
}

var _pointMode = MXFunctionInvoke(
    "PointMode",
    ({String name, int index}) => MXPointMode.parse(name, index),
    ["name", "index"]);
var _clipOp = MXFunctionInvoke(
    "ClipOp",
    ({String name, int index}) => MXClipOp.parse(name, index),
    ["name", "index"]);
var _vertexMode = MXFunctionInvoke(
    "VertexMode",
    ({String name, int index}) => MXVertexMode.parse(name, index),
    ["name", "index"]);
var _vertices = MXFunctionInvoke(
  "Vertices",
  ({
    VertexMode mode,
    dynamic positions,
    dynamic textureCoordinates,
    dynamic colors,
    dynamic indices,
  }) =>
      Vertices(
    mode,
    toListT<Offset>(positions),
    textureCoordinates: toListT<Offset>(textureCoordinates),
    colors: toListT<Color>(colors),
    indices: toListT<int>(indices),
  ),
  [
    "mode",
    "positions",
    "textureCoordinates",
    "colors",
    "indices",
  ],
);
var _verticesRaw = MXFunctionInvoke(
  "Vertices.raw",
  ({
    VertexMode mode,
    Float32List positions,
    Float32List textureCoordinates,
    Int32List colors,
    Uint16List indices,
  }) =>
      Vertices.raw(
    mode,
    positions,
    textureCoordinates: textureCoordinates,
    colors: colors,
    indices: indices,
  ),
  [
    "mode",
    "positions",
    "textureCoordinates",
    "colors",
    "indices",
  ],
);
var _pictureRecorder = MXFunctionInvoke(
  "PictureRecorder",
  () => PictureRecorder(),
  [],
);
var _canvas = MXFunctionInvoke(
  "Canvas",
  ({
    PictureRecorder recorder,
    Rect cullRect,
  }) =>
      Canvas(
    recorder,
    cullRect,
  ),
  [
    "recorder",
    "cullRect",
  ],
);
var _pathFillType = MXFunctionInvoke(
    "PathFillType",
    ({String name, int index}) => MXPathFillType.parse(name, index),
    ["name", "index"]);
var _pathOperation = MXFunctionInvoke(
    "PathOperation",
    ({String name, int index}) => MXPathOperation.parse(name, index),
    ["name", "index"]);
var _rawRecordingCanvas = MXFunctionInvoke(
  "RawRecordingCanvas",
  ({
    Size size,
  }) =>
      RawRecordingCanvas(
    size,
  ),
  [
    "size",
  ],
);
var _channelBuffers = MXFunctionInvoke(
  "ChannelBuffers",
  () => ChannelBuffers(),
  [],
);
var _channelBuffersKDefaultBufferSize = MXFunctionInvoke(
    "ChannelBuffers.kDefaultBufferSize",
    () => ChannelBuffers.kDefaultBufferSize);
var _channelBuffersKControlChannelName = MXFunctionInvoke(
    "ChannelBuffers.kControlChannelName",
    () => ChannelBuffers.kControlChannelName);
var _sceneBuilder = MXFunctionInvoke(
  "SceneBuilder",
  () => SceneBuilder(),
  [],
);
var _engineLayer = MXFunctionInvoke(
  "EngineLayer",
  () => EngineLayer(),
  [],
);
var _sceneHost = MXFunctionInvoke(
  "SceneHost",
  ({
    dynamic viewHolderToken,
    dynamic viewConnectedCallback,
    dynamic viewDisconnectedCallback,
    dynamic viewStateChangedCallback,
  }) =>
      SceneHost(
    viewHolderToken,
    createVoidCallbackClosure(_sceneHost.buildOwner, viewConnectedCallback),
    createVoidCallbackClosure(_sceneHost.buildOwner, viewDisconnectedCallback),
    createValueChangedGenericClosure<bool>(
        _sceneHost.buildOwner, viewStateChangedCallback),
  ),
  [
    "viewHolderToken",
    "viewConnectedCallback",
    "viewDisconnectedCallback",
    "viewStateChangedCallback",
  ],
);
var _offset = MXFunctionInvoke(
  "Offset",
  ({
    dynamic dx,
    dynamic dy,
  }) =>
      Offset(
    dx?.toDouble(),
    dy?.toDouble(),
  ),
  [
    "dx",
    "dy",
  ],
);
var _offsetZero = MXFunctionInvoke("Offset.zero", () => Offset.zero);
var _offsetInfinite =
    MXFunctionInvoke("Offset.infinite", () => Offset.infinite);
var _offsetFromDirection = MXFunctionInvoke(
  "Offset.fromDirection",
  ({
    dynamic direction,
    dynamic distance,
  }) =>
      Offset.fromDirection(
    direction?.toDouble(),
    distance?.toDouble(),
  ),
  [
    "direction",
    "distance",
  ],
);
var _size = MXFunctionInvoke(
  "Size",
  ({
    dynamic width,
    dynamic height,
  }) =>
      Size(
    width?.toDouble(),
    height?.toDouble(),
  ),
  [
    "width",
    "height",
  ],
);
var _sizeZero = MXFunctionInvoke("Size.zero", () => Size.zero);
var _sizeInfinite = MXFunctionInvoke("Size.infinite", () => Size.infinite);
var _sizeCopy = MXFunctionInvoke(
  "Size.copy",
  ({
    Size source,
  }) =>
      Size.copy(
    source,
  ),
  [
    "source",
  ],
);
var _sizeSquare = MXFunctionInvoke(
  "Size.square",
  ({
    dynamic dimension,
  }) =>
      Size.square(
    dimension?.toDouble(),
  ),
  [
    "dimension",
  ],
);
var _sizeFromWidth = MXFunctionInvoke(
  "Size.fromWidth",
  ({
    dynamic width,
  }) =>
      Size.fromWidth(
    width?.toDouble(),
  ),
  [
    "width",
  ],
);
var _sizeFromHeight = MXFunctionInvoke(
  "Size.fromHeight",
  ({
    dynamic height,
  }) =>
      Size.fromHeight(
    height?.toDouble(),
  ),
  [
    "height",
  ],
);
var _sizeFromRadius = MXFunctionInvoke(
  "Size.fromRadius",
  ({
    dynamic radius,
  }) =>
      Size.fromRadius(
    radius?.toDouble(),
  ),
  [
    "radius",
  ],
);
var _rectZero = MXFunctionInvoke("Rect.zero", () => Rect.zero);
var _rectLargest = MXFunctionInvoke("Rect.largest", () => Rect.largest);
var _rectFromLTRB = MXFunctionInvoke(
  "Rect.fromLTRB",
  ({
    dynamic left,
    dynamic top,
    dynamic right,
    dynamic bottom,
  }) =>
      Rect.fromLTRB(
    left?.toDouble(),
    top?.toDouble(),
    right?.toDouble(),
    bottom?.toDouble(),
  ),
  [
    "left",
    "top",
    "right",
    "bottom",
  ],
);
var _rectFromLTWH = MXFunctionInvoke(
  "Rect.fromLTWH",
  ({
    dynamic left,
    dynamic top,
    dynamic width,
    dynamic height,
  }) =>
      Rect.fromLTWH(
    left?.toDouble(),
    top?.toDouble(),
    width?.toDouble(),
    height?.toDouble(),
  ),
  [
    "left",
    "top",
    "width",
    "height",
  ],
);
var _rectFromCircle = MXFunctionInvoke(
  "Rect.fromCircle",
  ({
    Offset center,
    dynamic radius,
  }) =>
      Rect.fromCircle(
    center: center,
    radius: radius?.toDouble(),
  ),
  [
    "center",
    "radius",
  ],
);
var _rectFromCenter = MXFunctionInvoke(
  "Rect.fromCenter",
  ({
    Offset center,
    dynamic width,
    dynamic height,
  }) =>
      Rect.fromCenter(
    center: center,
    width: width?.toDouble(),
    height: height?.toDouble(),
  ),
  [
    "center",
    "width",
    "height",
  ],
);
var _rectFromPoints = MXFunctionInvoke(
  "Rect.fromPoints",
  ({
    Offset a,
    Offset b,
  }) =>
      Rect.fromPoints(
    a,
    b,
  ),
  [
    "a",
    "b",
  ],
);
var _radiusZero = MXFunctionInvoke("Radius.zero", () => Radius.zero);
var _radiusCircular = MXFunctionInvoke(
  "Radius.circular",
  ({
    dynamic radius,
  }) =>
      Radius.circular(
    radius?.toDouble(),
  ),
  [
    "radius",
  ],
);
var _radiusElliptical = MXFunctionInvoke(
  "Radius.elliptical",
  ({
    dynamic x,
    dynamic y,
  }) =>
      Radius.elliptical(
    x?.toDouble(),
    y?.toDouble(),
  ),
  [
    "x",
    "y",
  ],
);
var _rRectZero = MXFunctionInvoke("RRect.zero", () => RRect.zero);
var _rRectFromLTRBXY = MXFunctionInvoke(
  "RRect.fromLTRBXY",
  ({
    dynamic left,
    dynamic top,
    dynamic right,
    dynamic bottom,
    dynamic radiusX,
    dynamic radiusY,
  }) =>
      RRect.fromLTRBXY(
    left?.toDouble(),
    top?.toDouble(),
    right?.toDouble(),
    bottom?.toDouble(),
    radiusX?.toDouble(),
    radiusY?.toDouble(),
  ),
  [
    "left",
    "top",
    "right",
    "bottom",
    "radiusX",
    "radiusY",
  ],
);
var _rRectFromLTRBR = MXFunctionInvoke(
  "RRect.fromLTRBR",
  ({
    dynamic left,
    dynamic top,
    dynamic right,
    dynamic bottom,
    Radius radius,
  }) =>
      RRect.fromLTRBR(
    left?.toDouble(),
    top?.toDouble(),
    right?.toDouble(),
    bottom?.toDouble(),
    radius,
  ),
  [
    "left",
    "top",
    "right",
    "bottom",
    "radius",
  ],
);
var _rRectFromRectXY = MXFunctionInvoke(
  "RRect.fromRectXY",
  ({
    Rect rect,
    dynamic radiusX,
    dynamic radiusY,
  }) =>
      RRect.fromRectXY(
    rect,
    radiusX?.toDouble(),
    radiusY?.toDouble(),
  ),
  [
    "rect",
    "radiusX",
    "radiusY",
  ],
);
var _rRectFromRectAndRadius = MXFunctionInvoke(
  "RRect.fromRectAndRadius",
  ({
    Rect rect,
    Radius radius,
  }) =>
      RRect.fromRectAndRadius(
    rect,
    radius,
  ),
  [
    "rect",
    "radius",
  ],
);
var _rRectFromLTRBAndCorners = MXFunctionInvoke(
  "RRect.fromLTRBAndCorners",
  ({
    dynamic left,
    dynamic top,
    dynamic right,
    dynamic bottom,
    Radius topLeft = Radius.zero,
    Radius topRight = Radius.zero,
    Radius bottomRight = Radius.zero,
    Radius bottomLeft = Radius.zero,
  }) =>
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
  [
    "left",
    "top",
    "right",
    "bottom",
    "topLeft",
    "topRight",
    "bottomRight",
    "bottomLeft",
  ],
);
var _rRectFromRectAndCorners = MXFunctionInvoke(
  "RRect.fromRectAndCorners",
  ({
    Rect rect,
    Radius topLeft = Radius.zero,
    Radius topRight = Radius.zero,
    Radius bottomRight = Radius.zero,
    Radius bottomLeft = Radius.zero,
  }) =>
      RRect.fromRectAndCorners(
    rect,
    topLeft: topLeft,
    topRight: topRight,
    bottomRight: bottomRight,
    bottomLeft: bottomLeft,
  ),
  [
    "rect",
    "topLeft",
    "topRight",
    "bottomRight",
    "bottomLeft",
  ],
);
var _rSTransform = MXFunctionInvoke(
  "RSTransform",
  ({
    dynamic scos,
    dynamic ssin,
    dynamic tx,
    dynamic ty,
  }) =>
      RSTransform(
    scos?.toDouble(),
    ssin?.toDouble(),
    tx?.toDouble(),
    ty?.toDouble(),
  ),
  [
    "scos",
    "ssin",
    "tx",
    "ty",
  ],
);
var _rSTransformFromComponents = MXFunctionInvoke(
  "RSTransform.fromComponents",
  ({
    dynamic rotation,
    dynamic scale,
    dynamic anchorX,
    dynamic anchorY,
    dynamic translateX,
    dynamic translateY,
  }) =>
      RSTransform.fromComponents(
    rotation: rotation?.toDouble(),
    scale: scale?.toDouble(),
    anchorX: anchorX?.toDouble(),
    anchorY: anchorY?.toDouble(),
    translateX: translateX?.toDouble(),
    translateY: translateY?.toDouble(),
  ),
  [
    "rotation",
    "scale",
    "anchorX",
    "anchorY",
    "translateX",
    "translateY",
  ],
);
var _point = MXFunctionInvoke(
  "Point",
  ({
    dynamic x,
    dynamic y,
  }) =>
      Point(
    x?.toDouble(),
    y?.toDouble(),
  ),
  [
    "x",
    "y",
  ],
);
var _pointOrigin = MXFunctionInvoke("Point.origin", () => Point.origin);
var _color = MXFunctionInvoke(
  "Color",
  ({
    int value,
  }) =>
      Color(
    value,
  ),
  [
    "value",
  ],
);
var _colorFromARGB = MXFunctionInvoke(
  "Color.fromARGB",
  ({
    int a,
    int r,
    int g,
    int b,
  }) =>
      Color.fromARGB(
    a,
    r,
    g,
    b,
  ),
  [
    "a",
    "r",
    "g",
    "b",
  ],
);
var _colorFromRGBO = MXFunctionInvoke(
  "Color.fromRGBO",
  ({
    int r,
    int g,
    int b,
    dynamic opacity,
  }) =>
      Color.fromRGBO(
    r,
    g,
    b,
    opacity?.toDouble(),
  ),
  [
    "r",
    "g",
    "b",
    "opacity",
  ],
);
var _strokeCap = MXFunctionInvoke(
    "StrokeCap",
    ({String name, int index}) => MXStrokeCap.parse(name, index),
    ["name", "index"]);
var _strokeJoin = MXFunctionInvoke(
    "StrokeJoin",
    ({String name, int index}) => MXStrokeJoin.parse(name, index),
    ["name", "index"]);
var _paintingStyle = MXFunctionInvoke(
    "PaintingStyle",
    ({String name, int index}) => MXPaintingStyle.parse(name, index),
    ["name", "index"]);
var _blendMode = MXFunctionInvoke(
    "BlendMode",
    ({String name, int index}) => MXBlendMode.parse(name, index),
    ["name", "index"]);
var _clip = MXFunctionInvoke("Clip",
    ({String name, int index}) => MXClip.parse(name, index), ["name", "index"]);
var _paint = MXFunctionInvoke(
  "Paint",
  () => Paint(),
  [],
);
var _gradientLinear = MXFunctionInvoke(
  "Gradient.linear",
  ({
    Offset from,
    Offset to,
    dynamic colors,
    dynamic colorStops,
    TileMode tileMode,
    Float64List matrix4,
  }) =>
      Gradient.linear(
    from,
    to,
    toListT<Color>(colors),
    toListT<double>(colorStops),
    tileMode,
    matrix4,
  ),
  [
    "from",
    "to",
    "colors",
    "colorStops",
    "tileMode",
    "matrix4",
  ],
);
var _gradientRadial = MXFunctionInvoke(
  "Gradient.radial",
  ({
    Offset center,
    dynamic radius,
    dynamic colors,
    dynamic colorStops,
    TileMode tileMode,
    Float64List matrix4,
    Offset focal,
    dynamic focalRadius,
  }) =>
      Gradient.radial(
    center,
    radius?.toDouble(),
    toListT<Color>(colors),
    toListT<double>(colorStops),
    tileMode,
    matrix4,
    focal,
    focalRadius?.toDouble(),
  ),
  [
    "center",
    "radius",
    "colors",
    "colorStops",
    "tileMode",
    "matrix4",
    "focal",
    "focalRadius",
  ],
);
var _gradientSweep = MXFunctionInvoke(
  "Gradient.sweep",
  ({
    Offset center,
    dynamic colors,
    dynamic colorStops,
    TileMode tileMode,
    dynamic startAngle,
    dynamic endAngle,
    Float64List matrix4,
  }) =>
      Gradient.sweep(
    center,
    toListT<Color>(colors),
    toListT<double>(colorStops),
    tileMode,
    startAngle?.toDouble(),
    endAngle?.toDouble(),
    matrix4,
  ),
  [
    "center",
    "colors",
    "colorStops",
    "tileMode",
    "startAngle",
    "endAngle",
    "matrix4",
  ],
);
var _colorFilterMode = MXFunctionInvoke(
  "ColorFilter.mode",
  ({
    Color color,
    BlendMode blendMode,
  }) =>
      ColorFilter.mode(
    color,
    blendMode,
  ),
  [
    "color",
    "blendMode",
  ],
);
var _colorFilterMatrix = MXFunctionInvoke(
  "ColorFilter.matrix",
  ({
    dynamic matrix,
  }) =>
      ColorFilter.matrix(
    toListT<double>(matrix),
  ),
  [
    "matrix",
  ],
);
var _colorFilterLinearToSrgbGamma = MXFunctionInvoke(
  "ColorFilter.linearToSrgbGamma",
  () => ColorFilter.linearToSrgbGamma(),
  [],
);
var _colorFilterSrgbToLinearGamma = MXFunctionInvoke(
  "ColorFilter.srgbToLinearGamma",
  () => ColorFilter.srgbToLinearGamma(),
  [],
);
var _blurStyle = MXFunctionInvoke(
    "BlurStyle",
    ({String name, int index}) => MXBlurStyle.parse(name, index),
    ["name", "index"]);
var _maskFilterBlur = MXFunctionInvoke(
  "MaskFilter.blur",
  ({
    BlurStyle style,
    dynamic sigma,
  }) =>
      MaskFilter.blur(
    style,
    sigma?.toDouble(),
  ),
  [
    "style",
    "sigma",
  ],
);
var _filterQuality = MXFunctionInvoke(
    "FilterQuality",
    ({String name, int index}) => MXFilterQuality.parse(name, index),
    ["name", "index"]);
var _imageFilterBlur = MXFunctionInvoke(
  "ImageFilter.blur",
  ({
    dynamic sigmaX = 0.0,
    dynamic sigmaY = 0.0,
  }) =>
      ImageFilter.blur(
    sigmaX: sigmaX?.toDouble(),
    sigmaY: sigmaY?.toDouble(),
  ),
  [
    "sigmaX",
    "sigmaY",
  ],
);
var _imageFilterMatrix = MXFunctionInvoke(
  "ImageFilter.matrix",
  ({
    Float64List matrix4,
    FilterQuality filterQuality = FilterQuality.low,
  }) =>
      ImageFilter.matrix(
    matrix4,
    filterQuality: filterQuality,
  ),
  [
    "matrix4",
    "filterQuality",
  ],
);
var _imageByteFormat = MXFunctionInvoke(
    "ImageByteFormat",
    ({String name, int index}) => MXImageByteFormat.parse(name, index),
    ["name", "index"]);
var _pixelFormat = MXFunctionInvoke(
    "PixelFormat",
    ({String name, int index}) => MXPixelFormat.parse(name, index),
    ["name", "index"]);
var _shadow = MXFunctionInvoke(
  "Shadow",
  ({
    Color color = const Color(4278190080.0),
    Offset offset = Offset.zero,
    dynamic blurRadius = 0.0,
  }) =>
      Shadow(
    color: color,
    offset: offset,
    blurRadius: blurRadius?.toDouble(),
  ),
  [
    "color",
    "offset",
    "blurRadius",
  ],
);
var _path = MXFunctionInvoke(
  "Path",
  () => Path(),
  [],
);
var _pathFrom = MXFunctionInvoke(
  "Path.from",
  ({
    Path source,
  }) =>
      Path.from(
    source,
  ),
  [
    "source",
  ],
);
var _tangent = MXFunctionInvoke(
  "Tangent",
  ({
    Offset position,
    Offset vector,
  }) =>
      Tangent(
    position,
    vector,
  ),
  [
    "position",
    "vector",
  ],
);
var _tangentFromAngle = MXFunctionInvoke(
  "Tangent.fromAngle",
  ({
    Offset position,
    dynamic angle,
  }) =>
      Tangent.fromAngle(
    position,
    angle?.toDouble(),
  ),
  [
    "position",
    "angle",
  ],
);
var _pointerChange = MXFunctionInvoke(
    "PointerChange",
    ({String name, int index}) => MXPointerChange.parse(name, index),
    ["name", "index"]);
var _pointerDeviceKind = MXFunctionInvoke(
    "PointerDeviceKind",
    ({String name, int index}) => MXPointerDeviceKind.parse(name, index),
    ["name", "index"]);
var _pointerSignalKind = MXFunctionInvoke(
    "PointerSignalKind",
    ({String name, int index}) => MXPointerSignalKind.parse(name, index),
    ["name", "index"]);
var _pointerData = MXFunctionInvoke(
  "PointerData",
  ({
    Duration timeStamp = Duration.zero,
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
  }) =>
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
  [
    "timeStamp",
    "change",
    "kind",
    "signalKind",
    "device",
    "pointerIdentifier",
    "physicalX",
    "physicalY",
    "physicalDeltaX",
    "physicalDeltaY",
    "buttons",
    "obscured",
    "synthesized",
    "pressure",
    "pressureMin",
    "pressureMax",
    "distance",
    "distanceMax",
    "size",
    "radiusMajor",
    "radiusMinor",
    "radiusMin",
    "radiusMax",
    "orientation",
    "tilt",
    "platformData",
    "scrollDeltaX",
    "scrollDeltaY",
  ],
);
var _pointerDataPacket = MXFunctionInvoke(
  "PointerDataPacket",
  ({
    dynamic data = const <PointerData>[],
  }) =>
      PointerDataPacket(
    data: toListT<PointerData>(data),
  ),
  [
    "data",
  ],
);
var _semanticsActionTap =
    MXFunctionInvoke("SemanticsAction.tap", () => SemanticsAction.tap);
var _semanticsActionLongPress = MXFunctionInvoke(
    "SemanticsAction.longPress", () => SemanticsAction.longPress);
var _semanticsActionScrollLeft = MXFunctionInvoke(
    "SemanticsAction.scrollLeft", () => SemanticsAction.scrollLeft);
var _semanticsActionScrollRight = MXFunctionInvoke(
    "SemanticsAction.scrollRight", () => SemanticsAction.scrollRight);
var _semanticsActionScrollUp = MXFunctionInvoke(
    "SemanticsAction.scrollUp", () => SemanticsAction.scrollUp);
var _semanticsActionScrollDown = MXFunctionInvoke(
    "SemanticsAction.scrollDown", () => SemanticsAction.scrollDown);
var _semanticsActionIncrease = MXFunctionInvoke(
    "SemanticsAction.increase", () => SemanticsAction.increase);
var _semanticsActionDecrease = MXFunctionInvoke(
    "SemanticsAction.decrease", () => SemanticsAction.decrease);
var _semanticsActionShowOnScreen = MXFunctionInvoke(
    "SemanticsAction.showOnScreen", () => SemanticsAction.showOnScreen);
var _semanticsActionMoveCursorForwardByCharacter = MXFunctionInvoke(
    "SemanticsAction.moveCursorForwardByCharacter",
    () => SemanticsAction.moveCursorForwardByCharacter);
var _semanticsActionMoveCursorBackwardByCharacter = MXFunctionInvoke(
    "SemanticsAction.moveCursorBackwardByCharacter",
    () => SemanticsAction.moveCursorBackwardByCharacter);
var _semanticsActionSetSelection = MXFunctionInvoke(
    "SemanticsAction.setSelection", () => SemanticsAction.setSelection);
var _semanticsActionCopy =
    MXFunctionInvoke("SemanticsAction.copy", () => SemanticsAction.copy);
var _semanticsActionCut =
    MXFunctionInvoke("SemanticsAction.cut", () => SemanticsAction.cut);
var _semanticsActionPaste =
    MXFunctionInvoke("SemanticsAction.paste", () => SemanticsAction.paste);
var _semanticsActionDidGainAccessibilityFocus = MXFunctionInvoke(
    "SemanticsAction.didGainAccessibilityFocus",
    () => SemanticsAction.didGainAccessibilityFocus);
var _semanticsActionDidLoseAccessibilityFocus = MXFunctionInvoke(
    "SemanticsAction.didLoseAccessibilityFocus",
    () => SemanticsAction.didLoseAccessibilityFocus);
var _semanticsActionCustomAction = MXFunctionInvoke(
    "SemanticsAction.customAction", () => SemanticsAction.customAction);
var _semanticsActionDismiss =
    MXFunctionInvoke("SemanticsAction.dismiss", () => SemanticsAction.dismiss);
var _semanticsActionMoveCursorForwardByWord = MXFunctionInvoke(
    "SemanticsAction.moveCursorForwardByWord",
    () => SemanticsAction.moveCursorForwardByWord);
var _semanticsActionMoveCursorBackwardByWord = MXFunctionInvoke(
    "SemanticsAction.moveCursorBackwardByWord",
    () => SemanticsAction.moveCursorBackwardByWord);
var _semanticsActionValues =
    MXFunctionInvoke("SemanticsAction.values", () => SemanticsAction.values);
var _semanticsFlagHasCheckedState = MXFunctionInvoke(
    "SemanticsFlag.hasCheckedState", () => SemanticsFlag.hasCheckedState);
var _semanticsFlagIsChecked =
    MXFunctionInvoke("SemanticsFlag.isChecked", () => SemanticsFlag.isChecked);
var _semanticsFlagIsSelected = MXFunctionInvoke(
    "SemanticsFlag.isSelected", () => SemanticsFlag.isSelected);
var _semanticsFlagIsButton =
    MXFunctionInvoke("SemanticsFlag.isButton", () => SemanticsFlag.isButton);
var _semanticsFlagIsLink =
    MXFunctionInvoke("SemanticsFlag.isLink", () => SemanticsFlag.isLink);
var _semanticsFlagIsTextField = MXFunctionInvoke(
    "SemanticsFlag.isTextField", () => SemanticsFlag.isTextField);
var _semanticsFlagIsReadOnly = MXFunctionInvoke(
    "SemanticsFlag.isReadOnly", () => SemanticsFlag.isReadOnly);
var _semanticsFlagIsFocusable = MXFunctionInvoke(
    "SemanticsFlag.isFocusable", () => SemanticsFlag.isFocusable);
var _semanticsFlagIsFocused =
    MXFunctionInvoke("SemanticsFlag.isFocused", () => SemanticsFlag.isFocused);
var _semanticsFlagHasEnabledState = MXFunctionInvoke(
    "SemanticsFlag.hasEnabledState", () => SemanticsFlag.hasEnabledState);
var _semanticsFlagIsEnabled =
    MXFunctionInvoke("SemanticsFlag.isEnabled", () => SemanticsFlag.isEnabled);
var _semanticsFlagIsInMutuallyExclusiveGroup = MXFunctionInvoke(
    "SemanticsFlag.isInMutuallyExclusiveGroup",
    () => SemanticsFlag.isInMutuallyExclusiveGroup);
var _semanticsFlagIsHeader =
    MXFunctionInvoke("SemanticsFlag.isHeader", () => SemanticsFlag.isHeader);
var _semanticsFlagIsObscured = MXFunctionInvoke(
    "SemanticsFlag.isObscured", () => SemanticsFlag.isObscured);
var _semanticsFlagScopesRoute = MXFunctionInvoke(
    "SemanticsFlag.scopesRoute", () => SemanticsFlag.scopesRoute);
var _semanticsFlagNamesRoute = MXFunctionInvoke(
    "SemanticsFlag.namesRoute", () => SemanticsFlag.namesRoute);
var _semanticsFlagIsHidden =
    MXFunctionInvoke("SemanticsFlag.isHidden", () => SemanticsFlag.isHidden);
var _semanticsFlagIsImage =
    MXFunctionInvoke("SemanticsFlag.isImage", () => SemanticsFlag.isImage);
var _semanticsFlagIsLiveRegion = MXFunctionInvoke(
    "SemanticsFlag.isLiveRegion", () => SemanticsFlag.isLiveRegion);
var _semanticsFlagHasToggledState = MXFunctionInvoke(
    "SemanticsFlag.hasToggledState", () => SemanticsFlag.hasToggledState);
var _semanticsFlagIsToggled =
    MXFunctionInvoke("SemanticsFlag.isToggled", () => SemanticsFlag.isToggled);
var _semanticsFlagHasImplicitScrolling = MXFunctionInvoke(
    "SemanticsFlag.hasImplicitScrolling",
    () => SemanticsFlag.hasImplicitScrolling);
var _semanticsFlagIsMultiline = MXFunctionInvoke(
    "SemanticsFlag.isMultiline", () => SemanticsFlag.isMultiline);
var _semanticsFlagValues =
    MXFunctionInvoke("SemanticsFlag.values", () => SemanticsFlag.values);
var _semanticsUpdateBuilder = MXFunctionInvoke(
  "SemanticsUpdateBuilder",
  () => SemanticsUpdateBuilder(),
  [],
);
var _fontStyle = MXFunctionInvoke(
    "FontStyle",
    ({String name, int index}) => MXFontStyle.parse(name, index),
    ["name", "index"]);
var _placeholderAlignment = MXFunctionInvoke(
    "PlaceholderAlignment",
    ({String name, int index}) => MXPlaceholderAlignment.parse(name, index),
    ["name", "index"]);
var _fontWeightW100 =
    MXFunctionInvoke("FontWeight.w100", () => FontWeight.w100);
var _fontWeightW200 =
    MXFunctionInvoke("FontWeight.w200", () => FontWeight.w200);
var _fontWeightW300 =
    MXFunctionInvoke("FontWeight.w300", () => FontWeight.w300);
var _fontWeightW400 =
    MXFunctionInvoke("FontWeight.w400", () => FontWeight.w400);
var _fontWeightW500 =
    MXFunctionInvoke("FontWeight.w500", () => FontWeight.w500);
var _fontWeightW600 =
    MXFunctionInvoke("FontWeight.w600", () => FontWeight.w600);
var _fontWeightW700 =
    MXFunctionInvoke("FontWeight.w700", () => FontWeight.w700);
var _fontWeightW800 =
    MXFunctionInvoke("FontWeight.w800", () => FontWeight.w800);
var _fontWeightW900 =
    MXFunctionInvoke("FontWeight.w900", () => FontWeight.w900);
var _fontWeightNormal =
    MXFunctionInvoke("FontWeight.normal", () => FontWeight.normal);
var _fontWeightBold =
    MXFunctionInvoke("FontWeight.bold", () => FontWeight.bold);
var _fontWeightValues =
    MXFunctionInvoke("FontWeight.values", () => FontWeight.values);
var _fontFeature = MXFunctionInvoke(
  "FontFeature",
  ({
    String feature,
    int value,
  }) =>
      FontFeature(
    feature,
    value,
  ),
  [
    "feature",
    "value",
  ],
);
var _fontFeatureStylisticSet = MXFunctionInvoke(
  "FontFeature.stylisticSet",
  ({
    int value,
  }) =>
      FontFeature.stylisticSet(
    value,
  ),
  [
    "value",
  ],
);
var _fontFeatureEnable = MXFunctionInvoke(
  "FontFeature.enable",
  ({
    String feature,
  }) =>
      FontFeature.enable(
    feature,
  ),
  [
    "feature",
  ],
);
var _fontFeatureDisable = MXFunctionInvoke(
  "FontFeature.disable",
  ({
    String feature,
  }) =>
      FontFeature.disable(
    feature,
  ),
  [
    "feature",
  ],
);
var _fontFeatureRandomize = MXFunctionInvoke(
  "FontFeature.randomize",
  () => FontFeature.randomize(),
  [],
);
var _fontFeatureSlashedZero = MXFunctionInvoke(
  "FontFeature.slashedZero",
  () => FontFeature.slashedZero(),
  [],
);
var _fontFeatureOldstyleFigures = MXFunctionInvoke(
  "FontFeature.oldstyleFigures",
  () => FontFeature.oldstyleFigures(),
  [],
);
var _fontFeatureProportionalFigures = MXFunctionInvoke(
  "FontFeature.proportionalFigures",
  () => FontFeature.proportionalFigures(),
  [],
);
var _fontFeatureTabularFigures = MXFunctionInvoke(
  "FontFeature.tabularFigures",
  () => FontFeature.tabularFigures(),
  [],
);
var _textAlign = MXFunctionInvoke(
    "TextAlign",
    ({String name, int index}) => MXTextAlign.parse(name, index),
    ["name", "index"]);
var _textBaseline = MXFunctionInvoke(
    "TextBaseline",
    ({String name, int index}) => MXTextBaseline.parse(name, index),
    ["name", "index"]);
var _textDecorationNone =
    MXFunctionInvoke("TextDecoration.none", () => TextDecoration.none);
var _textDecorationUnderline = MXFunctionInvoke(
    "TextDecoration.underline", () => TextDecoration.underline);
var _textDecorationOverline =
    MXFunctionInvoke("TextDecoration.overline", () => TextDecoration.overline);
var _textDecorationLineThrough = MXFunctionInvoke(
    "TextDecoration.lineThrough", () => TextDecoration.lineThrough);
var _textDecorationCombine = MXFunctionInvoke(
  "TextDecoration.combine",
  ({
    dynamic decorations,
  }) =>
      TextDecoration.combine(
    toListT<TextDecoration>(decorations),
  ),
  [
    "decorations",
  ],
);
var _textDecorationStyle = MXFunctionInvoke(
    "TextDecorationStyle",
    ({String name, int index}) => MXTextDecorationStyle.parse(name, index),
    ["name", "index"]);
var _textHeightBehavior = MXFunctionInvoke(
  "TextHeightBehavior",
  ({
    bool applyHeightToFirstAscent = true,
    bool applyHeightToLastDescent = true,
  }) =>
      TextHeightBehavior(
    applyHeightToFirstAscent: applyHeightToFirstAscent,
    applyHeightToLastDescent: applyHeightToLastDescent,
  ),
  [
    "applyHeightToFirstAscent",
    "applyHeightToLastDescent",
  ],
);
var _textHeightBehaviorFromEncoded = MXFunctionInvoke(
  "TextHeightBehavior.fromEncoded",
  ({
    int encoded,
  }) =>
      TextHeightBehavior.fromEncoded(
    encoded,
  ),
  [
    "encoded",
  ],
);
var _textStyle = MXFunctionInvoke(
  "TextStyle",
  ({
    Color color,
    TextDecoration decoration,
    Color decorationColor,
    TextDecorationStyle decorationStyle,
    dynamic decorationThickness,
    FontWeight fontWeight,
    FontStyle fontStyle,
    TextBaseline textBaseline,
    String fontFamily,
    dynamic fontFamilyFallback,
    dynamic fontSize,
    dynamic letterSpacing,
    dynamic wordSpacing,
    dynamic height,
    Locale locale,
    Paint background,
    Paint foreground,
    dynamic shadows,
    dynamic fontFeatures,
  }) =>
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
    fontFamilyFallback: toListT<String>(fontFamilyFallback),
    fontSize: fontSize?.toDouble(),
    letterSpacing: letterSpacing?.toDouble(),
    wordSpacing: wordSpacing?.toDouble(),
    height: height?.toDouble(),
    locale: locale,
    background: background,
    foreground: foreground,
    shadows: toListT<Shadow>(shadows),
    fontFeatures: toListT<FontFeature>(fontFeatures),
  ),
  [
    "color",
    "decoration",
    "decorationColor",
    "decorationStyle",
    "decorationThickness",
    "fontWeight",
    "fontStyle",
    "textBaseline",
    "fontFamily",
    "fontFamilyFallback",
    "fontSize",
    "letterSpacing",
    "wordSpacing",
    "height",
    "locale",
    "background",
    "foreground",
    "shadows",
    "fontFeatures",
  ],
);
var _paragraphStyle = MXFunctionInvoke(
  "ParagraphStyle",
  ({
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
  }) =>
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
  [
    "textAlign",
    "textDirection",
    "maxLines",
    "fontFamily",
    "fontSize",
    "height",
    "textHeightBehavior",
    "fontWeight",
    "fontStyle",
    "strutStyle",
    "ellipsis",
    "locale",
  ],
);
var _strutStyle = MXFunctionInvoke(
  "StrutStyle",
  ({
    String fontFamily,
    dynamic fontFamilyFallback,
    dynamic fontSize,
    dynamic height,
    dynamic leading,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool forceStrutHeight,
  }) =>
      StrutStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: toListT<String>(fontFamilyFallback),
    fontSize: fontSize?.toDouble(),
    height: height?.toDouble(),
    leading: leading?.toDouble(),
    fontWeight: fontWeight,
    fontStyle: fontStyle,
    forceStrutHeight: forceStrutHeight,
  ),
  [
    "fontFamily",
    "fontFamilyFallback",
    "fontSize",
    "height",
    "leading",
    "fontWeight",
    "fontStyle",
    "forceStrutHeight",
  ],
);
var _textDirection = MXFunctionInvoke(
    "TextDirection",
    ({String name, int index}) => MXTextDirection.parse(name, index),
    ["name", "index"]);
var _textBoxFromLTRBD = MXFunctionInvoke(
  "TextBox.fromLTRBD",
  ({
    dynamic left,
    dynamic top,
    dynamic right,
    dynamic bottom,
    TextDirection direction,
  }) =>
      TextBox.fromLTRBD(
    left?.toDouble(),
    top?.toDouble(),
    right?.toDouble(),
    bottom?.toDouble(),
    direction,
  ),
  [
    "left",
    "top",
    "right",
    "bottom",
    "direction",
  ],
);
var _textAffinity = MXFunctionInvoke(
    "TextAffinity",
    ({String name, int index}) => MXTextAffinity.parse(name, index),
    ["name", "index"]);
var _textPosition = MXFunctionInvoke(
  "TextPosition",
  ({
    int offset,
    TextAffinity affinity = TextAffinity.downstream,
  }) =>
      TextPosition(
    offset: offset,
    affinity: affinity,
  ),
  [
    "offset",
    "affinity",
  ],
);
var _textRange = MXFunctionInvoke(
  "TextRange",
  ({
    int start,
    int end,
  }) =>
      TextRange(
    start: start,
    end: end,
  ),
  [
    "start",
    "end",
  ],
);
var _textRangeEmpty =
    MXFunctionInvoke("TextRange.empty", () => TextRange.empty);
var _textRangeCollapsed = MXFunctionInvoke(
  "TextRange.collapsed",
  ({
    int offset,
  }) =>
      TextRange.collapsed(
    offset,
  ),
  [
    "offset",
  ],
);
var _paragraphConstraints = MXFunctionInvoke(
  "ParagraphConstraints",
  ({
    dynamic width,
  }) =>
      ParagraphConstraints(
    width: width?.toDouble(),
  ),
  [
    "width",
  ],
);
var _boxHeightStyle = MXFunctionInvoke(
    "BoxHeightStyle",
    ({String name, int index}) => MXBoxHeightStyle.parse(name, index),
    ["name", "index"]);
var _boxWidthStyle = MXFunctionInvoke(
    "BoxWidthStyle",
    ({String name, int index}) => MXBoxWidthStyle.parse(name, index),
    ["name", "index"]);
var _lineMetrics = MXFunctionInvoke(
  "LineMetrics",
  ({
    bool hardBreak,
    dynamic ascent,
    dynamic descent,
    dynamic unscaledAscent,
    dynamic height,
    dynamic width,
    dynamic left,
    dynamic baseline,
    int lineNumber,
  }) =>
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
  [
    "hardBreak",
    "ascent",
    "descent",
    "unscaledAscent",
    "height",
    "width",
    "left",
    "baseline",
    "lineNumber",
  ],
);
var _paragraphBuilder = MXFunctionInvoke(
  "ParagraphBuilder",
  ({
    ParagraphStyle style,
  }) =>
      ParagraphBuilder(
    style,
  ),
  [
    "style",
  ],
);
var _tileMode = MXFunctionInvoke(
    "TileMode",
    ({String name, int index}) => MXTileMode.parse(name, index),
    ["name", "index"]);
var _appLifecycleState = MXFunctionInvoke(
    "AppLifecycleState",
    ({String name, int index}) => MXAppLifecycleState.parse(name, index),
    ["name", "index"]);
var _windowPaddingZero =
    MXFunctionInvoke("WindowPadding.zero", () => WindowPadding.zero);
var _locale = MXFunctionInvoke(
  "Locale",
  ({
    String languageCode,
    String countryCode,
  }) =>
      Locale(
    languageCode,
    countryCode,
  ),
  [
    "languageCode",
    "countryCode",
  ],
);
var _localeFromSubtags = MXFunctionInvoke(
  "Locale.fromSubtags",
  ({
    String languageCode = 'und',
    String scriptCode,
    String countryCode,
  }) =>
      Locale.fromSubtags(
    languageCode: languageCode,
    scriptCode: scriptCode,
    countryCode: countryCode,
  ),
  [
    "languageCode",
    "scriptCode",
    "countryCode",
  ],
);
var _brightness = MXFunctionInvoke(
    "Brightness",
    ({String name, int index}) => MXBrightness.parse(name, index),
    ["name", "index"]);
var _callbackHandleFromRawHandle = MXFunctionInvoke(
  "CallbackHandle.fromRawHandle",
  ({
    int handle,
  }) =>
      CallbackHandle.fromRawHandle(
    handle,
  ),
  [
    "handle",
  ],
);
var _pluginUtilities = MXFunctionInvoke(
  "PluginUtilities",
  () => PluginUtilities(),
  [],
);
var _imageShader = MXFunctionInvoke(
  "ImageShader",
  ({
    Image image,
    TileMode tmx,
    TileMode tmy,
    Float64List matrix4,
  }) =>
      ImageShader(
    image,
    tmx,
    tmy,
    matrix4,
  ),
  [
    "image",
    "tmx",
    "tmy",
    "matrix4",
  ],
);
var _isolateNameServer = MXFunctionInvoke(
  "IsolateNameServer",
  () => IsolateNameServer(),
  [],
);
var _framePhase = MXFunctionInvoke(
    "FramePhase",
    ({String name, int index}) => MXFramePhase.parse(name, index),
    ["name", "index"]);
var _frameTiming = MXFunctionInvoke(
  "FrameTiming",
  ({
    dynamic timestamps,
  }) =>
      FrameTiming(
    toListT<int>(timestamps),
  ),
  [
    "timestamps",
  ],
);
var _deprecated = MXFunctionInvoke(
  "Deprecated",
  ({
    String message,
  }) =>
      Deprecated(
    message,
  ),
  [
    "message",
  ],
);
var _provisional = MXFunctionInvoke(
  "Provisional",
  ({
    String message,
  }) =>
      Provisional(
    message: message,
  ),
  [
    "message",
  ],
);
var _pragma = MXFunctionInvoke(
  "pragma",
  ({
    String name,
    Object options,
  }) =>
      pragma(
    name,
    options,
  ),
  [
    "name",
    "options",
  ],
);
var _bigIntFrom = MXFunctionInvoke(
  "BigInt.from",
  ({
    num value,
  }) =>
      BigInt.from(
    value,
  ),
  [
    "value",
  ],
);
var _boolFromEnvironment = MXFunctionInvoke(
  "bool.fromEnvironment",
  ({
    String name,
    bool defaultValue = false,
  }) =>
      bool.fromEnvironment(
    name,
    defaultValue: defaultValue,
  ),
  [
    "name",
    "defaultValue",
  ],
);
var _boolHasEnvironment = MXFunctionInvoke(
  "bool.hasEnvironment",
  ({
    String name,
  }) =>
      bool.hasEnvironment(
    name,
  ),
  [
    "name",
  ],
);
var _dateTime = MXFunctionInvoke(
  "DateTime",
  ({
    int year,
    int month,
    int day,
    int hour,
    int minute,
    int second,
    int millisecond,
    int microsecond,
  }) =>
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
  [
    "year",
    "month",
    "day",
    "hour",
    "minute",
    "second",
    "millisecond",
    "microsecond",
  ],
);
var _dateTimeMonday =
    MXFunctionInvoke("DateTime.monday", () => DateTime.monday);
var _dateTimeTuesday =
    MXFunctionInvoke("DateTime.tuesday", () => DateTime.tuesday);
var _dateTimeWednesday =
    MXFunctionInvoke("DateTime.wednesday", () => DateTime.wednesday);
var _dateTimeThursday =
    MXFunctionInvoke("DateTime.thursday", () => DateTime.thursday);
var _dateTimeFriday =
    MXFunctionInvoke("DateTime.friday", () => DateTime.friday);
var _dateTimeSaturday =
    MXFunctionInvoke("DateTime.saturday", () => DateTime.saturday);
var _dateTimeSunday =
    MXFunctionInvoke("DateTime.sunday", () => DateTime.sunday);
var _dateTimeDaysPerWeek =
    MXFunctionInvoke("DateTime.daysPerWeek", () => DateTime.daysPerWeek);
var _dateTimeJanuary =
    MXFunctionInvoke("DateTime.january", () => DateTime.january);
var _dateTimeFebruary =
    MXFunctionInvoke("DateTime.february", () => DateTime.february);
var _dateTimeMarch = MXFunctionInvoke("DateTime.march", () => DateTime.march);
var _dateTimeApril = MXFunctionInvoke("DateTime.april", () => DateTime.april);
var _dateTimeMay = MXFunctionInvoke("DateTime.may", () => DateTime.may);
var _dateTimeJune = MXFunctionInvoke("DateTime.june", () => DateTime.june);
var _dateTimeJuly = MXFunctionInvoke("DateTime.july", () => DateTime.july);
var _dateTimeAugust =
    MXFunctionInvoke("DateTime.august", () => DateTime.august);
var _dateTimeSeptember =
    MXFunctionInvoke("DateTime.september", () => DateTime.september);
var _dateTimeOctober =
    MXFunctionInvoke("DateTime.october", () => DateTime.october);
var _dateTimeNovember =
    MXFunctionInvoke("DateTime.november", () => DateTime.november);
var _dateTimeDecember =
    MXFunctionInvoke("DateTime.december", () => DateTime.december);
var _dateTimeMonthsPerYear =
    MXFunctionInvoke("DateTime.monthsPerYear", () => DateTime.monthsPerYear);
var _dateTimeUtc = MXFunctionInvoke(
  "DateTime.utc",
  ({
    int year,
    int month,
    int day,
    int hour,
    int minute,
    int second,
    int millisecond,
    int microsecond,
  }) =>
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
  [
    "year",
    "month",
    "day",
    "hour",
    "minute",
    "second",
    "millisecond",
    "microsecond",
  ],
);
var _dateTimeNow = MXFunctionInvoke(
  "DateTime.now",
  () => DateTime.now(),
  [],
);
var _dateTimeFromMillisecondsSinceEpoch = MXFunctionInvoke(
  "DateTime.fromMillisecondsSinceEpoch",
  ({
    int millisecondsSinceEpoch,
    bool isUtc = false,
  }) =>
      DateTime.fromMillisecondsSinceEpoch(
    millisecondsSinceEpoch,
    isUtc: isUtc,
  ),
  [
    "millisecondsSinceEpoch",
    "isUtc",
  ],
);
var _dateTimeFromMicrosecondsSinceEpoch = MXFunctionInvoke(
  "DateTime.fromMicrosecondsSinceEpoch",
  ({
    int microsecondsSinceEpoch,
    bool isUtc = false,
  }) =>
      DateTime.fromMicrosecondsSinceEpoch(
    microsecondsSinceEpoch,
    isUtc: isUtc,
  ),
  [
    "microsecondsSinceEpoch",
    "isUtc",
  ],
);
var _doubleNan = MXFunctionInvoke("double.nan", () => double.nan);
var _doubleInfinity =
    MXFunctionInvoke("double.infinity", () => double.infinity);
var _doubleNegativeInfinity =
    MXFunctionInvoke("double.negativeInfinity", () => double.negativeInfinity);
var _doubleMinPositive =
    MXFunctionInvoke("double.minPositive", () => double.minPositive);
var _doubleMaxFinite =
    MXFunctionInvoke("double.maxFinite", () => double.maxFinite);
var _duration = MXFunctionInvoke(
  "Duration",
  ({
    int days = 0,
    int hours = 0,
    int minutes = 0,
    int seconds = 0,
    int milliseconds = 0,
    int microseconds = 0,
  }) =>
      Duration(
    days: days,
    hours: hours,
    minutes: minutes,
    seconds: seconds,
    milliseconds: milliseconds,
    microseconds: microseconds,
  ),
  [
    "days",
    "hours",
    "minutes",
    "seconds",
    "milliseconds",
    "microseconds",
  ],
);
var _durationMicrosecondsPerMillisecond = MXFunctionInvoke(
    "Duration.microsecondsPerMillisecond",
    () => Duration.microsecondsPerMillisecond);
var _durationMillisecondsPerSecond = MXFunctionInvoke(
    "Duration.millisecondsPerSecond", () => Duration.millisecondsPerSecond);
var _durationSecondsPerMinute = MXFunctionInvoke(
    "Duration.secondsPerMinute", () => Duration.secondsPerMinute);
var _durationMinutesPerHour =
    MXFunctionInvoke("Duration.minutesPerHour", () => Duration.minutesPerHour);
var _durationHoursPerDay =
    MXFunctionInvoke("Duration.hoursPerDay", () => Duration.hoursPerDay);
var _durationMicrosecondsPerSecond = MXFunctionInvoke(
    "Duration.microsecondsPerSecond", () => Duration.microsecondsPerSecond);
var _durationMicrosecondsPerMinute = MXFunctionInvoke(
    "Duration.microsecondsPerMinute", () => Duration.microsecondsPerMinute);
var _durationMicrosecondsPerHour = MXFunctionInvoke(
    "Duration.microsecondsPerHour", () => Duration.microsecondsPerHour);
var _durationMicrosecondsPerDay = MXFunctionInvoke(
    "Duration.microsecondsPerDay", () => Duration.microsecondsPerDay);
var _durationMillisecondsPerMinute = MXFunctionInvoke(
    "Duration.millisecondsPerMinute", () => Duration.millisecondsPerMinute);
var _durationMillisecondsPerHour = MXFunctionInvoke(
    "Duration.millisecondsPerHour", () => Duration.millisecondsPerHour);
var _durationMillisecondsPerDay = MXFunctionInvoke(
    "Duration.millisecondsPerDay", () => Duration.millisecondsPerDay);
var _durationSecondsPerHour =
    MXFunctionInvoke("Duration.secondsPerHour", () => Duration.secondsPerHour);
var _durationSecondsPerDay =
    MXFunctionInvoke("Duration.secondsPerDay", () => Duration.secondsPerDay);
var _durationMinutesPerDay =
    MXFunctionInvoke("Duration.minutesPerDay", () => Duration.minutesPerDay);
var _durationZero = MXFunctionInvoke("Duration.zero", () => Duration.zero);
var _error = MXFunctionInvoke(
  "Error",
  () => Error(),
  [],
);
var _assertionError = MXFunctionInvoke(
  "AssertionError",
  ({
    Object message,
  }) =>
      AssertionError(
    message,
  ),
  [
    "message",
  ],
);
var _typeError = MXFunctionInvoke(
  "TypeError",
  () => TypeError(),
  [],
);
var _castError = MXFunctionInvoke(
  "CastError",
  () => CastError(),
  [],
);
var _nullThrownError = MXFunctionInvoke(
  "NullThrownError",
  () => NullThrownError(),
  [],
);
var _argumentError = MXFunctionInvoke(
  "ArgumentError",
  ({
    dynamic message,
  }) =>
      ArgumentError(
    message,
  ),
  [
    "message",
  ],
);
var _argumentErrorValue = MXFunctionInvoke(
  "ArgumentError.value",
  ({
    dynamic value,
    String name,
    dynamic message,
  }) =>
      ArgumentError.value(
    value,
    name,
    message,
  ),
  [
    "value",
    "name",
    "message",
  ],
);
var _argumentErrorNotNull = MXFunctionInvoke(
  "ArgumentError.notNull",
  ({
    String name,
  }) =>
      ArgumentError.notNull(
    name,
  ),
  [
    "name",
  ],
);
var _rangeError = MXFunctionInvoke(
  "RangeError",
  ({
    dynamic message,
  }) =>
      RangeError(
    message,
  ),
  [
    "message",
  ],
);
var _rangeErrorIndex = MXFunctionInvoke(
  "RangeError.index",
  ({
    int index,
    dynamic indexable,
    String name,
    String message,
    int length,
  }) =>
      RangeError.index(
    index,
    indexable,
    name,
    message,
    length,
  ),
  [
    "index",
    "indexable",
    "name",
    "message",
    "length",
  ],
);
var _rangeErrorValue = MXFunctionInvoke(
  "RangeError.value",
  ({
    num value,
    String name,
    String message,
  }) =>
      RangeError.value(
    value,
    name,
    message,
  ),
  [
    "value",
    "name",
    "message",
  ],
);
var _rangeErrorRange = MXFunctionInvoke(
  "RangeError.range",
  ({
    num invalidValue,
    int minValue,
    int maxValue,
    String name,
    String message,
  }) =>
      RangeError.range(
    invalidValue,
    minValue,
    maxValue,
    name,
    message,
  ),
  [
    "invalidValue",
    "minValue",
    "maxValue",
    "name",
    "message",
  ],
);
var _indexError = MXFunctionInvoke(
  "IndexError",
  ({
    int invalidValue,
    dynamic indexable,
    String name,
    String message,
    int length,
  }) =>
      IndexError(
    invalidValue,
    indexable,
    name,
    message,
    length,
  ),
  [
    "invalidValue",
    "indexable",
    "name",
    "message",
    "length",
  ],
);
var _fallThroughError = MXFunctionInvoke(
  "FallThroughError",
  () => FallThroughError(),
  [],
);
var _abstractClassInstantiationError = MXFunctionInvoke(
  "AbstractClassInstantiationError",
  ({
    String className,
  }) =>
      AbstractClassInstantiationError(
    className,
  ),
  [
    "className",
  ],
);
var _noSuchMethodError = MXFunctionInvoke(
  "NoSuchMethodError",
  ({
    Object receiver,
    Symbol memberName,
    dynamic positionalArguments,
    dynamic namedArguments,
    dynamic existingArgumentNames,
  }) =>
      NoSuchMethodError(
    receiver,
    memberName,
    toListT<dynamic>(positionalArguments),
    toMapT<Symbol, dynamic>(namedArguments),
    toListT<dynamic>(existingArgumentNames),
  ),
  [
    "receiver",
    "memberName",
    "positionalArguments",
    "namedArguments",
    "existingArgumentNames",
  ],
);
var _noSuchMethodErrorWithInvocation = MXFunctionInvoke(
  "NoSuchMethodError.withInvocation",
  ({
    Object receiver,
    Invocation invocation,
  }) =>
      NoSuchMethodError.withInvocation(
    receiver,
    invocation,
  ),
  [
    "receiver",
    "invocation",
  ],
);
var _unsupportedError = MXFunctionInvoke(
  "UnsupportedError",
  ({
    String message,
  }) =>
      UnsupportedError(
    message,
  ),
  [
    "message",
  ],
);
var _unimplementedError = MXFunctionInvoke(
  "UnimplementedError",
  ({
    String message,
  }) =>
      UnimplementedError(
    message,
  ),
  [
    "message",
  ],
);
var _stateError = MXFunctionInvoke(
  "StateError",
  ({
    String message,
  }) =>
      StateError(
    message,
  ),
  [
    "message",
  ],
);
var _concurrentModificationError = MXFunctionInvoke(
  "ConcurrentModificationError",
  ({
    Object modifiedObject,
  }) =>
      ConcurrentModificationError(
    modifiedObject,
  ),
  [
    "modifiedObject",
  ],
);
var _outOfMemoryError = MXFunctionInvoke(
  "OutOfMemoryError",
  () => OutOfMemoryError(),
  [],
);
var _stackOverflowError = MXFunctionInvoke(
  "StackOverflowError",
  () => StackOverflowError(),
  [],
);
var _cyclicInitializationError = MXFunctionInvoke(
  "CyclicInitializationError",
  ({
    String variableName,
  }) =>
      CyclicInitializationError(
    variableName,
  ),
  [
    "variableName",
  ],
);
var _exception = MXFunctionInvoke(
  "Exception",
  ({
    dynamic message,
  }) =>
      Exception(
    message,
  ),
  [
    "message",
  ],
);
var _formatException = MXFunctionInvoke(
  "FormatException",
  ({
    String message,
    dynamic source,
    int offset,
  }) =>
      FormatException(
    message,
    source,
    offset,
  ),
  [
    "message",
    "source",
    "offset",
  ],
);
var _integerDivisionByZeroException = MXFunctionInvoke(
  "IntegerDivisionByZeroException",
  () => IntegerDivisionByZeroException(),
  [],
);
var _expando = MXFunctionInvoke(
  "Expando",
  ({
    String name,
  }) =>
      Expando(
    name,
  ),
  [
    "name",
  ],
);
var _intFromEnvironment = MXFunctionInvoke(
  "int.fromEnvironment",
  ({
    String name,
    int defaultValue = 0,
  }) =>
      int.fromEnvironment(
    name,
    defaultValue: defaultValue,
  ),
  [
    "name",
    "defaultValue",
  ],
);
var _invocationMethod = MXFunctionInvoke(
  "Invocation.method",
  ({
    Symbol memberName,
    Iterable<Object> positionalArguments,
    dynamic namedArguments,
  }) =>
      Invocation.method(
    memberName,
    positionalArguments,
    toMapT<Symbol, Object>(namedArguments),
  ),
  [
    "memberName",
    "positionalArguments",
    "namedArguments",
  ],
);
var _invocationGenericMethod = MXFunctionInvoke(
  "Invocation.genericMethod",
  ({
    Symbol memberName,
    Iterable<Type> typeArguments,
    Iterable<Object> positionalArguments,
    dynamic namedArguments,
  }) =>
      Invocation.genericMethod(
    memberName,
    typeArguments,
    positionalArguments,
    toMapT<Symbol, Object>(namedArguments),
  ),
  [
    "memberName",
    "typeArguments",
    "positionalArguments",
    "namedArguments",
  ],
);
var _invocationGetter = MXFunctionInvoke(
  "Invocation.getter",
  ({
    Symbol name,
  }) =>
      Invocation.getter(
    name,
  ),
  [
    "name",
  ],
);
var _invocationSetter = MXFunctionInvoke(
  "Invocation.setter",
  ({
    Symbol memberName,
    Object argument,
  }) =>
      Invocation.setter(
    memberName,
    argument,
  ),
  [
    "memberName",
    "argument",
  ],
);
var _iterableGenerate = MXFunctionInvoke(
  "Iterable.generate",
  ({
    int count,
    dynamic generator,
  }) =>
      Iterable.generate(
    count,
    null,
  ),
  [
    "count",
    "generator",
  ],
);
var _iterableEmpty = MXFunctionInvoke(
  "Iterable.empty",
  () => Iterable.empty(),
  [],
);
var _list = MXFunctionInvoke(
  "List",
  ({
    int length,
  }) =>
      List(
    length,
  ),
  [
    "length",
  ],
);
var _listFilled = MXFunctionInvoke(
  "List.filled",
  ({
    int length,
    dynamic fill,
    bool growable = false,
  }) =>
      List.filled(
    length,
    fill,
    growable: growable,
  ),
  [
    "length",
    "fill",
    "growable",
  ],
);
var _listFrom = MXFunctionInvoke(
  "List.from",
  ({
    Iterable<dynamic> elements,
    bool growable = true,
  }) =>
      List.from(
    elements,
    growable: growable,
  ),
  [
    "elements",
    "growable",
  ],
);
var _listOf = MXFunctionInvoke(
  "List.of",
  ({
    Iterable<dynamic> elements,
    bool growable = true,
  }) =>
      List.of(
    elements,
    growable: growable,
  ),
  [
    "elements",
    "growable",
  ],
);
var _listGenerate = MXFunctionInvoke(
  "List.generate",
  ({
    int length,
    dynamic generator,
    bool growable = true,
  }) =>
      List.generate(
    length,
    null,
    growable: growable,
  ),
  [
    "length",
    "generator",
    "growable",
  ],
);
var _listUnmodifiable = MXFunctionInvoke(
  "List.unmodifiable",
  ({
    Iterable<dynamic> elements,
  }) =>
      List.unmodifiable(
    elements,
  ),
  [
    "elements",
  ],
);
var _listCopyRange = MXFunctionInvoke(
  "List.copyRange",
  ({
    dynamic target,
    int at,
    dynamic source,
    int start,
    int end,
  }) =>
      List.copyRange(
    toListT<dynamic>(target),
    at,
    toListT<dynamic>(source),
    start,
    end,
  ),
  [
    "target",
    "at",
    "source",
    "start",
    "end",
  ],
);
var _listWriteIterable = MXFunctionInvoke(
  "List.writeIterable",
  ({
    dynamic target,
    int at,
    Iterable<dynamic> source,
  }) =>
      List.writeIterable(
    toListT<dynamic>(target),
    at,
    source,
  ),
  [
    "target",
    "at",
    "source",
  ],
);
var _map = MXFunctionInvoke(
  "Map",
  () => Map(),
  [],
);
var _mapFrom = MXFunctionInvoke(
  "Map.from",
  ({
    dynamic other,
  }) =>
      Map.from(
    toMapT<dynamic, dynamic>(other),
  ),
  [
    "other",
  ],
);
var _mapOf = MXFunctionInvoke(
  "Map.of",
  ({
    dynamic other,
  }) =>
      Map.of(
    toMapT<dynamic, dynamic>(other),
  ),
  [
    "other",
  ],
);
var _mapUnmodifiable = MXFunctionInvoke(
  "Map.unmodifiable",
  ({
    dynamic other,
  }) =>
      Map.unmodifiable(
    toMapT<dynamic, dynamic>(other),
  ),
  [
    "other",
  ],
);
var _mapIdentity = MXFunctionInvoke(
  "Map.identity",
  () => Map.identity(),
  [],
);
var _mapFromIterable = MXFunctionInvoke(
  "Map.fromIterable",
  ({
    Iterable<dynamic> iterable,
    dynamic key,
    dynamic value,
  }) =>
      Map.fromIterable(
    iterable,
    key: null,
    value: null,
  ),
  [
    "iterable",
    "key",
    "value",
  ],
);
var _mapFromIterables = MXFunctionInvoke(
  "Map.fromIterables",
  ({
    Iterable<dynamic> keys,
    Iterable<dynamic> values,
  }) =>
      Map.fromIterables(
    keys,
    values,
  ),
  [
    "keys",
    "values",
  ],
);
var _mapFromEntries = MXFunctionInvoke(
  "Map.fromEntries",
  ({
    Iterable<MapEntry<dynamic, dynamic>> entries,
  }) =>
      Map.fromEntries(
    entries,
  ),
  [
    "entries",
  ],
);
var _mapEntry = MXFunctionInvoke(
  "MapEntry",
  ({
    dynamic key,
    dynamic value,
  }) =>
      MapEntry(
    key,
    value,
  ),
  [
    "key",
    "value",
  ],
);
var _regExp = MXFunctionInvoke(
  "RegExp",
  ({
    String source,
    bool multiLine = false,
    bool caseSensitive = true,
    bool unicode = false,
    bool dotAll = false,
  }) =>
      RegExp(
    source,
    multiLine: multiLine,
    caseSensitive: caseSensitive,
    unicode: unicode,
    dotAll: dotAll,
  ),
  [
    "source",
    "multiLine",
    "caseSensitive",
    "unicode",
    "dotAll",
  ],
);
var _set = MXFunctionInvoke(
  "Set",
  () => Set(),
  [],
);
var _setIdentity = MXFunctionInvoke(
  "Set.identity",
  () => Set.identity(),
  [],
);
var _setFrom = MXFunctionInvoke(
  "Set.from",
  ({
    Iterable<dynamic> elements,
  }) =>
      Set.from(
    elements,
  ),
  [
    "elements",
  ],
);
var _setOf = MXFunctionInvoke(
  "Set.of",
  ({
    Iterable<dynamic> elements,
  }) =>
      Set.of(
    elements,
  ),
  [
    "elements",
  ],
);
var _stackTraceEmpty =
    MXFunctionInvoke("StackTrace.empty", () => StackTrace.empty);
var _stackTraceFromString = MXFunctionInvoke(
  "StackTrace.fromString",
  ({
    String stackTraceString,
  }) =>
      StackTrace.fromString(
    stackTraceString,
  ),
  [
    "stackTraceString",
  ],
);
var _stopwatch = MXFunctionInvoke(
  "Stopwatch",
  () => Stopwatch(),
  [],
);
var _stringFromCharCodes = MXFunctionInvoke(
  "String.fromCharCodes",
  ({
    Iterable<int> charCodes,
    int start,
    int end,
  }) =>
      String.fromCharCodes(
    charCodes,
    start,
    end,
  ),
  [
    "charCodes",
    "start",
    "end",
  ],
);
var _stringFromCharCode = MXFunctionInvoke(
  "String.fromCharCode",
  ({
    int charCode,
  }) =>
      String.fromCharCode(
    charCode,
  ),
  [
    "charCode",
  ],
);
var _stringFromEnvironment = MXFunctionInvoke(
  "String.fromEnvironment",
  ({
    String name,
    String defaultValue = '',
  }) =>
      String.fromEnvironment(
    name,
    defaultValue: defaultValue,
  ),
  [
    "name",
    "defaultValue",
  ],
);
var _runes = MXFunctionInvoke(
  "Runes",
  ({
    String string,
  }) =>
      Runes(
    string,
  ),
  [
    "string",
  ],
);
var _runeIterator = MXFunctionInvoke(
  "RuneIterator",
  ({
    String string,
  }) =>
      RuneIterator(
    string,
  ),
  [
    "string",
  ],
);
var _runeIteratorAt = MXFunctionInvoke(
  "RuneIterator.at",
  ({
    String string,
    int index,
  }) =>
      RuneIterator.at(
    string,
    index,
  ),
  [
    "string",
    "index",
  ],
);
var _stringBuffer = MXFunctionInvoke(
  "StringBuffer",
  ({
    Object content,
  }) =>
      StringBuffer(
    content,
  ),
  [
    "content",
  ],
);
var _symbolUnaryMinus =
    MXFunctionInvoke("Symbol.unaryMinus", () => Symbol.unaryMinus);
var _symbolEmpty = MXFunctionInvoke("Symbol.empty", () => Symbol.empty);
var _symbol = MXFunctionInvoke(
  "Symbol",
  ({
    String name,
  }) =>
      Symbol(
    name,
  ),
  [
    "name",
  ],
);
var _uri = MXFunctionInvoke(
  "Uri",
  ({
    String scheme,
    String userInfo,
    String host,
    int port,
    String path,
    Iterable<String> pathSegments,
    String query,
    dynamic queryParameters,
    String fragment,
  }) =>
      Uri(
    scheme: scheme,
    userInfo: userInfo,
    host: host,
    port: port,
    path: path,
    pathSegments: pathSegments,
    query: query,
    queryParameters: toMapT<String, dynamic>(queryParameters),
    fragment: fragment,
  ),
  [
    "scheme",
    "userInfo",
    "host",
    "port",
    "path",
    "pathSegments",
    "query",
    "queryParameters",
    "fragment",
  ],
);
var _uriHttp = MXFunctionInvoke(
  "Uri.http",
  ({
    String authority,
    String unencodedPath,
    dynamic queryParameters,
  }) =>
      Uri.http(
    authority,
    unencodedPath,
    toMapT<String, String>(queryParameters),
  ),
  [
    "authority",
    "unencodedPath",
    "queryParameters",
  ],
);
var _uriHttps = MXFunctionInvoke(
  "Uri.https",
  ({
    String authority,
    String unencodedPath,
    dynamic queryParameters,
  }) =>
      Uri.https(
    authority,
    unencodedPath,
    toMapT<String, String>(queryParameters),
  ),
  [
    "authority",
    "unencodedPath",
    "queryParameters",
  ],
);
var _uriFile = MXFunctionInvoke(
  "Uri.file",
  ({
    String path,
    bool windows,
  }) =>
      Uri.file(
    path,
    windows: windows,
  ),
  [
    "path",
    "windows",
  ],
);
var _uriDirectory = MXFunctionInvoke(
  "Uri.directory",
  ({
    String path,
    bool windows,
  }) =>
      Uri.directory(
    path,
    windows: windows,
  ),
  [
    "path",
    "windows",
  ],
);
var _uriDataFromString = MXFunctionInvoke(
  "Uri.dataFromString",
  ({
    String content,
    String mimeType,
    Encoding encoding,
    dynamic parameters,
    bool base64 = false,
  }) =>
      Uri.dataFromString(
    content,
    mimeType: mimeType,
    encoding: encoding,
    parameters: toMapT<String, String>(parameters),
    base64: base64,
  ),
  [
    "content",
    "mimeType",
    "encoding",
    "parameters",
    "base64",
  ],
);
var _uriDataFromBytes = MXFunctionInvoke(
  "Uri.dataFromBytes",
  ({
    dynamic bytes,
    dynamic mimeType = 'application/octet-stream',
    dynamic parameters,
    dynamic percentEncoded = false,
  }) =>
      Uri.dataFromBytes(
    toListT<int>(bytes),
    mimeType: mimeType,
    parameters: toMapT<String, String>(parameters),
    percentEncoded: percentEncoded,
  ),
  [
    "bytes",
    "mimeType",
    "parameters",
    "percentEncoded",
  ],
);
var _uriDataFromString = MXFunctionInvoke(
  "UriData.fromString",
  ({
    String content,
    String mimeType,
    Encoding encoding,
    dynamic parameters,
    bool base64 = false,
  }) =>
      UriData.fromString(
    content,
    mimeType: mimeType,
    encoding: encoding,
    parameters: toMapT<String, String>(parameters),
    base64: base64,
  ),
  [
    "content",
    "mimeType",
    "encoding",
    "parameters",
    "base64",
  ],
);
var _uriDataFromBytes = MXFunctionInvoke(
  "UriData.fromBytes",
  ({
    dynamic bytes,
    dynamic mimeType = 'application/octet-stream',
    dynamic parameters,
    dynamic percentEncoded = false,
  }) =>
      UriData.fromBytes(
    toListT<int>(bytes),
    mimeType: mimeType,
    parameters: toMapT<String, String>(parameters),
    percentEncoded: percentEncoded,
  ),
  [
    "bytes",
    "mimeType",
    "parameters",
    "percentEncoded",
  ],
);
var _uriDataFromUri = MXFunctionInvoke(
  "UriData.fromUri",
  ({
    Uri uri,
  }) =>
      UriData.fromUri(
    uri,
  ),
  [
    "uri",
  ],
);

class MXPointMode {
  static PointMode parse(String name, int index) {
    switch (name) {
      case 'PointMode.points':
        return PointMode.points;
      case 'PointMode.lines':
        return PointMode.lines;
      case 'PointMode.polygon':
        return PointMode.polygon;
    }
    return null;
  }
}

class MXClipOp {
  static ClipOp parse(String name, int index) {
    switch (name) {
      case 'ClipOp.difference':
        return ClipOp.difference;
      case 'ClipOp.intersect':
        return ClipOp.intersect;
    }
    return null;
  }
}

class MXVertexMode {
  static VertexMode parse(String name, int index) {
    switch (name) {
      case 'VertexMode.triangles':
        return VertexMode.triangles;
      case 'VertexMode.triangleStrip':
        return VertexMode.triangleStrip;
      case 'VertexMode.triangleFan':
        return VertexMode.triangleFan;
    }
    return null;
  }
}

class MXPathFillType {
  static PathFillType parse(String name, int index) {
    switch (name) {
      case 'PathFillType.nonZero':
        return PathFillType.nonZero;
      case 'PathFillType.evenOdd':
        return PathFillType.evenOdd;
    }
    return null;
  }
}

class MXPathOperation {
  static PathOperation parse(String name, int index) {
    switch (name) {
      case 'PathOperation.difference':
        return PathOperation.difference;
      case 'PathOperation.intersect':
        return PathOperation.intersect;
      case 'PathOperation.union':
        return PathOperation.union;
      case 'PathOperation.xor':
        return PathOperation.xor;
      case 'PathOperation.reverseDifference':
        return PathOperation.reverseDifference;
    }
    return null;
  }
}

class MXStrokeCap {
  static StrokeCap parse(String name, int index) {
    switch (name) {
      case 'StrokeCap.butt':
        return StrokeCap.butt;
      case 'StrokeCap.round':
        return StrokeCap.round;
      case 'StrokeCap.square':
        return StrokeCap.square;
    }
    return null;
  }
}

class MXStrokeJoin {
  static StrokeJoin parse(String name, int index) {
    switch (name) {
      case 'StrokeJoin.miter':
        return StrokeJoin.miter;
      case 'StrokeJoin.round':
        return StrokeJoin.round;
      case 'StrokeJoin.bevel':
        return StrokeJoin.bevel;
    }
    return null;
  }
}

class MXPaintingStyle {
  static PaintingStyle parse(String name, int index) {
    switch (name) {
      case 'PaintingStyle.fill':
        return PaintingStyle.fill;
      case 'PaintingStyle.stroke':
        return PaintingStyle.stroke;
    }
    return null;
  }
}

class MXBlendMode {
  static BlendMode parse(String name, int index) {
    switch (name) {
      case 'BlendMode.clear':
        return BlendMode.clear;
      case 'BlendMode.src':
        return BlendMode.src;
      case 'BlendMode.dst':
        return BlendMode.dst;
      case 'BlendMode.srcOver':
        return BlendMode.srcOver;
      case 'BlendMode.dstOver':
        return BlendMode.dstOver;
      case 'BlendMode.srcIn':
        return BlendMode.srcIn;
      case 'BlendMode.dstIn':
        return BlendMode.dstIn;
      case 'BlendMode.srcOut':
        return BlendMode.srcOut;
      case 'BlendMode.dstOut':
        return BlendMode.dstOut;
      case 'BlendMode.srcATop':
        return BlendMode.srcATop;
      case 'BlendMode.dstATop':
        return BlendMode.dstATop;
      case 'BlendMode.xor':
        return BlendMode.xor;
      case 'BlendMode.plus':
        return BlendMode.plus;
      case 'BlendMode.modulate':
        return BlendMode.modulate;
      case 'BlendMode.screen':
        return BlendMode.screen;
      case 'BlendMode.overlay':
        return BlendMode.overlay;
      case 'BlendMode.darken':
        return BlendMode.darken;
      case 'BlendMode.lighten':
        return BlendMode.lighten;
      case 'BlendMode.colorDodge':
        return BlendMode.colorDodge;
      case 'BlendMode.colorBurn':
        return BlendMode.colorBurn;
      case 'BlendMode.hardLight':
        return BlendMode.hardLight;
      case 'BlendMode.softLight':
        return BlendMode.softLight;
      case 'BlendMode.difference':
        return BlendMode.difference;
      case 'BlendMode.exclusion':
        return BlendMode.exclusion;
      case 'BlendMode.multiply':
        return BlendMode.multiply;
      case 'BlendMode.hue':
        return BlendMode.hue;
      case 'BlendMode.saturation':
        return BlendMode.saturation;
      case 'BlendMode.color':
        return BlendMode.color;
      case 'BlendMode.luminosity':
        return BlendMode.luminosity;
    }
    return null;
  }
}

class MXClip {
  static Clip parse(String name, int index) {
    switch (name) {
      case 'Clip.none':
        return Clip.none;
      case 'Clip.hardEdge':
        return Clip.hardEdge;
      case 'Clip.antiAlias':
        return Clip.antiAlias;
      case 'Clip.antiAliasWithSaveLayer':
        return Clip.antiAliasWithSaveLayer;
    }
    return null;
  }
}

class MXBlurStyle {
  static BlurStyle parse(String name, int index) {
    switch (name) {
      case 'BlurStyle.normal':
        return BlurStyle.normal;
      case 'BlurStyle.solid':
        return BlurStyle.solid;
      case 'BlurStyle.outer':
        return BlurStyle.outer;
      case 'BlurStyle.inner':
        return BlurStyle.inner;
    }
    return null;
  }
}

class MXFilterQuality {
  static FilterQuality parse(String name, int index) {
    switch (name) {
      case 'FilterQuality.none':
        return FilterQuality.none;
      case 'FilterQuality.low':
        return FilterQuality.low;
      case 'FilterQuality.medium':
        return FilterQuality.medium;
      case 'FilterQuality.high':
        return FilterQuality.high;
    }
    return null;
  }
}

class MXImageByteFormat {
  static ImageByteFormat parse(String name, int index) {
    switch (name) {
      case 'ImageByteFormat.rawRgba':
        return ImageByteFormat.rawRgba;
      case 'ImageByteFormat.rawUnmodified':
        return ImageByteFormat.rawUnmodified;
      case 'ImageByteFormat.png':
        return ImageByteFormat.png;
    }
    return null;
  }
}

class MXPixelFormat {
  static PixelFormat parse(String name, int index) {
    switch (name) {
      case 'PixelFormat.rgba8888':
        return PixelFormat.rgba8888;
      case 'PixelFormat.bgra8888':
        return PixelFormat.bgra8888;
    }
    return null;
  }
}

class MXPointerChange {
  static PointerChange parse(String name, int index) {
    switch (name) {
      case 'PointerChange.cancel':
        return PointerChange.cancel;
      case 'PointerChange.add':
        return PointerChange.add;
      case 'PointerChange.remove':
        return PointerChange.remove;
      case 'PointerChange.hover':
        return PointerChange.hover;
      case 'PointerChange.down':
        return PointerChange.down;
      case 'PointerChange.move':
        return PointerChange.move;
      case 'PointerChange.up':
        return PointerChange.up;
    }
    return null;
  }
}

class MXPointerDeviceKind {
  static PointerDeviceKind parse(String name, int index) {
    switch (name) {
      case 'PointerDeviceKind.touch':
        return PointerDeviceKind.touch;
      case 'PointerDeviceKind.mouse':
        return PointerDeviceKind.mouse;
      case 'PointerDeviceKind.stylus':
        return PointerDeviceKind.stylus;
      case 'PointerDeviceKind.invertedStylus':
        return PointerDeviceKind.invertedStylus;
      case 'PointerDeviceKind.unknown':
        return PointerDeviceKind.unknown;
    }
    return null;
  }
}

class MXPointerSignalKind {
  static PointerSignalKind parse(String name, int index) {
    switch (name) {
      case 'PointerSignalKind.none':
        return PointerSignalKind.none;
      case 'PointerSignalKind.scroll':
        return PointerSignalKind.scroll;
      case 'PointerSignalKind.unknown':
        return PointerSignalKind.unknown;
    }
    return null;
  }
}

class MXFontStyle {
  static FontStyle parse(String name, int index) {
    switch (name) {
      case 'FontStyle.normal':
        return FontStyle.normal;
      case 'FontStyle.italic':
        return FontStyle.italic;
    }
    return null;
  }
}

class MXPlaceholderAlignment {
  static PlaceholderAlignment parse(String name, int index) {
    switch (name) {
      case 'PlaceholderAlignment.baseline':
        return PlaceholderAlignment.baseline;
      case 'PlaceholderAlignment.aboveBaseline':
        return PlaceholderAlignment.aboveBaseline;
      case 'PlaceholderAlignment.belowBaseline':
        return PlaceholderAlignment.belowBaseline;
      case 'PlaceholderAlignment.top':
        return PlaceholderAlignment.top;
      case 'PlaceholderAlignment.bottom':
        return PlaceholderAlignment.bottom;
      case 'PlaceholderAlignment.middle':
        return PlaceholderAlignment.middle;
    }
    return null;
  }
}

class MXTextAlign {
  static TextAlign parse(String name, int index) {
    switch (name) {
      case 'TextAlign.left':
        return TextAlign.left;
      case 'TextAlign.right':
        return TextAlign.right;
      case 'TextAlign.center':
        return TextAlign.center;
      case 'TextAlign.justify':
        return TextAlign.justify;
      case 'TextAlign.start':
        return TextAlign.start;
      case 'TextAlign.end':
        return TextAlign.end;
    }
    return null;
  }
}

class MXTextBaseline {
  static TextBaseline parse(String name, int index) {
    switch (name) {
      case 'TextBaseline.alphabetic':
        return TextBaseline.alphabetic;
      case 'TextBaseline.ideographic':
        return TextBaseline.ideographic;
    }
    return null;
  }
}

class MXTextDecorationStyle {
  static TextDecorationStyle parse(String name, int index) {
    switch (name) {
      case 'TextDecorationStyle.solid':
        return TextDecorationStyle.solid;
      case 'TextDecorationStyle.double':
        return TextDecorationStyle.double;
      case 'TextDecorationStyle.dotted':
        return TextDecorationStyle.dotted;
      case 'TextDecorationStyle.dashed':
        return TextDecorationStyle.dashed;
      case 'TextDecorationStyle.wavy':
        return TextDecorationStyle.wavy;
    }
    return null;
  }
}

class MXTextDirection {
  static TextDirection parse(String name, int index) {
    switch (name) {
      case 'TextDirection.rtl':
        return TextDirection.rtl;
      case 'TextDirection.ltr':
        return TextDirection.ltr;
    }
    return null;
  }
}

class MXTextAffinity {
  static TextAffinity parse(String name, int index) {
    switch (name) {
      case 'TextAffinity.upstream':
        return TextAffinity.upstream;
      case 'TextAffinity.downstream':
        return TextAffinity.downstream;
    }
    return null;
  }
}

class MXBoxHeightStyle {
  static BoxHeightStyle parse(String name, int index) {
    switch (name) {
      case 'BoxHeightStyle.tight':
        return BoxHeightStyle.tight;
      case 'BoxHeightStyle.max':
        return BoxHeightStyle.max;
      case 'BoxHeightStyle.includeLineSpacingMiddle':
        return BoxHeightStyle.includeLineSpacingMiddle;
      case 'BoxHeightStyle.includeLineSpacingTop':
        return BoxHeightStyle.includeLineSpacingTop;
      case 'BoxHeightStyle.includeLineSpacingBottom':
        return BoxHeightStyle.includeLineSpacingBottom;
      case 'BoxHeightStyle.strut':
        return BoxHeightStyle.strut;
    }
    return null;
  }
}

class MXBoxWidthStyle {
  static BoxWidthStyle parse(String name, int index) {
    switch (name) {
      case 'BoxWidthStyle.tight':
        return BoxWidthStyle.tight;
      case 'BoxWidthStyle.max':
        return BoxWidthStyle.max;
    }
    return null;
  }
}

class MXTileMode {
  static TileMode parse(String name, int index) {
    switch (name) {
      case 'TileMode.clamp':
        return TileMode.clamp;
      case 'TileMode.repeated':
        return TileMode.repeated;
      case 'TileMode.mirror':
        return TileMode.mirror;
    }
    return null;
  }
}

class MXAppLifecycleState {
  static AppLifecycleState parse(String name, int index) {
    switch (name) {
      case 'AppLifecycleState.resumed':
        return AppLifecycleState.resumed;
      case 'AppLifecycleState.inactive':
        return AppLifecycleState.inactive;
      case 'AppLifecycleState.paused':
        return AppLifecycleState.paused;
      case 'AppLifecycleState.detached':
        return AppLifecycleState.detached;
    }
    return null;
  }
}

class MXBrightness {
  static Brightness parse(String name, int index) {
    switch (name) {
      case 'Brightness.dark':
        return Brightness.dark;
      case 'Brightness.light':
        return Brightness.light;
    }
    return null;
  }
}

class MXFramePhase {
  static FramePhase parse(String name, int index) {
    switch (name) {
      case 'FramePhase.buildStart':
        return FramePhase.buildStart;
      case 'FramePhase.buildFinish':
        return FramePhase.buildFinish;
      case 'FramePhase.rasterStart':
        return FramePhase.rasterStart;
      case 'FramePhase.rasterFinish':
        return FramePhase.rasterFinish;
    }
    return null;
  }
}

//# sourceMappingURL=mx_dart_sdk.map

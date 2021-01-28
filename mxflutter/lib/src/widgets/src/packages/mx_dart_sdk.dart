//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
// import 'dart:_internal';
import 'dart:core';
import 'dart:core' as core;
// import 'dart:_js_primitives';
// import 'dart:_js_helper';
// import 'dart:_interceptors';
// import 'dart:_foreign_helper';
// import 'dart:_runtime' as dart;
import 'dart:collection';
import 'dart:math';
// import 'dart:_internal' as _symbol_dev;
// import 'dart:_native_typed_data';
// import 'dart:_internal' as internal;
// import 'dart:_js_annotations';

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
  m[_channelBuffers.funName] = _channelBuffers;
  m[_channelBuffersKDefaultBufferSize.funName] = _channelBuffersKDefaultBufferSize;
  m[_channelBuffersKControlChannelName.funName] = _channelBuffersKControlChannelName;
  m[_sceneBuilder.funName] = _sceneBuilder;
  // m[_engineLayer.funName] = _engineLayer;
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
  m[_imageShader.funName] = _imageShader;
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
  m[_semanticsActionMoveCursorForwardByCharacter.funName] = _semanticsActionMoveCursorForwardByCharacter;
  m[_semanticsActionMoveCursorBackwardByCharacter.funName] = _semanticsActionMoveCursorBackwardByCharacter;
  m[_semanticsActionSetSelection.funName] = _semanticsActionSetSelection;
  m[_semanticsActionCopy.funName] = _semanticsActionCopy;
  m[_semanticsActionCut.funName] = _semanticsActionCut;
  m[_semanticsActionPaste.funName] = _semanticsActionPaste;
  m[_semanticsActionDidGainAccessibilityFocus.funName] = _semanticsActionDidGainAccessibilityFocus;
  m[_semanticsActionDidLoseAccessibilityFocus.funName] = _semanticsActionDidLoseAccessibilityFocus;
  m[_semanticsActionCustomAction.funName] = _semanticsActionCustomAction;
  m[_semanticsActionDismiss.funName] = _semanticsActionDismiss;
  m[_semanticsActionMoveCursorForwardByWord.funName] = _semanticsActionMoveCursorForwardByWord;
  m[_semanticsActionMoveCursorBackwardByWord.funName] = _semanticsActionMoveCursorBackwardByWord;
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
  m[_semanticsFlagIsInMutuallyExclusiveGroup.funName] = _semanticsFlagIsInMutuallyExclusiveGroup;
  m[_semanticsFlagIsHeader.funName] = _semanticsFlagIsHeader;
  m[_semanticsFlagIsObscured.funName] = _semanticsFlagIsObscured;
  m[_semanticsFlagScopesRoute.funName] = _semanticsFlagScopesRoute;
  m[_semanticsFlagNamesRoute.funName] = _semanticsFlagNamesRoute;
  m[_semanticsFlagIsHidden.funName] = _semanticsFlagIsHidden;
  m[_semanticsFlagIsImage.funName] = _semanticsFlagIsImage;
  m[_semanticsFlagIsLiveRegion.funName] = _semanticsFlagIsLiveRegion;
  m[_semanticsFlagHasToggledState.funName] = _semanticsFlagHasToggledState;
  m[_semanticsFlagIsToggled.funName] = _semanticsFlagIsToggled;
  m[_semanticsFlagHasImplicitScrolling.funName] = _semanticsFlagHasImplicitScrolling;
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
  m[_framePhase.funName] = _framePhase;
  m[_frameTiming.funName] = _frameTiming;
  //MX Modified begin
  // m[_codeUnits.funName] = _codeUnits;
  // m[_externalName.funName] = _externalName;
  // m[_since.funName] = _since;
  // m[_error.funName] = _error;
  // m[_notNullableError.funName] = _notNullableError;
  // m[_httpStatusContinue.funName] = _httpStatusContinue;
  // m[_httpStatusSwitchingProtocols.funName] = _httpStatusSwitchingProtocols;
  // m[_httpStatusProcessing.funName] = _httpStatusProcessing;
  // m[_httpStatusOk.funName] = _httpStatusOk;
  // m[_httpStatusCreated.funName] = _httpStatusCreated;
  // m[_httpStatusAccepted.funName] = _httpStatusAccepted;
  // m[_httpStatusNonAuthoritativeInformation.funName] =
  //     _httpStatusNonAuthoritativeInformation;
  // m[_httpStatusNoContent.funName] = _httpStatusNoContent;
  // m[_httpStatusResetContent.funName] = _httpStatusResetContent;
  // m[_httpStatusPartialContent.funName] = _httpStatusPartialContent;
  // m[_httpStatusMultiStatus.funName] = _httpStatusMultiStatus;
  // m[_httpStatusAlreadyReported.funName] = _httpStatusAlreadyReported;
  // m[_httpStatusImUsed.funName] = _httpStatusImUsed;
  // m[_httpStatusMultipleChoices.funName] = _httpStatusMultipleChoices;
  // m[_httpStatusMovedPermanently.funName] = _httpStatusMovedPermanently;
  // m[_httpStatusFound.funName] = _httpStatusFound;
  // m[_httpStatusMovedTemporarily.funName] = _httpStatusMovedTemporarily;
  // m[_httpStatusSeeOther.funName] = _httpStatusSeeOther;
  // m[_httpStatusNotModified.funName] = _httpStatusNotModified;
  // m[_httpStatusUseProxy.funName] = _httpStatusUseProxy;
  // m[_httpStatusTemporaryRedirect.funName] = _httpStatusTemporaryRedirect;
  // m[_httpStatusPermanentRedirect.funName] = _httpStatusPermanentRedirect;
  // m[_httpStatusBadRequest.funName] = _httpStatusBadRequest;
  // m[_httpStatusUnauthorized.funName] = _httpStatusUnauthorized;
  // m[_httpStatusPaymentRequired.funName] = _httpStatusPaymentRequired;
  // m[_httpStatusForbidden.funName] = _httpStatusForbidden;
  // m[_httpStatusNotFound.funName] = _httpStatusNotFound;
  // m[_httpStatusMethodNotAllowed.funName] = _httpStatusMethodNotAllowed;
  // m[_httpStatusNotAcceptable.funName] = _httpStatusNotAcceptable;
  // m[_httpStatusProxyAuthenticationRequired.funName] =
  //     _httpStatusProxyAuthenticationRequired;
  // m[_httpStatusRequestTimeout.funName] = _httpStatusRequestTimeout;
  // m[_httpStatusConflict.funName] = _httpStatusConflict;
  // m[_httpStatusGone.funName] = _httpStatusGone;
  // m[_httpStatusLengthRequired.funName] = _httpStatusLengthRequired;
  // m[_httpStatusPreconditionFailed.funName] = _httpStatusPreconditionFailed;
  // m[_httpStatusRequestEntityTooLarge.funName] =
  //     _httpStatusRequestEntityTooLarge;
  // m[_httpStatusRequestUriTooLong.funName] = _httpStatusRequestUriTooLong;
  // m[_httpStatusUnsupportedMediaType.funName] = _httpStatusUnsupportedMediaType;
  // m[_httpStatusRequestedRangeNotSatisfiable.funName] =
  //     _httpStatusRequestedRangeNotSatisfiable;
  // m[_httpStatusExpectationFailed.funName] = _httpStatusExpectationFailed;
  // m[_httpStatusMisdirectedRequest.funName] = _httpStatusMisdirectedRequest;
  // m[_httpStatusUnprocessableEntity.funName] = _httpStatusUnprocessableEntity;
  // m[_httpStatusLocked.funName] = _httpStatusLocked;
  // m[_httpStatusFailedDependency.funName] = _httpStatusFailedDependency;
  // m[_httpStatusUpgradeRequired.funName] = _httpStatusUpgradeRequired;
  // m[_httpStatusPreconditionRequired.funName] = _httpStatusPreconditionRequired;
  // m[_httpStatusTooManyRequests.funName] = _httpStatusTooManyRequests;
  // m[_httpStatusRequestHeaderFieldsTooLarge.funName] =
  //     _httpStatusRequestHeaderFieldsTooLarge;
  // m[_httpStatusConnectionClosedWithoutResponse.funName] =
  //     _httpStatusConnectionClosedWithoutResponse;
  // m[_httpStatusUnavailableForLegalReasons.funName] =
  //     _httpStatusUnavailableForLegalReasons;
  // m[_httpStatusClientClosedRequest.funName] = _httpStatusClientClosedRequest;
  // m[_httpStatusInternalServerError.funName] = _httpStatusInternalServerError;
  // m[_httpStatusNotImplemented.funName] = _httpStatusNotImplemented;
  // m[_httpStatusBadGateway.funName] = _httpStatusBadGateway;
  // m[_httpStatusServiceUnavailable.funName] = _httpStatusServiceUnavailable;
  // m[_httpStatusGatewayTimeout.funName] = _httpStatusGatewayTimeout;
  // m[_httpStatusHttpVersionNotSupported.funName] =
  //     _httpStatusHttpVersionNotSupported;
  // m[_httpStatusVariantAlsoNegotiates.funName] =
  //     _httpStatusVariantAlsoNegotiates;
  // m[_httpStatusInsufficientStorage.funName] = _httpStatusInsufficientStorage;
  // m[_httpStatusLoopDetected.funName] = _httpStatusLoopDetected;
  // m[_httpStatusNotExtended.funName] = _httpStatusNotExtended;
  // m[_httpStatusNetworkAuthenticationRequired.funName] =
  //     _httpStatusNetworkAuthenticationRequired;
  // m[_httpStatusNetworkConnectTimeoutError.funName] =
  //     _httpStatusNetworkConnectTimeoutError;
  // m[_httpStatusCONTINUE.funName] = _httpStatusCONTINUE;
  // m[_httpStatusSWITCHINGPROTOCOLS.funName] = _httpStatusSWITCHINGPROTOCOLS;
  // m[_httpStatusOK.funName] = _httpStatusOK;
  // m[_httpStatusCREATED.funName] = _httpStatusCREATED;
  // m[_httpStatusACCEPTED.funName] = _httpStatusACCEPTED;
  // m[_httpStatusNONAUTHORITATIVEINFORMATION.funName] =
  //     _httpStatusNONAUTHORITATIVEINFORMATION;
  // m[_httpStatusNOCONTENT.funName] = _httpStatusNOCONTENT;
  // m[_httpStatusRESETCONTENT.funName] = _httpStatusRESETCONTENT;
  // m[_httpStatusPARTIALCONTENT.funName] = _httpStatusPARTIALCONTENT;
  // m[_httpStatusMULTIPLECHOICES.funName] = _httpStatusMULTIPLECHOICES;
  // m[_httpStatusMOVEDPERMANENTLY.funName] = _httpStatusMOVEDPERMANENTLY;
  // m[_httpStatusFOUND.funName] = _httpStatusFOUND;
  // m[_httpStatusMOVEDTEMPORARILY.funName] = _httpStatusMOVEDTEMPORARILY;
  // m[_httpStatusSEEOTHER.funName] = _httpStatusSEEOTHER;
  // m[_httpStatusNOTMODIFIED.funName] = _httpStatusNOTMODIFIED;
  // m[_httpStatusUSEPROXY.funName] = _httpStatusUSEPROXY;
  // m[_httpStatusTEMPORARYREDIRECT.funName] = _httpStatusTEMPORARYREDIRECT;
  // m[_httpStatusBADREQUEST.funName] = _httpStatusBADREQUEST;
  // m[_httpStatusUNAUTHORIZED.funName] = _httpStatusUNAUTHORIZED;
  // m[_httpStatusPAYMENTREQUIRED.funName] = _httpStatusPAYMENTREQUIRED;
  // m[_httpStatusFORBIDDEN.funName] = _httpStatusFORBIDDEN;
  // m[_httpStatusNOTFOUND.funName] = _httpStatusNOTFOUND;
  // m[_httpStatusMETHODNOTALLOWED.funName] = _httpStatusMETHODNOTALLOWED;
  // m[_httpStatusNOTACCEPTABLE.funName] = _httpStatusNOTACCEPTABLE;
  // m[_httpStatusPROXYAUTHENTICATIONREQUIRED.funName] =
  //     _httpStatusPROXYAUTHENTICATIONREQUIRED;
  // m[_httpStatusREQUESTTIMEOUT.funName] = _httpStatusREQUESTTIMEOUT;
  // m[_httpStatusCONFLICT.funName] = _httpStatusCONFLICT;
  // m[_httpStatusGONE.funName] = _httpStatusGONE;
  // m[_httpStatusLENGTHREQUIRED.funName] = _httpStatusLENGTHREQUIRED;
  // m[_httpStatusPRECONDITIONFAILED.funName] = _httpStatusPRECONDITIONFAILED;
  // m[_httpStatusREQUESTENTITYTOOLARGE.funName] =
  //     _httpStatusREQUESTENTITYTOOLARGE;
  // m[_httpStatusREQUESTURITOOLONG.funName] = _httpStatusREQUESTURITOOLONG;
  // m[_httpStatusUNSUPPORTEDMEDIATYPE.funName] = _httpStatusUNSUPPORTEDMEDIATYPE;
  // m[_httpStatusREQUESTEDRANGENOTSATISFIABLE.funName] =
  //     _httpStatusREQUESTEDRANGENOTSATISFIABLE;
  // m[_httpStatusEXPECTATIONFAILED.funName] = _httpStatusEXPECTATIONFAILED;
  // m[_httpStatusUPGRADEREQUIRED.funName] = _httpStatusUPGRADEREQUIRED;
  // m[_httpStatusINTERNALSERVERERROR.funName] = _httpStatusINTERNALSERVERERROR;
  // m[_httpStatusNOTIMPLEMENTED.funName] = _httpStatusNOTIMPLEMENTED;
  // m[_httpStatusBADGATEWAY.funName] = _httpStatusBADGATEWAY;
  // m[_httpStatusSERVICEUNAVAILABLE.funName] = _httpStatusSERVICEUNAVAILABLE;
  // m[_httpStatusGATEWAYTIMEOUT.funName] = _httpStatusGATEWAYTIMEOUT;
  // m[_httpStatusHTTPVERSIONNOTSUPPORTED.funName] =
  //     _httpStatusHTTPVERSIONNOTSUPPORTED;
  // m[_httpStatusNETWORKCONNECTTIMEOUTERROR.funName] =
  //     _httpStatusNETWORKCONNECTTIMEOUTERROR;
  // m[_castStream.funName] = _castStream;
  // m[_castStreamSubscription.funName] = _castStreamSubscription;
  // m[_castStreamTransformer.funName] = _castStreamTransformer;
  // m[_castConverter.funName] = _castConverter;
  // m[_castIterator.funName] = _castIterator;
  // m[_castIterable.funName] = _castIterable;
  // m[_castList.funName] = _castList;
  // m[_castSet.funName] = _castSet;
  // m[_castMap.funName] = _castMap;
  // m[_castQueue.funName] = _castQueue;
  // m[_lateInitializationErrorImpl.funName] = _lateInitializationErrorImpl;
  // m[_iterableGenerate.funName] = _iterableGenerate;
  // m[_iterableEmpty.funName] = _iterableEmpty;
  // m[_subListIterable.funName] = _subListIterable;
  // m[_listIterator.funName] = _listIterator;
  // m[_mappedIterable.funName] = _mappedIterable;
  // m[_efficientLengthMappedIterable.funName] = _efficientLengthMappedIterable;
  // m[_mappedIterator.funName] = _mappedIterator;
  // m[_mappedListIterable.funName] = _mappedListIterable;
  // m[_whereIterable.funName] = _whereIterable;
  // m[_whereIterator.funName] = _whereIterator;
  // m[_expandIterable.funName] = _expandIterable;
  // m[_expandIterator.funName] = _expandIterator;
  // m[_takeIterable.funName] = _takeIterable;
  // m[_efficientLengthTakeIterable.funName] = _efficientLengthTakeIterable;
  // m[_takeIterator.funName] = _takeIterator;
  // m[_takeWhileIterable.funName] = _takeWhileIterable;
  // m[_takeWhileIterator.funName] = _takeWhileIterator;
  // m[_skipIterable.funName] = _skipIterable;
  // m[_efficientLengthSkipIterable.funName] = _efficientLengthSkipIterable;
  // m[_skipIterator.funName] = _skipIterator;
  // m[_skipWhileIterable.funName] = _skipWhileIterable;
  // m[_skipWhileIterator.funName] = _skipWhileIterator;
  // m[_emptyIterable.funName] = _emptyIterable;
  // m[_emptyIterator.funName] = _emptyIterator;
  // m[_followedByIterable.funName] = _followedByIterable;
  // m[_followedByIterableFirstEfficient.funName] =
  //     _followedByIterableFirstEfficient;
  // m[_efficientLengthFollowedByIterable.funName] =
  //     _efficientLengthFollowedByIterable;
  // m[_followedByIterator.funName] = _followedByIterator;
  // m[_whereTypeIterable.funName] = _whereTypeIterable;
  // m[_whereTypeIterator.funName] = _whereTypeIterator;
  // m[_listMapView.funName] = _listMapView;
  // m[_reversedListIterable.funName] = _reversedListIterable;
  // m[_linkedList.funName] = _linkedList;
  // m[_linkedListEntry.funName] = _linkedListEntry;
  // m[_sort.funName] = _sort;
  // m[_sortSort.funName] = _sortSort;
  // m[_sortSortRange.funName] = _sortSortRange;
  // m[_symbol.funName] = _symbol;
  // m[_symbolReservedWordRE.funName] = _symbolReservedWordRE;
  // m[_symbolPublicIdentifierRE.funName] = _symbolPublicIdentifierRE;
  // m[_symbolIdentifierRE.funName] = _symbolIdentifierRE;
  // m[_symbolOperatorRE.funName] = _symbolOperatorRE;
  // m[_symbolUnvalidated.funName] = _symbolUnvalidated;
  // m[_symbolValidated.funName] = _symbolValidated;
  //MX Modified end
  m[_deprecated.funName] = _deprecated;
  m[_provisional.funName] = _provisional;
  m[_pragma.funName] = _pragma;
  m[_bigIntFrom.funName] = _bigIntFrom;
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
  m[_dateTimeFromMillisecondsSinceEpoch.funName] = _dateTimeFromMillisecondsSinceEpoch;
  m[_dateTimeFromMicrosecondsSinceEpoch.funName] = _dateTimeFromMicrosecondsSinceEpoch;
  m[_duration.funName] = _duration;
  m[_durationMicrosecondsPerMillisecond.funName] = _durationMicrosecondsPerMillisecond;
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
  m[_abstractClassInstantiationError.funName] = _abstractClassInstantiationError;
  m[_noSuchMethodError.funName] = _noSuchMethodError;
  m[_noSuchMethodErrorWithInvocation.funName] = _noSuchMethodErrorWithInvocation;
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
  m[_invocationMethod.funName] = _invocationMethod;
  m[_invocationGenericMethod.funName] = _invocationGenericMethod;
  m[_invocationGetter.funName] = _invocationGetter;
  m[_invocationSetter.funName] = _invocationSetter;
  m[_mapEntry.funName] = _mapEntry;
  m[_regExp.funName] = _regExp;
  m[_set.funName] = _set;
  m[_setIdentity.funName] = _setIdentity;
  m[_setFrom.funName] = _setFrom;
  m[_setOf.funName] = _setOf;
  m[_stackTraceEmpty.funName] = _stackTraceEmpty;
  m[_stackTraceFromString.funName] = _stackTraceFromString;
  m[_stopwatch.funName] = _stopwatch;
  m[_runes.funName] = _runes;
  m[_runeIterator.funName] = _runeIterator;
  m[_runeIteratorAt.funName] = _runeIteratorAt;
  m[_stringBuffer.funName] = _stringBuffer;
  //MX Modified begin
  // m[_symbolUnaryMinus.funName] = _symbolUnaryMinus;
  // m[_symbolEmpty.funName] = _symbolEmpty;
  // m[_symbol.funName] = _symbol;
  //MX Modified end
  m[_uri.funName] = _uri;
  m[_uriHttp.funName] = _uriHttp;
  m[_uriHttps.funName] = _uriHttps;
  m[_uriFile.funName] = _uriFile;
  m[_uriDirectory.funName] = _uriDirectory;
  m[_uriDataFromString.funName] = _uriDataFromString;
  m[_uriDataFromBytes.funName] = _uriDataFromBytes;
  //MX Modified begin
  // m[_uriDataFromString.funName] = _uriDataFromString;
  // m[_uriDataFromBytes.funName] = _uriDataFromBytes;
  //MX Modified end
  m[_uriDataFromUri.funName] = _uriDataFromUri;
  //MX Modified begin
  // m[_jS.funName] = _jS;
  //MX Modified end
  return m;
}

var _pointMode =
    MXFunctionInvoke("PointMode", ({String name, int index}) => MXPointMode.parse(name, index), ["name", "index"]);
var _clipOp = MXFunctionInvoke("ClipOp", ({String name, int index}) => MXClipOp.parse(name, index), ["name", "index"]);
var _vertexMode =
    MXFunctionInvoke("VertexMode", ({String name, int index}) => MXVertexMode.parse(name, index), ["name", "index"]);
var _vertices = MXFunctionInvoke(
  "Vertices",
  ({
    VertexMode mode,
    core.dynamic positions,
    core.dynamic textureCoordinates,
    core.dynamic colors,
    core.dynamic indices,
  }) =>
      Vertices(
    mode,
    toListT<Offset>(positions),
    textureCoordinates: toListT<Offset>(textureCoordinates),
    colors: toListT<Color>(colors),
    indices: toListT<core.int>(indices),
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
    "PathFillType", ({String name, int index}) => MXPathFillType.parse(name, index), ["name", "index"]);
var _pathOperation = MXFunctionInvoke(
    "PathOperation", ({String name, int index}) => MXPathOperation.parse(name, index), ["name", "index"]);
var _channelBuffers = MXFunctionInvoke(
  "ChannelBuffers",
  () => ChannelBuffers(),
  [],
);
var _channelBuffersKDefaultBufferSize =
    MXFunctionInvoke("ChannelBuffers.kDefaultBufferSize", () => ChannelBuffers.kDefaultBufferSize);
var _channelBuffersKControlChannelName =
    MXFunctionInvoke("ChannelBuffers.kControlChannelName", () => ChannelBuffers.kControlChannelName);
var _sceneBuilder = MXFunctionInvoke(
  "SceneBuilder",
  () => SceneBuilder(),
  [],
);

/// MX modified begin -delete function
// var _engineLayer = MXFunctionInvoke(
//     "EngineLayer",
//     (
//     ) =>
//       EngineLayer(
//     ),
// );
/// MX modified end
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
    createValueChangedGenericClosure<bool>(_sceneHost.buildOwner, viewStateChangedCallback),
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
    core.dynamic dx,
    core.dynamic dy,
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
var _offsetInfinite = MXFunctionInvoke("Offset.infinite", () => Offset.infinite);
var _offsetFromDirection = MXFunctionInvoke(
  "Offset.fromDirection",
  ({
    core.dynamic direction,
    core.dynamic distance,
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
    core.dynamic width,
    core.dynamic height,
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
    core.dynamic dimension,
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
    core.dynamic width,
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
    core.dynamic height,
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
    core.dynamic radius,
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
    core.dynamic left,
    core.dynamic top,
    core.dynamic right,
    core.dynamic bottom,
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
    core.dynamic left,
    core.dynamic top,
    core.dynamic width,
    core.dynamic height,
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
    core.dynamic radius,
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
    core.dynamic width,
    core.dynamic height,
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
    core.dynamic radius,
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
    core.dynamic x,
    core.dynamic y,
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
    core.dynamic left,
    core.dynamic top,
    core.dynamic right,
    core.dynamic bottom,
    core.dynamic radiusX,
    core.dynamic radiusY,
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
    core.dynamic left,
    core.dynamic top,
    core.dynamic right,
    core.dynamic bottom,
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
    core.dynamic radiusX,
    core.dynamic radiusY,
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
    core.dynamic left,
    core.dynamic top,
    core.dynamic right,
    core.dynamic bottom,
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
    core.dynamic scos,
    core.dynamic ssin,
    core.dynamic tx,
    core.dynamic ty,
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
    core.dynamic rotation,
    core.dynamic scale,
    core.dynamic anchorX,
    core.dynamic anchorY,
    core.dynamic translateX,
    core.dynamic translateY,
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
var _color = MXFunctionInvoke(
  "Color",
  ({
    core.int value,
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
    core.int a,
    core.int r,
    core.int g,
    core.int b,
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
    core.int r,
    core.int g,
    core.int b,
    core.dynamic opacity,
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
var _strokeCap =
    MXFunctionInvoke("StrokeCap", ({String name, int index}) => MXStrokeCap.parse(name, index), ["name", "index"]);
var _strokeJoin =
    MXFunctionInvoke("StrokeJoin", ({String name, int index}) => MXStrokeJoin.parse(name, index), ["name", "index"]);
var _paintingStyle = MXFunctionInvoke(
    "PaintingStyle", ({String name, int index}) => MXPaintingStyle.parse(name, index), ["name", "index"]);
var _blendMode =
    MXFunctionInvoke("BlendMode", ({String name, int index}) => MXBlendMode.parse(name, index), ["name", "index"]);
var _clip = MXFunctionInvoke("Clip", ({String name, int index}) => MXClip.parse(name, index), ["name", "index"]);
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
    core.dynamic colors,
    core.dynamic colorStops,
    TileMode tileMode,
    Float64List matrix4,
  }) =>
      Gradient.linear(
    from,
    to,
    toListT<Color>(colors),
    toListT<core.double>(colorStops),
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
    core.dynamic radius,
    core.dynamic colors,
    core.dynamic colorStops,
    TileMode tileMode,
    Float64List matrix4,
    Offset focal,
    core.dynamic focalRadius,
  }) =>
      Gradient.radial(
    center,
    radius?.toDouble(),
    toListT<Color>(colors),
    toListT<core.double>(colorStops),
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
    core.dynamic colors,
    core.dynamic colorStops,
    TileMode tileMode,
    core.dynamic startAngle,
    core.dynamic endAngle,
    Float64List matrix4,
  }) =>
      Gradient.sweep(
    center,
    toListT<Color>(colors),
    toListT<core.double>(colorStops),
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
    core.dynamic matrix,
  }) =>
      ColorFilter.matrix(
    toListT<core.double>(matrix),
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
var _blurStyle =
    MXFunctionInvoke("BlurStyle", ({String name, int index}) => MXBlurStyle.parse(name, index), ["name", "index"]);
var _maskFilterBlur = MXFunctionInvoke(
  "MaskFilter.blur",
  ({
    BlurStyle style,
    core.dynamic sigma,
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
    "FilterQuality", ({String name, int index}) => MXFilterQuality.parse(name, index), ["name", "index"]);
var _imageFilterBlur = MXFunctionInvoke(
  "ImageFilter.blur",
  ({
    core.dynamic sigmaX = 0.0,
    core.dynamic sigmaY = 0.0,
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
    "ImageByteFormat", ({String name, int index}) => MXImageByteFormat.parse(name, index), ["name", "index"]);
var _pixelFormat =
    MXFunctionInvoke("PixelFormat", ({String name, int index}) => MXPixelFormat.parse(name, index), ["name", "index"]);
var _shadow = MXFunctionInvoke(
  "Shadow",
  ({
    /// MX modified begin -change to int
    Color color = const Color(4278190080),

    /// MX modified end
    Offset offset = Offset.zero,
    core.dynamic blurRadius = 0.0,
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
    core.dynamic angle,
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
    "PointerChange", ({String name, int index}) => MXPointerChange.parse(name, index), ["name", "index"]);
var _pointerDeviceKind = MXFunctionInvoke(
    "PointerDeviceKind", ({String name, int index}) => MXPointerDeviceKind.parse(name, index), ["name", "index"]);
var _pointerSignalKind = MXFunctionInvoke(
    "PointerSignalKind", ({String name, int index}) => MXPointerSignalKind.parse(name, index), ["name", "index"]);
var _pointerData = MXFunctionInvoke(
  "PointerData",
  ({
    core.int embedderId = 0,
    core.Duration timeStamp = Duration.zero,
    PointerChange change = PointerChange.cancel,
    PointerDeviceKind kind = PointerDeviceKind.touch,
    PointerSignalKind signalKind,
    core.int device = 0,
    core.int pointerIdentifier = 0,
    core.dynamic physicalX = 0.0,
    core.dynamic physicalY = 0.0,
    core.dynamic physicalDeltaX = 0.0,
    core.dynamic physicalDeltaY = 0.0,
    core.int buttons = 0,
    core.bool obscured = false,
    core.bool synthesized = false,
    core.dynamic pressure = 0.0,
    core.dynamic pressureMin = 0.0,
    core.dynamic pressureMax = 0.0,
    core.dynamic distance = 0.0,
    core.dynamic distanceMax = 0.0,
    core.dynamic size = 0.0,
    core.dynamic radiusMajor = 0.0,
    core.dynamic radiusMinor = 0.0,
    core.dynamic radiusMin = 0.0,
    core.dynamic radiusMax = 0.0,
    core.dynamic orientation = 0.0,
    core.dynamic tilt = 0.0,
    core.int platformData = 0,
    core.dynamic scrollDeltaX = 0.0,
    core.dynamic scrollDeltaY = 0.0,
  }) =>
      PointerData(
    embedderId: embedderId,
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
    "embedderId",
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
    core.dynamic data = const <PointerData>[],
  }) =>
      PointerDataPacket(
    data: toListT<PointerData>(data),
  ),
  [
    "data",
  ],
);
var _semanticsActionTap = MXFunctionInvoke("SemanticsAction.tap", () => SemanticsAction.tap);
var _semanticsActionLongPress = MXFunctionInvoke("SemanticsAction.longPress", () => SemanticsAction.longPress);
var _semanticsActionScrollLeft = MXFunctionInvoke("SemanticsAction.scrollLeft", () => SemanticsAction.scrollLeft);
var _semanticsActionScrollRight = MXFunctionInvoke("SemanticsAction.scrollRight", () => SemanticsAction.scrollRight);
var _semanticsActionScrollUp = MXFunctionInvoke("SemanticsAction.scrollUp", () => SemanticsAction.scrollUp);
var _semanticsActionScrollDown = MXFunctionInvoke("SemanticsAction.scrollDown", () => SemanticsAction.scrollDown);
var _semanticsActionIncrease = MXFunctionInvoke("SemanticsAction.increase", () => SemanticsAction.increase);
var _semanticsActionDecrease = MXFunctionInvoke("SemanticsAction.decrease", () => SemanticsAction.decrease);
var _semanticsActionShowOnScreen = MXFunctionInvoke("SemanticsAction.showOnScreen", () => SemanticsAction.showOnScreen);
var _semanticsActionMoveCursorForwardByCharacter = MXFunctionInvoke(
    "SemanticsAction.moveCursorForwardByCharacter", () => SemanticsAction.moveCursorForwardByCharacter);
var _semanticsActionMoveCursorBackwardByCharacter = MXFunctionInvoke(
    "SemanticsAction.moveCursorBackwardByCharacter", () => SemanticsAction.moveCursorBackwardByCharacter);
var _semanticsActionSetSelection = MXFunctionInvoke("SemanticsAction.setSelection", () => SemanticsAction.setSelection);
var _semanticsActionCopy = MXFunctionInvoke("SemanticsAction.copy", () => SemanticsAction.copy);
var _semanticsActionCut = MXFunctionInvoke("SemanticsAction.cut", () => SemanticsAction.cut);
var _semanticsActionPaste = MXFunctionInvoke("SemanticsAction.paste", () => SemanticsAction.paste);
var _semanticsActionDidGainAccessibilityFocus =
    MXFunctionInvoke("SemanticsAction.didGainAccessibilityFocus", () => SemanticsAction.didGainAccessibilityFocus);
var _semanticsActionDidLoseAccessibilityFocus =
    MXFunctionInvoke("SemanticsAction.didLoseAccessibilityFocus", () => SemanticsAction.didLoseAccessibilityFocus);
var _semanticsActionCustomAction = MXFunctionInvoke("SemanticsAction.customAction", () => SemanticsAction.customAction);
var _semanticsActionDismiss = MXFunctionInvoke("SemanticsAction.dismiss", () => SemanticsAction.dismiss);
var _semanticsActionMoveCursorForwardByWord =
    MXFunctionInvoke("SemanticsAction.moveCursorForwardByWord", () => SemanticsAction.moveCursorForwardByWord);
var _semanticsActionMoveCursorBackwardByWord =
    MXFunctionInvoke("SemanticsAction.moveCursorBackwardByWord", () => SemanticsAction.moveCursorBackwardByWord);
var _semanticsActionValues = MXFunctionInvoke("SemanticsAction.values", () => SemanticsAction.values);
var _semanticsFlagHasCheckedState =
    MXFunctionInvoke("SemanticsFlag.hasCheckedState", () => SemanticsFlag.hasCheckedState);
var _semanticsFlagIsChecked = MXFunctionInvoke("SemanticsFlag.isChecked", () => SemanticsFlag.isChecked);
var _semanticsFlagIsSelected = MXFunctionInvoke("SemanticsFlag.isSelected", () => SemanticsFlag.isSelected);
var _semanticsFlagIsButton = MXFunctionInvoke("SemanticsFlag.isButton", () => SemanticsFlag.isButton);
var _semanticsFlagIsLink = MXFunctionInvoke("SemanticsFlag.isLink", () => SemanticsFlag.isLink);
var _semanticsFlagIsTextField = MXFunctionInvoke("SemanticsFlag.isTextField", () => SemanticsFlag.isTextField);
var _semanticsFlagIsReadOnly = MXFunctionInvoke("SemanticsFlag.isReadOnly", () => SemanticsFlag.isReadOnly);
var _semanticsFlagIsFocusable = MXFunctionInvoke("SemanticsFlag.isFocusable", () => SemanticsFlag.isFocusable);
var _semanticsFlagIsFocused = MXFunctionInvoke("SemanticsFlag.isFocused", () => SemanticsFlag.isFocused);
var _semanticsFlagHasEnabledState =
    MXFunctionInvoke("SemanticsFlag.hasEnabledState", () => SemanticsFlag.hasEnabledState);
var _semanticsFlagIsEnabled = MXFunctionInvoke("SemanticsFlag.isEnabled", () => SemanticsFlag.isEnabled);
var _semanticsFlagIsInMutuallyExclusiveGroup =
    MXFunctionInvoke("SemanticsFlag.isInMutuallyExclusiveGroup", () => SemanticsFlag.isInMutuallyExclusiveGroup);
var _semanticsFlagIsHeader = MXFunctionInvoke("SemanticsFlag.isHeader", () => SemanticsFlag.isHeader);
var _semanticsFlagIsObscured = MXFunctionInvoke("SemanticsFlag.isObscured", () => SemanticsFlag.isObscured);
var _semanticsFlagScopesRoute = MXFunctionInvoke("SemanticsFlag.scopesRoute", () => SemanticsFlag.scopesRoute);
var _semanticsFlagNamesRoute = MXFunctionInvoke("SemanticsFlag.namesRoute", () => SemanticsFlag.namesRoute);
var _semanticsFlagIsHidden = MXFunctionInvoke("SemanticsFlag.isHidden", () => SemanticsFlag.isHidden);
var _semanticsFlagIsImage = MXFunctionInvoke("SemanticsFlag.isImage", () => SemanticsFlag.isImage);
var _semanticsFlagIsLiveRegion = MXFunctionInvoke("SemanticsFlag.isLiveRegion", () => SemanticsFlag.isLiveRegion);
var _semanticsFlagHasToggledState =
    MXFunctionInvoke("SemanticsFlag.hasToggledState", () => SemanticsFlag.hasToggledState);
var _semanticsFlagIsToggled = MXFunctionInvoke("SemanticsFlag.isToggled", () => SemanticsFlag.isToggled);
var _semanticsFlagHasImplicitScrolling =
    MXFunctionInvoke("SemanticsFlag.hasImplicitScrolling", () => SemanticsFlag.hasImplicitScrolling);
var _semanticsFlagIsMultiline = MXFunctionInvoke("SemanticsFlag.isMultiline", () => SemanticsFlag.isMultiline);
var _semanticsFlagValues = MXFunctionInvoke("SemanticsFlag.values", () => SemanticsFlag.values);
var _semanticsUpdateBuilder = MXFunctionInvoke(
  "SemanticsUpdateBuilder",
  () => SemanticsUpdateBuilder(),
  [],
);
var _fontStyle =
    MXFunctionInvoke("FontStyle", ({String name, int index}) => MXFontStyle.parse(name, index), ["name", "index"]);
var _placeholderAlignment = MXFunctionInvoke(
    "PlaceholderAlignment", ({String name, int index}) => MXPlaceholderAlignment.parse(name, index), ["name", "index"]);
var _fontWeightW100 = MXFunctionInvoke("FontWeight.w100", () => FontWeight.w100);
var _fontWeightW200 = MXFunctionInvoke("FontWeight.w200", () => FontWeight.w200);
var _fontWeightW300 = MXFunctionInvoke("FontWeight.w300", () => FontWeight.w300);
var _fontWeightW400 = MXFunctionInvoke("FontWeight.w400", () => FontWeight.w400);
var _fontWeightW500 = MXFunctionInvoke("FontWeight.w500", () => FontWeight.w500);
var _fontWeightW600 = MXFunctionInvoke("FontWeight.w600", () => FontWeight.w600);
var _fontWeightW700 = MXFunctionInvoke("FontWeight.w700", () => FontWeight.w700);
var _fontWeightW800 = MXFunctionInvoke("FontWeight.w800", () => FontWeight.w800);
var _fontWeightW900 = MXFunctionInvoke("FontWeight.w900", () => FontWeight.w900);
var _fontWeightNormal = MXFunctionInvoke("FontWeight.normal", () => FontWeight.normal);
var _fontWeightBold = MXFunctionInvoke("FontWeight.bold", () => FontWeight.bold);
var _fontWeightValues = MXFunctionInvoke("FontWeight.values", () => FontWeight.values);
var _fontFeature = MXFunctionInvoke(
  "FontFeature",
  ({
    core.String feature,
    core.int value,
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
    core.int value,
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
    core.String feature,
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
    core.String feature,
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
var _textAlign =
    MXFunctionInvoke("TextAlign", ({String name, int index}) => MXTextAlign.parse(name, index), ["name", "index"]);
var _textBaseline = MXFunctionInvoke(
    "TextBaseline", ({String name, int index}) => MXTextBaseline.parse(name, index), ["name", "index"]);
var _textDecorationNone = MXFunctionInvoke("TextDecoration.none", () => TextDecoration.none);
var _textDecorationUnderline = MXFunctionInvoke("TextDecoration.underline", () => TextDecoration.underline);
var _textDecorationOverline = MXFunctionInvoke("TextDecoration.overline", () => TextDecoration.overline);
var _textDecorationLineThrough = MXFunctionInvoke("TextDecoration.lineThrough", () => TextDecoration.lineThrough);
var _textDecorationCombine = MXFunctionInvoke(
  "TextDecoration.combine",
  ({
    core.dynamic decorations,
  }) =>
      TextDecoration.combine(
    toListT<TextDecoration>(decorations),
  ),
  [
    "decorations",
  ],
);
var _textDecorationStyle = MXFunctionInvoke(
    "TextDecorationStyle", ({String name, int index}) => MXTextDecorationStyle.parse(name, index), ["name", "index"]);
var _textHeightBehavior = MXFunctionInvoke(
  "TextHeightBehavior",
  ({
    core.bool applyHeightToFirstAscent = true,
    core.bool applyHeightToLastDescent = true,
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
    core.int encoded,
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
    core.dynamic decorationThickness,
    FontWeight fontWeight,
    FontStyle fontStyle,
    TextBaseline textBaseline,
    core.String fontFamily,
    core.dynamic fontFamilyFallback,
    core.dynamic fontSize,
    core.dynamic letterSpacing,
    core.dynamic wordSpacing,
    core.dynamic height,
    Locale locale,
    Paint background,
    Paint foreground,
    core.dynamic shadows,
    core.dynamic fontFeatures,
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
    fontFamilyFallback: toListT<core.String>(fontFamilyFallback),
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
    core.int maxLines,
    core.String fontFamily,
    core.dynamic fontSize,
    core.dynamic height,
    TextHeightBehavior textHeightBehavior,
    FontWeight fontWeight,
    FontStyle fontStyle,
    StrutStyle strutStyle,
    core.String ellipsis,
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
    core.String fontFamily,
    core.dynamic fontFamilyFallback,
    core.dynamic fontSize,
    core.dynamic height,
    core.dynamic leading,
    FontWeight fontWeight,
    FontStyle fontStyle,
    core.bool forceStrutHeight,
  }) =>
      StrutStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: toListT<core.String>(fontFamilyFallback),
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
    "TextDirection", ({String name, int index}) => MXTextDirection.parse(name, index), ["name", "index"]);
var _textBoxFromLTRBD = MXFunctionInvoke(
  "TextBox.fromLTRBD",
  ({
    core.dynamic left,
    core.dynamic top,
    core.dynamic right,
    core.dynamic bottom,
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
    "TextAffinity", ({String name, int index}) => MXTextAffinity.parse(name, index), ["name", "index"]);
var _textPosition = MXFunctionInvoke(
  "TextPosition",
  ({
    core.int offset,
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
    core.int start,
    core.int end,
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
var _textRangeEmpty = MXFunctionInvoke("TextRange.empty", () => TextRange.empty);
var _textRangeCollapsed = MXFunctionInvoke(
  "TextRange.collapsed",
  ({
    core.int offset,
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
    core.dynamic width,
  }) =>
      ParagraphConstraints(
    width: width?.toDouble(),
  ),
  [
    "width",
  ],
);
var _boxHeightStyle = MXFunctionInvoke(
    "BoxHeightStyle", ({String name, int index}) => MXBoxHeightStyle.parse(name, index), ["name", "index"]);
var _boxWidthStyle = MXFunctionInvoke(
    "BoxWidthStyle", ({String name, int index}) => MXBoxWidthStyle.parse(name, index), ["name", "index"]);
var _lineMetrics = MXFunctionInvoke(
  "LineMetrics",
  ({
    core.bool hardBreak,
    core.dynamic ascent,
    core.dynamic descent,
    core.dynamic unscaledAscent,
    core.dynamic height,
    core.dynamic width,
    core.dynamic left,
    core.dynamic baseline,
    core.int lineNumber,
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
var _tileMode =
    MXFunctionInvoke("TileMode", ({String name, int index}) => MXTileMode.parse(name, index), ["name", "index"]);
var _appLifecycleState = MXFunctionInvoke(
    "AppLifecycleState", ({String name, int index}) => MXAppLifecycleState.parse(name, index), ["name", "index"]);
var _windowPaddingZero = MXFunctionInvoke("WindowPadding.zero", () => WindowPadding.zero);
var _locale = MXFunctionInvoke(
  "Locale",
  ({
    core.String languageCode,
    core.String countryCode,
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
    core.String languageCode = 'und',
    core.String scriptCode,
    core.String countryCode,
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
var _brightness =
    MXFunctionInvoke("Brightness", ({String name, int index}) => MXBrightness.parse(name, index), ["name", "index"]);
var _callbackHandleFromRawHandle = MXFunctionInvoke(
  "CallbackHandle.fromRawHandle",
  ({
    core.int handle,
  }) =>
      CallbackHandle.fromRawHandle(
    handle,
  ),
  [
    "handle",
  ],
);
var _framePhase =
    MXFunctionInvoke("FramePhase", ({String name, int index}) => MXFramePhase.parse(name, index), ["name", "index"]);
var _frameTiming = MXFunctionInvoke(
  "FrameTiming",
  ({
    core.dynamic timestamps,
  }) =>
      FrameTiming(
    toListT<core.int>(timestamps),
  ),
  [
    "timestamps",
  ],
);
//MX Modified begin
// var _codeUnits = MXFunctionInvoke(
//   "CodeUnits",
//   ({
//     core.String string,
//   }) =>
//       CodeUnits(
//     string,
//   ),
//   [
//     "string",
//   ],
// );
// var _externalName = MXFunctionInvoke(
//   "ExternalName",
//   ({
//     core.String name,
//   }) =>
//       ExternalName(
//     name,
//   ),
//   [
//     "name",
//   ],
// );
// var _since = MXFunctionInvoke(
//   "Since",
//   ({
//     core.String version,
//   }) =>
//       Since(
//     version,
//   ),
//   [
//     "version",
//   ],
// );
// var _error = MXFunctionInvoke(
//   "Error",
//   () => Error(),
//   [],
// );
// var _notNullableError = MXFunctionInvoke(
//   "NotNullableError",
//   ({
//     core.String name,
//   }) =>
//       NotNullableError(
//     name,
//   ),
//   [
//     "name",
//   ],
// );
// var _httpStatusContinue =
//     MXFunctionInvoke("HttpStatus.continue_", () => HttpStatus.continue_);
// var _httpStatusSwitchingProtocols = MXFunctionInvoke(
//     "HttpStatus.switchingProtocols", () => HttpStatus.switchingProtocols);
// var _httpStatusProcessing =
//     MXFunctionInvoke("HttpStatus.processing", () => HttpStatus.processing);
// var _httpStatusOk = MXFunctionInvoke("HttpStatus.ok", () => HttpStatus.ok);
// var _httpStatusCreated =
//     MXFunctionInvoke("HttpStatus.created", () => HttpStatus.created);
// var _httpStatusAccepted =
//     MXFunctionInvoke("HttpStatus.accepted", () => HttpStatus.accepted);
// var _httpStatusNonAuthoritativeInformation = MXFunctionInvoke(
//     "HttpStatus.nonAuthoritativeInformation",
//     () => HttpStatus.nonAuthoritativeInformation);
// var _httpStatusNoContent =
//     MXFunctionInvoke("HttpStatus.noContent", () => HttpStatus.noContent);
// var _httpStatusResetContent =
//     MXFunctionInvoke("HttpStatus.resetContent", () => HttpStatus.resetContent);
// var _httpStatusPartialContent = MXFunctionInvoke(
//     "HttpStatus.partialContent", () => HttpStatus.partialContent);
// var _httpStatusMultiStatus =
//     MXFunctionInvoke("HttpStatus.multiStatus", () => HttpStatus.multiStatus);
// var _httpStatusAlreadyReported = MXFunctionInvoke(
//     "HttpStatus.alreadyReported", () => HttpStatus.alreadyReported);
// var _httpStatusImUsed =
//     MXFunctionInvoke("HttpStatus.imUsed", () => HttpStatus.imUsed);
// var _httpStatusMultipleChoices = MXFunctionInvoke(
//     "HttpStatus.multipleChoices", () => HttpStatus.multipleChoices);
// var _httpStatusMovedPermanently = MXFunctionInvoke(
//     "HttpStatus.movedPermanently", () => HttpStatus.movedPermanently);
// var _httpStatusFound =
//     MXFunctionInvoke("HttpStatus.found", () => HttpStatus.found);
// var _httpStatusMovedTemporarily = MXFunctionInvoke(
//     "HttpStatus.movedTemporarily", () => HttpStatus.movedTemporarily);
// var _httpStatusSeeOther =
//     MXFunctionInvoke("HttpStatus.seeOther", () => HttpStatus.seeOther);
// var _httpStatusNotModified =
//     MXFunctionInvoke("HttpStatus.notModified", () => HttpStatus.notModified);
// var _httpStatusUseProxy =
//     MXFunctionInvoke("HttpStatus.useProxy", () => HttpStatus.useProxy);
// var _httpStatusTemporaryRedirect = MXFunctionInvoke(
//     "HttpStatus.temporaryRedirect", () => HttpStatus.temporaryRedirect);
// var _httpStatusPermanentRedirect = MXFunctionInvoke(
//     "HttpStatus.permanentRedirect", () => HttpStatus.permanentRedirect);
// var _httpStatusBadRequest =
//     MXFunctionInvoke("HttpStatus.badRequest", () => HttpStatus.badRequest);
// var _httpStatusUnauthorized =
//     MXFunctionInvoke("HttpStatus.unauthorized", () => HttpStatus.unauthorized);
// var _httpStatusPaymentRequired = MXFunctionInvoke(
//     "HttpStatus.paymentRequired", () => HttpStatus.paymentRequired);
// var _httpStatusForbidden =
//     MXFunctionInvoke("HttpStatus.forbidden", () => HttpStatus.forbidden);
// var _httpStatusNotFound =
//     MXFunctionInvoke("HttpStatus.notFound", () => HttpStatus.notFound);
// var _httpStatusMethodNotAllowed = MXFunctionInvoke(
//     "HttpStatus.methodNotAllowed", () => HttpStatus.methodNotAllowed);
// var _httpStatusNotAcceptable = MXFunctionInvoke(
//     "HttpStatus.notAcceptable", () => HttpStatus.notAcceptable);
// var _httpStatusProxyAuthenticationRequired = MXFunctionInvoke(
//     "HttpStatus.proxyAuthenticationRequired",
//     () => HttpStatus.proxyAuthenticationRequired);
// var _httpStatusRequestTimeout = MXFunctionInvoke(
//     "HttpStatus.requestTimeout", () => HttpStatus.requestTimeout);
// var _httpStatusConflict =
//     MXFunctionInvoke("HttpStatus.conflict", () => HttpStatus.conflict);
// var _httpStatusGone =
//     MXFunctionInvoke("HttpStatus.gone", () => HttpStatus.gone);
// var _httpStatusLengthRequired = MXFunctionInvoke(
//     "HttpStatus.lengthRequired", () => HttpStatus.lengthRequired);
// var _httpStatusPreconditionFailed = MXFunctionInvoke(
//     "HttpStatus.preconditionFailed", () => HttpStatus.preconditionFailed);
// var _httpStatusRequestEntityTooLarge = MXFunctionInvoke(
//     "HttpStatus.requestEntityTooLarge", () => HttpStatus.requestEntityTooLarge);
// var _httpStatusRequestUriTooLong = MXFunctionInvoke(
//     "HttpStatus.requestUriTooLong", () => HttpStatus.requestUriTooLong);
// var _httpStatusUnsupportedMediaType = MXFunctionInvoke(
//     "HttpStatus.unsupportedMediaType", () => HttpStatus.unsupportedMediaType);
// var _httpStatusRequestedRangeNotSatisfiable = MXFunctionInvoke(
//     "HttpStatus.requestedRangeNotSatisfiable",
//     () => HttpStatus.requestedRangeNotSatisfiable);
// var _httpStatusExpectationFailed = MXFunctionInvoke(
//     "HttpStatus.expectationFailed", () => HttpStatus.expectationFailed);
// var _httpStatusMisdirectedRequest = MXFunctionInvoke(
//     "HttpStatus.misdirectedRequest", () => HttpStatus.misdirectedRequest);
// var _httpStatusUnprocessableEntity = MXFunctionInvoke(
//     "HttpStatus.unprocessableEntity", () => HttpStatus.unprocessableEntity);
// var _httpStatusLocked =
//     MXFunctionInvoke("HttpStatus.locked", () => HttpStatus.locked);
// var _httpStatusFailedDependency = MXFunctionInvoke(
//     "HttpStatus.failedDependency", () => HttpStatus.failedDependency);
// var _httpStatusUpgradeRequired = MXFunctionInvoke(
//     "HttpStatus.upgradeRequired", () => HttpStatus.upgradeRequired);
// var _httpStatusPreconditionRequired = MXFunctionInvoke(
//     "HttpStatus.preconditionRequired", () => HttpStatus.preconditionRequired);
// var _httpStatusTooManyRequests = MXFunctionInvoke(
//     "HttpStatus.tooManyRequests", () => HttpStatus.tooManyRequests);
// var _httpStatusRequestHeaderFieldsTooLarge = MXFunctionInvoke(
//     "HttpStatus.requestHeaderFieldsTooLarge",
//     () => HttpStatus.requestHeaderFieldsTooLarge);
// var _httpStatusConnectionClosedWithoutResponse = MXFunctionInvoke(
//     "HttpStatus.connectionClosedWithoutResponse",
//     () => HttpStatus.connectionClosedWithoutResponse);
// var _httpStatusUnavailableForLegalReasons = MXFunctionInvoke(
//     "HttpStatus.unavailableForLegalReasons",
//     () => HttpStatus.unavailableForLegalReasons);
// var _httpStatusClientClosedRequest = MXFunctionInvoke(
//     "HttpStatus.clientClosedRequest", () => HttpStatus.clientClosedRequest);
// var _httpStatusInternalServerError = MXFunctionInvoke(
//     "HttpStatus.internalServerError", () => HttpStatus.internalServerError);
// var _httpStatusNotImplemented = MXFunctionInvoke(
//     "HttpStatus.notImplemented", () => HttpStatus.notImplemented);
// var _httpStatusBadGateway =
//     MXFunctionInvoke("HttpStatus.badGateway", () => HttpStatus.badGateway);
// var _httpStatusServiceUnavailable = MXFunctionInvoke(
//     "HttpStatus.serviceUnavailable", () => HttpStatus.serviceUnavailable);
// var _httpStatusGatewayTimeout = MXFunctionInvoke(
//     "HttpStatus.gatewayTimeout", () => HttpStatus.gatewayTimeout);
// var _httpStatusHttpVersionNotSupported = MXFunctionInvoke(
//     "HttpStatus.httpVersionNotSupported",
//     () => HttpStatus.httpVersionNotSupported);
// var _httpStatusVariantAlsoNegotiates = MXFunctionInvoke(
//     "HttpStatus.variantAlsoNegotiates", () => HttpStatus.variantAlsoNegotiates);
// var _httpStatusInsufficientStorage = MXFunctionInvoke(
//     "HttpStatus.insufficientStorage", () => HttpStatus.insufficientStorage);
// var _httpStatusLoopDetected =
//     MXFunctionInvoke("HttpStatus.loopDetected", () => HttpStatus.loopDetected);
// var _httpStatusNotExtended =
//     MXFunctionInvoke("HttpStatus.notExtended", () => HttpStatus.notExtended);
// var _httpStatusNetworkAuthenticationRequired = MXFunctionInvoke(
//     "HttpStatus.networkAuthenticationRequired",
//     () => HttpStatus.networkAuthenticationRequired);
// var _httpStatusNetworkConnectTimeoutError = MXFunctionInvoke(
//     "HttpStatus.networkConnectTimeoutError",
//     () => HttpStatus.networkConnectTimeoutError);
// var _httpStatusCONTINUE =
//     MXFunctionInvoke("HttpStatus.CONTINUE", () => HttpStatus.CONTINUE);
// var _httpStatusSWITCHINGPROTOCOLS = MXFunctionInvoke(
//     "HttpStatus.SWITCHING_PROTOCOLS", () => HttpStatus.SWITCHING_PROTOCOLS);
// var _httpStatusOK = MXFunctionInvoke("HttpStatus.OK", () => HttpStatus.OK);
// var _httpStatusCREATED =
//     MXFunctionInvoke("HttpStatus.CREATED", () => HttpStatus.CREATED);
// var _httpStatusACCEPTED =
//     MXFunctionInvoke("HttpStatus.ACCEPTED", () => HttpStatus.ACCEPTED);
// var _httpStatusNONAUTHORITATIVEINFORMATION = MXFunctionInvoke(
//     "HttpStatus.NON_AUTHORITATIVE_INFORMATION",
//     () => HttpStatus.NON_AUTHORITATIVE_INFORMATION);
// var _httpStatusNOCONTENT =
//     MXFunctionInvoke("HttpStatus.NO_CONTENT", () => HttpStatus.NO_CONTENT);
// var _httpStatusRESETCONTENT = MXFunctionInvoke(
//     "HttpStatus.RESET_CONTENT", () => HttpStatus.RESET_CONTENT);
// var _httpStatusPARTIALCONTENT = MXFunctionInvoke(
//     "HttpStatus.PARTIAL_CONTENT", () => HttpStatus.PARTIAL_CONTENT);
// var _httpStatusMULTIPLECHOICES = MXFunctionInvoke(
//     "HttpStatus.MULTIPLE_CHOICES", () => HttpStatus.MULTIPLE_CHOICES);
// var _httpStatusMOVEDPERMANENTLY = MXFunctionInvoke(
//     "HttpStatus.MOVED_PERMANENTLY", () => HttpStatus.MOVED_PERMANENTLY);
// var _httpStatusFOUND =
//     MXFunctionInvoke("HttpStatus.FOUND", () => HttpStatus.FOUND);
// var _httpStatusMOVEDTEMPORARILY = MXFunctionInvoke(
//     "HttpStatus.MOVED_TEMPORARILY", () => HttpStatus.MOVED_TEMPORARILY);
// var _httpStatusSEEOTHER =
//     MXFunctionInvoke("HttpStatus.SEE_OTHER", () => HttpStatus.SEE_OTHER);
// var _httpStatusNOTMODIFIED =
//     MXFunctionInvoke("HttpStatus.NOT_MODIFIED", () => HttpStatus.NOT_MODIFIED);
// var _httpStatusUSEPROXY =
//     MXFunctionInvoke("HttpStatus.USE_PROXY", () => HttpStatus.USE_PROXY);
// var _httpStatusTEMPORARYREDIRECT = MXFunctionInvoke(
//     "HttpStatus.TEMPORARY_REDIRECT", () => HttpStatus.TEMPORARY_REDIRECT);
// var _httpStatusBADREQUEST =
//     MXFunctionInvoke("HttpStatus.BAD_REQUEST", () => HttpStatus.BAD_REQUEST);
// var _httpStatusUNAUTHORIZED =
//     MXFunctionInvoke("HttpStatus.UNAUTHORIZED", () => HttpStatus.UNAUTHORIZED);
// var _httpStatusPAYMENTREQUIRED = MXFunctionInvoke(
//     "HttpStatus.PAYMENT_REQUIRED", () => HttpStatus.PAYMENT_REQUIRED);
// var _httpStatusFORBIDDEN =
//     MXFunctionInvoke("HttpStatus.FORBIDDEN", () => HttpStatus.FORBIDDEN);
// var _httpStatusNOTFOUND =
//     MXFunctionInvoke("HttpStatus.NOT_FOUND", () => HttpStatus.NOT_FOUND);
// var _httpStatusMETHODNOTALLOWED = MXFunctionInvoke(
//     "HttpStatus.METHOD_NOT_ALLOWED", () => HttpStatus.METHOD_NOT_ALLOWED);
// var _httpStatusNOTACCEPTABLE = MXFunctionInvoke(
//     "HttpStatus.NOT_ACCEPTABLE", () => HttpStatus.NOT_ACCEPTABLE);
// var _httpStatusPROXYAUTHENTICATIONREQUIRED = MXFunctionInvoke(
//     "HttpStatus.PROXY_AUTHENTICATION_REQUIRED",
//     () => HttpStatus.PROXY_AUTHENTICATION_REQUIRED);
// var _httpStatusREQUESTTIMEOUT = MXFunctionInvoke(
//     "HttpStatus.REQUEST_TIMEOUT", () => HttpStatus.REQUEST_TIMEOUT);
// var _httpStatusCONFLICT =
//     MXFunctionInvoke("HttpStatus.CONFLICT", () => HttpStatus.CONFLICT);
// var _httpStatusGONE =
//     MXFunctionInvoke("HttpStatus.GONE", () => HttpStatus.GONE);
// var _httpStatusLENGTHREQUIRED = MXFunctionInvoke(
//     "HttpStatus.LENGTH_REQUIRED", () => HttpStatus.LENGTH_REQUIRED);
// var _httpStatusPRECONDITIONFAILED = MXFunctionInvoke(
//     "HttpStatus.PRECONDITION_FAILED", () => HttpStatus.PRECONDITION_FAILED);
// var _httpStatusREQUESTENTITYTOOLARGE = MXFunctionInvoke(
//     "HttpStatus.REQUEST_ENTITY_TOO_LARGE",
//     () => HttpStatus.REQUEST_ENTITY_TOO_LARGE);
// var _httpStatusREQUESTURITOOLONG = MXFunctionInvoke(
//     "HttpStatus.REQUEST_URI_TOO_LONG", () => HttpStatus.REQUEST_URI_TOO_LONG);
// var _httpStatusUNSUPPORTEDMEDIATYPE = MXFunctionInvoke(
//     "HttpStatus.UNSUPPORTED_MEDIA_TYPE",
//     () => HttpStatus.UNSUPPORTED_MEDIA_TYPE);
// var _httpStatusREQUESTEDRANGENOTSATISFIABLE = MXFunctionInvoke(
//     "HttpStatus.REQUESTED_RANGE_NOT_SATISFIABLE",
//     () => HttpStatus.REQUESTED_RANGE_NOT_SATISFIABLE);
// var _httpStatusEXPECTATIONFAILED = MXFunctionInvoke(
//     "HttpStatus.EXPECTATION_FAILED", () => HttpStatus.EXPECTATION_FAILED);
// var _httpStatusUPGRADEREQUIRED = MXFunctionInvoke(
//     "HttpStatus.UPGRADE_REQUIRED", () => HttpStatus.UPGRADE_REQUIRED);
// var _httpStatusINTERNALSERVERERROR = MXFunctionInvoke(
//     "HttpStatus.INTERNAL_SERVER_ERROR", () => HttpStatus.INTERNAL_SERVER_ERROR);
// var _httpStatusNOTIMPLEMENTED = MXFunctionInvoke(
//     "HttpStatus.NOT_IMPLEMENTED", () => HttpStatus.NOT_IMPLEMENTED);
// var _httpStatusBADGATEWAY =
//     MXFunctionInvoke("HttpStatus.BAD_GATEWAY", () => HttpStatus.BAD_GATEWAY);
// var _httpStatusSERVICEUNAVAILABLE = MXFunctionInvoke(
//     "HttpStatus.SERVICE_UNAVAILABLE", () => HttpStatus.SERVICE_UNAVAILABLE);
// var _httpStatusGATEWAYTIMEOUT = MXFunctionInvoke(
//     "HttpStatus.GATEWAY_TIMEOUT", () => HttpStatus.GATEWAY_TIMEOUT);
// var _httpStatusHTTPVERSIONNOTSUPPORTED = MXFunctionInvoke(
//     "HttpStatus.HTTP_VERSION_NOT_SUPPORTED",
//     () => HttpStatus.HTTP_VERSION_NOT_SUPPORTED);
// var _httpStatusNETWORKCONNECTTIMEOUTERROR = MXFunctionInvoke(
//     "HttpStatus.NETWORK_CONNECT_TIMEOUT_ERROR",
//     () => HttpStatus.NETWORK_CONNECT_TIMEOUT_ERROR);
// var _castStream = MXFunctionInvoke(
//   "CastStream",
//   ({
//     Stream<dynamic> source,
//   }) =>
//       CastStream(
//     source,
//   ),
//   [
//     "source",
//   ],
// );
// var _castStreamSubscription = MXFunctionInvoke(
//   "CastStreamSubscription",
//   ({
//     StreamSubscription<dynamic> source,
//   }) =>
//       CastStreamSubscription(
//     source,
//   ),
//   [
//     "source",
//   ],
// );
// var _castStreamTransformer = MXFunctionInvoke(
//   "CastStreamTransformer",
//   ({
//     StreamTransformer<dynamic, dynamic> source,
//   }) =>
//       CastStreamTransformer(
//     source,
//   ),
//   [
//     "source",
//   ],
// );
// var _castConverter = MXFunctionInvoke(
//   "CastConverter",
//   ({
//     Converter<dynamic, dynamic> source,
//   }) =>
//       CastConverter(
//     source,
//   ),
//   [
//     "source",
//   ],
// );
// var _castIterator = MXFunctionInvoke(
//   "CastIterator",
//   ({
//     core.Iterator<dynamic> source,
//   }) =>
//       CastIterator(
//     source,
//   ),
//   [
//     "source",
//   ],
// );
// var _castIterable = MXFunctionInvoke(
//   "CastIterable",
//   ({
//     core.Iterable<dynamic> source,
//   }) =>
//       CastIterable(
//     source,
//   ),
//   [
//     "source",
//   ],
// );
// var _castList = MXFunctionInvoke(
//   "CastList",
//   ({
//     core.dynamic source,
//   }) =>
//       CastList(
//     toListT<dynamic>(source),
//   ),
//   [
//     "source",
//   ],
// );
// var _castSet = MXFunctionInvoke(
//   "CastSet",
//   ({
//     core.Set<dynamic> source,
//     dynamic emptySet,
//   }) =>
//       CastSet(
//     source,
//     null,
//   ),
//   [
//     "source",
//     "emptySet",
//   ],
// );
// var _castMap = MXFunctionInvoke(
//   "CastMap",
//   ({
//     core.dynamic source,
//   }) =>
//       CastMap(
//     toMapT<dynamic, dynamic>(source),
//   ),
//   [
//     "source",
//   ],
// );
// var _castQueue = MXFunctionInvoke(
//   "CastQueue",
//   ({
//     collection.Queue<dynamic> source,
//   }) =>
//       CastQueue(
//     source,
//   ),
//   [
//     "source",
//   ],
// );
// var _lateInitializationErrorImpl = MXFunctionInvoke(
//   "LateInitializationErrorImpl",
//   ({
//     core.String message,
//   }) =>
//       LateInitializationErrorImpl(
//     message,
//   ),
//   [
//     "message",
//   ],
// );
// var _iterableGenerate = MXFunctionInvoke(
//   "Iterable.generate",
//   ({
//     core.int count,
//     dynamic generator,
//   }) =>
//       Iterable.generate(
//     count,
//     null,
//   ),
//   [
//     "count",
//     "generator",
//   ],
// );
// var _iterableEmpty = MXFunctionInvoke(
//   "Iterable.empty",
//   () => Iterable.empty(),
//   [],
// );
// var _subListIterable = MXFunctionInvoke(
//   "SubListIterable",
//   ({
//     core.Iterable<dynamic> iterable,
//     core.int start,
//     core.int endOrLength,
//   }) =>
//       SubListIterable(
//     iterable,
//     start,
//     endOrLength,
//   ),
//   [
//     "iterable",
//     "start",
//     "endOrLength",
//   ],
// );
// var _listIterator = MXFunctionInvoke(
//   "ListIterator",
//   ({
//     core.Iterable<dynamic> iterable,
//   }) =>
//       ListIterator(
//     iterable,
//   ),
//   [
//     "iterable",
//   ],
// );
// var _mappedIterable = MXFunctionInvoke(
//   "MappedIterable",
//   ({
//     core.Iterable<dynamic> iterable,
//     dynamic function,
//   }) =>
//       MappedIterable(
//     iterable,
//     null,
//   ),
//   [
//     "iterable",
//     "function",
//   ],
// );
// var _efficientLengthMappedIterable = MXFunctionInvoke(
//   "EfficientLengthMappedIterable",
//   ({
//     core.Iterable<dynamic> iterable,
//     dynamic function,
//   }) =>
//       EfficientLengthMappedIterable(
//     iterable,
//     null,
//   ),
//   [
//     "iterable",
//     "function",
//   ],
// );
// var _mappedIterator = MXFunctionInvoke(
//   "MappedIterator",
//   ({
//     core.Iterator<dynamic> iterator,
//     dynamic f,
//   }) =>
//       MappedIterator(
//     iterator,
//     null,
//   ),
//   [
//     "iterator",
//     "f",
//   ],
// );
// var _mappedListIterable = MXFunctionInvoke(
//   "MappedListIterable",
//   ({
//     core.Iterable<dynamic> source,
//     dynamic f,
//   }) =>
//       MappedListIterable(
//     source,
//     null,
//   ),
//   [
//     "source",
//     "f",
//   ],
// );
// var _whereIterable = MXFunctionInvoke(
//   "WhereIterable",
//   ({
//     core.Iterable<dynamic> iterable,
//     dynamic f,
//   }) =>
//       WhereIterable(
//     iterable,
//     null,
//   ),
//   [
//     "iterable",
//     "f",
//   ],
// );
// var _whereIterator = MXFunctionInvoke(
//   "WhereIterator",
//   ({
//     core.Iterator<dynamic> iterator,
//     dynamic f,
//   }) =>
//       WhereIterator(
//     iterator,
//     null,
//   ),
//   [
//     "iterator",
//     "f",
//   ],
// );
// var _expandIterable = MXFunctionInvoke(
//   "ExpandIterable",
//   ({
//     core.Iterable<dynamic> iterable,
//     dynamic f,
//   }) =>
//       ExpandIterable(
//     iterable,
//     null,
//   ),
//   [
//     "iterable",
//     "f",
//   ],
// );
// var _expandIterator = MXFunctionInvoke(
//   "ExpandIterator",
//   ({
//     core.Iterator<dynamic> iterator,
//     dynamic f,
//   }) =>
//       ExpandIterator(
//     iterator,
//     null,
//   ),
//   [
//     "iterator",
//     "f",
//   ],
// );
// var _takeIterable = MXFunctionInvoke(
//   "TakeIterable",
//   ({
//     core.Iterable<dynamic> iterable,
//     core.int takeCount,
//   }) =>
//       TakeIterable(
//     iterable,
//     takeCount,
//   ),
//   [
//     "iterable",
//     "takeCount",
//   ],
// );
// var _efficientLengthTakeIterable = MXFunctionInvoke(
//   "EfficientLengthTakeIterable",
//   ({
//     core.Iterable<dynamic> iterable,
//     core.int takeCount,
//   }) =>
//       EfficientLengthTakeIterable(
//     iterable,
//     takeCount,
//   ),
//   [
//     "iterable",
//     "takeCount",
//   ],
// );
// var _takeIterator = MXFunctionInvoke(
//   "TakeIterator",
//   ({
//     core.Iterator<dynamic> iterator,
//     core.int remaining,
//   }) =>
//       TakeIterator(
//     iterator,
//     remaining,
//   ),
//   [
//     "iterator",
//     "remaining",
//   ],
// );
// var _takeWhileIterable = MXFunctionInvoke(
//   "TakeWhileIterable",
//   ({
//     core.Iterable<dynamic> iterable,
//     dynamic f,
//   }) =>
//       TakeWhileIterable(
//     iterable,
//     null,
//   ),
//   [
//     "iterable",
//     "f",
//   ],
// );
// var _takeWhileIterator = MXFunctionInvoke(
//   "TakeWhileIterator",
//   ({
//     core.Iterator<dynamic> iterator,
//     dynamic f,
//   }) =>
//       TakeWhileIterator(
//     iterator,
//     null,
//   ),
//   [
//     "iterator",
//     "f",
//   ],
// );
// var _skipIterable = MXFunctionInvoke(
//   "SkipIterable",
//   ({
//     core.Iterable<dynamic> iterable,
//     core.int count,
//   }) =>
//       SkipIterable(
//     iterable,
//     count,
//   ),
//   [
//     "iterable",
//     "count",
//   ],
// );
// var _efficientLengthSkipIterable = MXFunctionInvoke(
//   "EfficientLengthSkipIterable",
//   ({
//     core.Iterable<dynamic> iterable,
//     core.int count,
//   }) =>
//       EfficientLengthSkipIterable(
//     iterable,
//     count,
//   ),
//   [
//     "iterable",
//     "count",
//   ],
// );
// var _skipIterator = MXFunctionInvoke(
//   "SkipIterator",
//   ({
//     core.Iterator<dynamic> iterator,
//     core.int skipCount,
//   }) =>
//       SkipIterator(
//     iterator,
//     skipCount,
//   ),
//   [
//     "iterator",
//     "skipCount",
//   ],
// );
// var _skipWhileIterable = MXFunctionInvoke(
//   "SkipWhileIterable",
//   ({
//     core.Iterable<dynamic> iterable,
//     dynamic f,
//   }) =>
//       SkipWhileIterable(
//     iterable,
//     null,
//   ),
//   [
//     "iterable",
//     "f",
//   ],
// );
// var _skipWhileIterator = MXFunctionInvoke(
//   "SkipWhileIterator",
//   ({
//     core.Iterator<dynamic> iterator,
//     dynamic f,
//   }) =>
//       SkipWhileIterator(
//     iterator,
//     null,
//   ),
//   [
//     "iterator",
//     "f",
//   ],
// );
// var _emptyIterable = MXFunctionInvoke(
//   "EmptyIterable",
//   () => EmptyIterable(),
//   [],
// );
// var _emptyIterator = MXFunctionInvoke(
//   "EmptyIterator",
//   () => EmptyIterator(),
//   [],
// );
// var _followedByIterable = MXFunctionInvoke(
//   "FollowedByIterable",
//   ({
//     core.Iterable<dynamic> first,
//     core.Iterable<dynamic> second,
//   }) =>
//       FollowedByIterable(
//     first,
//     second,
//   ),
//   [
//     "first",
//     "second",
//   ],
// );
// var _followedByIterableFirstEfficient = MXFunctionInvoke(
//   "FollowedByIterable.firstEfficient",
//   ({
//     internal.EfficientLengthIterable<dynamic> first,
//     core.Iterable<dynamic> second,
//   }) =>
//       FollowedByIterable.firstEfficient(
//     first,
//     second,
//   ),
//   [
//     "first",
//     "second",
//   ],
// );
// var _efficientLengthFollowedByIterable = MXFunctionInvoke(
//   "EfficientLengthFollowedByIterable",
//   ({
//     internal.EfficientLengthIterable<dynamic> first,
//     internal.EfficientLengthIterable<dynamic> second,
//   }) =>
//       EfficientLengthFollowedByIterable(
//     first,
//     second,
//   ),
//   [
//     "first",
//     "second",
//   ],
// );
// var _followedByIterator = MXFunctionInvoke(
//   "FollowedByIterator",
//   ({
//     core.Iterable<dynamic> first,
//     core.Iterable<dynamic> nextIterable,
//   }) =>
//       FollowedByIterator(
//     first,
//     nextIterable,
//   ),
//   [
//     "first",
//     "nextIterable",
//   ],
// );
// var _whereTypeIterable = MXFunctionInvoke(
//   "WhereTypeIterable",
//   ({
//     core.Iterable<core.Object> source,
//   }) =>
//       WhereTypeIterable(
//     source,
//   ),
//   [
//     "source",
//   ],
// );
// var _whereTypeIterator = MXFunctionInvoke(
//   "WhereTypeIterator",
//   ({
//     core.Iterator<core.Object> source,
//   }) =>
//       WhereTypeIterator(
//     source,
//   ),
//   [
//     "source",
//   ],
// );
// var _listMapView = MXFunctionInvoke(
//   "ListMapView",
//   ({
//     core.dynamic values,
//   }) =>
//       ListMapView(
//     toListT<dynamic>(values),
//   ),
//   [
//     "values",
//   ],
// );
// var _reversedListIterable = MXFunctionInvoke(
//   "ReversedListIterable",
//   ({
//     core.Iterable<dynamic> source,
//   }) =>
//       ReversedListIterable(
//     source,
//   ),
//   [
//     "source",
//   ],
// );
// var _linkedList = MXFunctionInvoke(
//   "LinkedList",
//   () => LinkedList(),
//   [],
// );
// var _linkedListEntry = MXFunctionInvoke(
//   "LinkedListEntry",
//   () => LinkedListEntry(),
//   [],
// );
// var _sort = MXFunctionInvoke(
//   "Sort",
//   () => Sort(),
//   [],
// );
// var _sortSort = MXFunctionInvoke(
//   "Sort.sort",
//   ({
//     core.dynamic a,
//     dynamic compare,
//   }) =>
//       Sort.sort(
//     toListT<dynamic>(a),
//     null,
//   ),
//   [
//     "a",
//     "compare",
//   ],
// );
// var _sortSortRange = MXFunctionInvoke(
//   "Sort.sortRange",
//   ({
//     core.dynamic a,
//     core.int from,
//     core.int to,
//     dynamic compare,
//   }) =>
//       Sort.sortRange(
//     toListT<dynamic>(a),
//     from,
//     to,
//     null,
//   ),
//   [
//     "a",
//     "from",
//     "to",
//     "compare",
//   ],
// );
// var _symbol = MXFunctionInvoke(
//   "Symbol",
//   ({
//     core.String name,
//   }) =>
//       Symbol(
//     name,
//   ),
//   [
//     "name",
//   ],
// );
// var _symbolReservedWordRE =
//     MXFunctionInvoke("Symbol.reservedWordRE", () => Symbol.reservedWordRE);
// var _symbolPublicIdentifierRE = MXFunctionInvoke(
//     "Symbol.publicIdentifierRE", () => Symbol.publicIdentifierRE);
// var _symbolIdentifierRE =
//     MXFunctionInvoke("Symbol.identifierRE", () => Symbol.identifierRE);
// var _symbolOperatorRE =
//     MXFunctionInvoke("Symbol.operatorRE", () => Symbol.operatorRE);
// var _symbolUnvalidated = MXFunctionInvoke(
//   "Symbol.unvalidated",
//   ({
//     core.String name,
//   }) =>
//       Symbol.unvalidated(
//     name,
//   ),
//   [
//     "name",
//   ],
// );
// var _symbolValidated = MXFunctionInvoke(
//   "Symbol.validated",
//   ({
//     core.String name,
//   }) =>
//       Symbol.validated(
//     name,
//   ),
//   [
//     "name",
//   ],
// );
//MX Modified end
var _deprecated = MXFunctionInvoke(
  "Deprecated",
  ({
    core.String message,
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
    core.String message,
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
    core.String name,
    core.Object options,
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
    core.num value,
  }) =>
      BigInt.from(
    value,
  ),
  [
    "value",
  ],
);
var _dateTime = MXFunctionInvoke(
  "DateTime",
  ({
    core.int year,
    core.int month,
    core.int day,
    core.int hour,
    core.int minute,
    core.int second,
    core.int millisecond,
    core.int microsecond,
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
var _dateTimeMonday = MXFunctionInvoke("DateTime.monday", () => DateTime.monday);
var _dateTimeTuesday = MXFunctionInvoke("DateTime.tuesday", () => DateTime.tuesday);
var _dateTimeWednesday = MXFunctionInvoke("DateTime.wednesday", () => DateTime.wednesday);
var _dateTimeThursday = MXFunctionInvoke("DateTime.thursday", () => DateTime.thursday);
var _dateTimeFriday = MXFunctionInvoke("DateTime.friday", () => DateTime.friday);
var _dateTimeSaturday = MXFunctionInvoke("DateTime.saturday", () => DateTime.saturday);
var _dateTimeSunday = MXFunctionInvoke("DateTime.sunday", () => DateTime.sunday);
var _dateTimeDaysPerWeek = MXFunctionInvoke("DateTime.daysPerWeek", () => DateTime.daysPerWeek);
var _dateTimeJanuary = MXFunctionInvoke("DateTime.january", () => DateTime.january);
var _dateTimeFebruary = MXFunctionInvoke("DateTime.february", () => DateTime.february);
var _dateTimeMarch = MXFunctionInvoke("DateTime.march", () => DateTime.march);
var _dateTimeApril = MXFunctionInvoke("DateTime.april", () => DateTime.april);
var _dateTimeMay = MXFunctionInvoke("DateTime.may", () => DateTime.may);
var _dateTimeJune = MXFunctionInvoke("DateTime.june", () => DateTime.june);
var _dateTimeJuly = MXFunctionInvoke("DateTime.july", () => DateTime.july);
var _dateTimeAugust = MXFunctionInvoke("DateTime.august", () => DateTime.august);
var _dateTimeSeptember = MXFunctionInvoke("DateTime.september", () => DateTime.september);
var _dateTimeOctober = MXFunctionInvoke("DateTime.october", () => DateTime.october);
var _dateTimeNovember = MXFunctionInvoke("DateTime.november", () => DateTime.november);
var _dateTimeDecember = MXFunctionInvoke("DateTime.december", () => DateTime.december);
var _dateTimeMonthsPerYear = MXFunctionInvoke("DateTime.monthsPerYear", () => DateTime.monthsPerYear);
var _dateTimeUtc = MXFunctionInvoke(
  "DateTime.utc",
  ({
    core.int year,
    core.int month,
    core.int day,
    core.int hour,
    core.int minute,
    core.int second,
    core.int millisecond,
    core.int microsecond,
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
    core.int millisecondsSinceEpoch,
    core.bool isUtc = false,
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
    core.int microsecondsSinceEpoch,
    core.bool isUtc = false,
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
var _duration = MXFunctionInvoke(
  "Duration",
  ({
    core.int days = 0,
    core.int hours = 0,
    core.int minutes = 0,
    core.int seconds = 0,
    core.int milliseconds = 0,
    core.int microseconds = 0,
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
var _durationMicrosecondsPerMillisecond =
    MXFunctionInvoke("Duration.microsecondsPerMillisecond", () => Duration.microsecondsPerMillisecond);
var _durationMillisecondsPerSecond =
    MXFunctionInvoke("Duration.millisecondsPerSecond", () => Duration.millisecondsPerSecond);
var _durationSecondsPerMinute = MXFunctionInvoke("Duration.secondsPerMinute", () => Duration.secondsPerMinute);
var _durationMinutesPerHour = MXFunctionInvoke("Duration.minutesPerHour", () => Duration.minutesPerHour);
var _durationHoursPerDay = MXFunctionInvoke("Duration.hoursPerDay", () => Duration.hoursPerDay);
var _durationMicrosecondsPerSecond =
    MXFunctionInvoke("Duration.microsecondsPerSecond", () => Duration.microsecondsPerSecond);
var _durationMicrosecondsPerMinute =
    MXFunctionInvoke("Duration.microsecondsPerMinute", () => Duration.microsecondsPerMinute);
var _durationMicrosecondsPerHour = MXFunctionInvoke("Duration.microsecondsPerHour", () => Duration.microsecondsPerHour);
var _durationMicrosecondsPerDay = MXFunctionInvoke("Duration.microsecondsPerDay", () => Duration.microsecondsPerDay);
var _durationMillisecondsPerMinute =
    MXFunctionInvoke("Duration.millisecondsPerMinute", () => Duration.millisecondsPerMinute);
var _durationMillisecondsPerHour = MXFunctionInvoke("Duration.millisecondsPerHour", () => Duration.millisecondsPerHour);
var _durationMillisecondsPerDay = MXFunctionInvoke("Duration.millisecondsPerDay", () => Duration.millisecondsPerDay);
var _durationSecondsPerHour = MXFunctionInvoke("Duration.secondsPerHour", () => Duration.secondsPerHour);
var _durationSecondsPerDay = MXFunctionInvoke("Duration.secondsPerDay", () => Duration.secondsPerDay);
var _durationMinutesPerDay = MXFunctionInvoke("Duration.minutesPerDay", () => Duration.minutesPerDay);
var _durationZero = MXFunctionInvoke("Duration.zero", () => Duration.zero);
var _assertionError = MXFunctionInvoke(
  "AssertionError",
  ({
    core.Object message,
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
    core.String name,
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
    core.String name,
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
    core.int index,
    dynamic indexable,
    core.String name,
    core.String message,
    core.int length,
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
    core.num value,
    core.String name,
    core.String message,
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
    core.num invalidValue,
    core.int minValue,
    core.int maxValue,
    core.String name,
    core.String message,
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
    core.int invalidValue,
    dynamic indexable,
    core.String name,
    core.String message,
    core.int length,
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
    core.String className,
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
    core.Object receiver,
    core.Symbol memberName,
    core.dynamic positionalArguments,
    core.dynamic namedArguments,
  }) =>
      NoSuchMethodError(
    receiver,
    memberName,
    toListT<dynamic>(positionalArguments),
    toMapT<core.Symbol, dynamic>(namedArguments),
  ),
  [
    "receiver",
    "memberName",
    "positionalArguments",
    "namedArguments",
  ],
);
var _noSuchMethodErrorWithInvocation = MXFunctionInvoke(
  "NoSuchMethodError.withInvocation",
  ({
    core.Object receiver,
    core.Invocation invocation,
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
    core.String message,
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
    core.String message,
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
    core.String message,
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
    core.Object modifiedObject,
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
    core.String variableName,
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
    core.String message,
    dynamic source,
    core.int offset,
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
    core.String name,
  }) =>
      Expando(
    name,
  ),
  [
    "name",
  ],
);
var _invocationMethod = MXFunctionInvoke(
  "Invocation.method",
  ({
    core.Symbol memberName,
    core.Iterable<core.Object> positionalArguments,
    core.dynamic namedArguments,
  }) =>
      Invocation.method(
    memberName,
    positionalArguments,
    toMapT<core.Symbol, core.Object>(namedArguments),
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
    core.Symbol memberName,
    core.Iterable<core.Type> typeArguments,
    core.Iterable<core.Object> positionalArguments,
    core.dynamic namedArguments,
  }) =>
      Invocation.genericMethod(
    memberName,
    typeArguments,
    positionalArguments,
    toMapT<core.Symbol, core.Object>(namedArguments),
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
    core.Symbol name,
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
    core.Symbol memberName,
    core.Object argument,
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
    core.String source,
    core.bool multiLine = false,
    core.bool caseSensitive = true,
    core.bool unicode = false,
    core.bool dotAll = false,
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
    core.Iterable<dynamic> elements,
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
    core.Iterable<dynamic> elements,
  }) =>
      Set.of(
    elements,
  ),
  [
    "elements",
  ],
);
var _stackTraceEmpty = MXFunctionInvoke("StackTrace.empty", () => StackTrace.empty);
var _stackTraceFromString = MXFunctionInvoke(
  "StackTrace.fromString",
  ({
    core.String stackTraceString,
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
var _runes = MXFunctionInvoke(
  "Runes",
  ({
    core.String string,
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
    core.String string,
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
    core.String string,
    core.int index,
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
    core.Object content,
  }) =>
      StringBuffer(
    content,
  ),
  [
    "content",
  ],
);
//MX Modified begin
// var _symbolUnaryMinus =
//     MXFunctionInvoke("Symbol.unaryMinus", () => Symbol.unaryMinus);
// var _symbolEmpty = MXFunctionInvoke("Symbol.empty", () => Symbol.empty);
// var _symbol = MXFunctionInvoke(
//   "Symbol",
//   ({
//     core.String name,
//   }) =>
//       Symbol(
//     name,
//   ),
//   [
//     "name",
//   ],
// );
//MX Modified end
var _uri = MXFunctionInvoke(
  "Uri",
  ({
    core.String scheme,
    core.String userInfo,
    core.String host,
    core.int port,
    core.String path,
    core.Iterable<core.String> pathSegments,
    core.String query,
    core.dynamic queryParameters,
    core.String fragment,
  }) =>
      Uri(
    scheme: scheme,
    userInfo: userInfo,
    host: host,
    port: port,
    path: path,
    pathSegments: pathSegments,
    query: query,
    queryParameters: toMapT<core.String, dynamic>(queryParameters),
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
    core.String authority,
    core.String unencodedPath,
    core.dynamic queryParameters,
  }) =>
      Uri.http(
    authority,
    unencodedPath,
    toMapT<core.String, core.String>(queryParameters),
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
    core.String authority,
    core.String unencodedPath,
    core.dynamic queryParameters,
  }) =>
      Uri.https(
    authority,
    unencodedPath,
    toMapT<core.String, core.String>(queryParameters),
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
    core.String path,
    core.bool windows,
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
    core.String path,
    core.bool windows,
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
    core.String content,
    core.String mimeType,
    Encoding encoding,
    core.dynamic parameters,
    core.bool base64 = false,
  }) =>
      Uri.dataFromString(
    content,
    mimeType: mimeType,
    encoding: encoding,
    parameters: toMapT<core.String, core.String>(parameters),
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
    core.dynamic bytes,
    core.String mimeType = 'application/octet-stream',
    core.dynamic parameters,
    core.bool percentEncoded = false,
  }) =>
      Uri.dataFromBytes(
    toListT<core.int>(bytes),
    mimeType: mimeType,
    parameters: toMapT<core.String, core.String>(parameters),
    percentEncoded: percentEncoded,
  ),
  [
    "bytes",
    "mimeType",
    "parameters",
    "percentEncoded",
  ],
);
//MX Modifed begin
// var _uriDataFromString = MXFunctionInvoke(
//   "UriData.fromString",
//   ({
//     core.String content,
//     core.String mimeType,
//     Encoding encoding,
//     core.dynamic parameters,
//     core.bool base64 = false,
//   }) =>
//       UriData.fromString(
//     content,
//     mimeType: mimeType,
//     encoding: encoding,
//     parameters: toMapT<core.String, core.String>(parameters),
//     base64: base64,
//   ),
//   [
//     "content",
//     "mimeType",
//     "encoding",
//     "parameters",
//     "base64",
//   ],
// );
// var _uriDataFromBytes = MXFunctionInvoke(
//   "UriData.fromBytes",
//   ({
//     core.dynamic bytes,
//     core.String mimeType = 'application/octet-stream',
//     core.dynamic parameters,
//     core.bool percentEncoded = false,
//   }) =>
//       UriData.fromBytes(
//     toListT<core.int>(bytes),
//     mimeType: mimeType,
//     parameters: toMapT<core.String, core.String>(parameters),
//     percentEncoded: percentEncoded,
//   ),
//   [
//     "bytes",
//     "mimeType",
//     "parameters",
//     "percentEncoded",
//   ],
// );
//MX Modifed end
var _uriDataFromUri = MXFunctionInvoke(
  "UriData.fromUri",
  ({
    core.Uri uri,
  }) =>
      UriData.fromUri(
    uri,
  ),
  [
    "uri",
  ],
);

//MX Modifed begin
// var _jS = MXFunctionInvoke(
//   "JS",
//   ({
//     core.String name,
//   }) =>
//       JS(
//     name,
//   ),
//   [
//     "name",
//   ],
// );
//MX Modifed end
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

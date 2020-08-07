//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/text_selection.dart';
import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/constants.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'package:flutter/src/widgets/visibility.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextSelectionSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textSelectionHandleType.funName] = _textSelectionHandleType;
  m[_textSelectionOverlay.funName] = _textSelectionOverlay;
  m[_textSelectionGestureDetectorBuilder.funName] = _textSelectionGestureDetectorBuilder;
  m[_textSelectionGestureDetector.funName] = _textSelectionGestureDetector;
  return m;
}
var _textSelectionHandleType = MXFunctionInvoke(
    "TextSelectionHandleType",
    ({Map args}) => MXTextSelectionHandleType.parse(args),
  );
var _textSelectionOverlay = MXFunctionInvoke(
    "TextSelectionOverlay",
    (
      {
      TextEditingValue value,
      BuildContext context,
      Widget debugRequiredFor,
      LayerLink toolbarLayerLink,
      LayerLink startHandleLayerLink,
      LayerLink endHandleLayerLink,
      RenderEditable renderObject,
      TextSelectionControls selectionControls,
      bool handlesVisible = false,
      TextSelectionDelegate selectionDelegate,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      dynamic onSelectionHandleTapped,
      }
    ) =>
      TextSelectionOverlay(
      value: value,
      context: context,
      debugRequiredFor: debugRequiredFor,
      toolbarLayerLink: toolbarLayerLink,
      startHandleLayerLink: startHandleLayerLink,
      endHandleLayerLink: endHandleLayerLink,
      renderObject: renderObject,
      selectionControls: selectionControls,
      handlesVisible: handlesVisible,
      selectionDelegate: selectionDelegate,
      dragStartBehavior: dragStartBehavior,
      onSelectionHandleTapped: createVoidCallbackClosure(_textSelectionOverlay.buildOwner, onSelectionHandleTapped),
    ),
);
var _textSelectionGestureDetectorBuilder = MXFunctionInvoke(
    "TextSelectionGestureDetectorBuilder",
    (
      {
      TextSelectionGestureDetectorBuilderDelegate delegate,
      }
    ) =>
      TextSelectionGestureDetectorBuilder(
      delegate: delegate,
    ),
);
var _textSelectionGestureDetector = MXFunctionInvoke(
    "TextSelectionGestureDetector",
    (
      {
      Key key,
      dynamic onTapDown,
      dynamic onForcePressStart,
      dynamic onForcePressEnd,
      dynamic onSingleTapUp,
      dynamic onSingleTapCancel,
      dynamic onSingleLongTapStart,
      dynamic onSingleLongTapMoveUpdate,
      dynamic onSingleLongTapEnd,
      dynamic onDoubleTapDown,
      dynamic onDragSelectionStart,
      dynamic onDragSelectionUpdate,
      dynamic onDragSelectionEnd,
      HitTestBehavior behavior,
      Widget child,
      }
    ) =>
      TextSelectionGestureDetector(
      key: key,
      onTapDown: createValueChangedGenericClosure<TapDownDetails>(_textSelectionGestureDetector.buildOwner, onTapDown),
      onForcePressStart: createValueChangedGenericClosure<ForcePressDetails>(_textSelectionGestureDetector.buildOwner, onForcePressStart),
      onForcePressEnd: createValueChangedGenericClosure<ForcePressDetails>(_textSelectionGestureDetector.buildOwner, onForcePressEnd),
      onSingleTapUp: createValueChangedGenericClosure<TapUpDetails>(_textSelectionGestureDetector.buildOwner, onSingleTapUp),
      onSingleTapCancel: createVoidCallbackClosure(_textSelectionGestureDetector.buildOwner, onSingleTapCancel),
      onSingleLongTapStart: createValueChangedGenericClosure<LongPressStartDetails>(_textSelectionGestureDetector.buildOwner, onSingleLongTapStart),
      onSingleLongTapMoveUpdate: createValueChangedGenericClosure<LongPressMoveUpdateDetails>(_textSelectionGestureDetector.buildOwner, onSingleLongTapMoveUpdate),
      onSingleLongTapEnd: createValueChangedGenericClosure<LongPressEndDetails>(_textSelectionGestureDetector.buildOwner, onSingleLongTapEnd),
      onDoubleTapDown: createValueChangedGenericClosure<TapDownDetails>(_textSelectionGestureDetector.buildOwner, onDoubleTapDown),
      onDragSelectionStart: createValueChangedGenericClosure<DragStartDetails>(_textSelectionGestureDetector.buildOwner, onDragSelectionStart),
      onDragSelectionUpdate: createVoidTwoParamsClosure<DragStartDetails, DragUpdateDetails>(_textSelectionGestureDetector.buildOwner, onDragSelectionUpdate),
      onDragSelectionEnd: createValueChangedGenericClosure<DragEndDetails>(_textSelectionGestureDetector.buildOwner, onDragSelectionEnd),
      behavior: behavior,
      child: child,
    ),
);
class MXTextSelectionHandleType {
  static Map str2VMap = {
    'TextSelectionHandleType.left': TextSelectionHandleType.left,
    'TextSelectionHandleType.right': TextSelectionHandleType.right,
    'TextSelectionHandleType.collapsed': TextSelectionHandleType.collapsed,
  };
  static TextSelectionHandleType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

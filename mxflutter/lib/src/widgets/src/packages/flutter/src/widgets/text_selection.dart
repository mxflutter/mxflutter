//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
import 'package:flutter/src/widgets/binding.dart';
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
  m[_toolbarItemsParentData.funName] = _toolbarItemsParentData;
  m[_textSelectionOverlay.funName] = _textSelectionOverlay;
  m[_textSelectionOverlayFadeDuration.funName] = _textSelectionOverlayFadeDuration;
  m[_textSelectionGestureDetectorBuilder.funName] = _textSelectionGestureDetectorBuilder;
  m[_textSelectionGestureDetector.funName] = _textSelectionGestureDetector;
  m[_clipboardStatusNotifier.funName] = _clipboardStatusNotifier;
  m[_clipboardStatus.funName] = _clipboardStatus;
  return m;
}

var _textSelectionHandleType = MXFunctionInvoke("TextSelectionHandleType",
    ({String name, int index}) => MXTextSelectionHandleType.parse(name, index), ["name", "index"]);
var _toolbarItemsParentData = MXFunctionInvoke(
  "ToolbarItemsParentData",
  () => ToolbarItemsParentData(),
  [],
);
var _textSelectionOverlay = MXFunctionInvoke(
  "TextSelectionOverlay",
  ({
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
    ClipboardStatusNotifier clipboardStatus,
  }) =>
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
    clipboardStatus: clipboardStatus,
  ),
  [
    "value",
    "context",
    "debugRequiredFor",
    "toolbarLayerLink",
    "startHandleLayerLink",
    "endHandleLayerLink",
    "renderObject",
    "selectionControls",
    "handlesVisible",
    "selectionDelegate",
    "dragStartBehavior",
    "onSelectionHandleTapped",
    "clipboardStatus",
  ],
);
var _textSelectionOverlayFadeDuration =
    MXFunctionInvoke("TextSelectionOverlay.fadeDuration", () => TextSelectionOverlay.fadeDuration);
var _textSelectionGestureDetectorBuilder = MXFunctionInvoke(
  "TextSelectionGestureDetectorBuilder",
  ({
    TextSelectionGestureDetectorBuilderDelegate delegate,
  }) =>
      TextSelectionGestureDetectorBuilder(
    delegate: delegate,
  ),
  [
    "delegate",
  ],
);
var _textSelectionGestureDetector = MXFunctionInvoke(
  "TextSelectionGestureDetector",
  ({
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
  }) =>
      TextSelectionGestureDetector(
    key: key,
    onTapDown: createValueChangedGenericClosure<TapDownDetails>(_textSelectionGestureDetector.buildOwner, onTapDown),
    onForcePressStart: createValueChangedGenericClosure<ForcePressDetails>(
        _textSelectionGestureDetector.buildOwner, onForcePressStart),
    onForcePressEnd:
        createValueChangedGenericClosure<ForcePressDetails>(_textSelectionGestureDetector.buildOwner, onForcePressEnd),
    onSingleTapUp:
        createValueChangedGenericClosure<TapUpDetails>(_textSelectionGestureDetector.buildOwner, onSingleTapUp),
    onSingleTapCancel: createVoidCallbackClosure(_textSelectionGestureDetector.buildOwner, onSingleTapCancel),
    onSingleLongTapStart: createValueChangedGenericClosure<LongPressStartDetails>(
        _textSelectionGestureDetector.buildOwner, onSingleLongTapStart),
    onSingleLongTapMoveUpdate: createValueChangedGenericClosure<LongPressMoveUpdateDetails>(
        _textSelectionGestureDetector.buildOwner, onSingleLongTapMoveUpdate),
    onSingleLongTapEnd: createValueChangedGenericClosure<LongPressEndDetails>(
        _textSelectionGestureDetector.buildOwner, onSingleLongTapEnd),
    onDoubleTapDown:
        createValueChangedGenericClosure<TapDownDetails>(_textSelectionGestureDetector.buildOwner, onDoubleTapDown),
    onDragSelectionStart: createValueChangedGenericClosure<DragStartDetails>(
        _textSelectionGestureDetector.buildOwner, onDragSelectionStart),
    onDragSelectionUpdate: createVoidTwoParamsClosure<DragStartDetails, DragUpdateDetails>(
        _textSelectionGestureDetector.buildOwner, onDragSelectionUpdate),
    onDragSelectionEnd:
        createValueChangedGenericClosure<DragEndDetails>(_textSelectionGestureDetector.buildOwner, onDragSelectionEnd),
    behavior: behavior,
    child: child,
  ),
  [
    "key",
    "onTapDown",
    "onForcePressStart",
    "onForcePressEnd",
    "onSingleTapUp",
    "onSingleTapCancel",
    "onSingleLongTapStart",
    "onSingleLongTapMoveUpdate",
    "onSingleLongTapEnd",
    "onDoubleTapDown",
    "onDragSelectionStart",
    "onDragSelectionUpdate",
    "onDragSelectionEnd",
    "behavior",
    "child",
  ],
);
var _clipboardStatusNotifier = MXFunctionInvoke(
  "ClipboardStatusNotifier",
  ({
    ClipboardStatus value = ClipboardStatus.unknown,
  }) =>
      ClipboardStatusNotifier(
    value: value,
  ),
  [
    "__mx_value",
  ],
);
var _clipboardStatus = MXFunctionInvoke(
    "ClipboardStatus", ({String name, int index}) => MXClipboardStatus.parse(name, index), ["name", "index"]);

class MXTextSelectionHandleType {
  static TextSelectionHandleType parse(String name, int index) {
    switch (name) {
      case 'TextSelectionHandleType.left':
        return TextSelectionHandleType.left;
      case 'TextSelectionHandleType.right':
        return TextSelectionHandleType.right;
      case 'TextSelectionHandleType.collapsed':
        return TextSelectionHandleType.collapsed;
    }
    return null;
  }
}

class MXClipboardStatus {
  static ClipboardStatus parse(String name, int index) {
    switch (name) {
      case 'ClipboardStatus.pasteable':
        return ClipboardStatus.pasteable;
      case 'ClipboardStatus.unknown':
        return ClipboardStatus.unknown;
      case 'ClipboardStatus.notPasteable':
        return ClipboardStatus.notPasteable;
    }
    return null;
  }
}

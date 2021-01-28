//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerGestureDetectorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_gestureRecognizerFactoryWithHandlers.funName] = _gestureRecognizerFactoryWithHandlers;
  m[_gestureDetector.funName] = _gestureDetector;
  m[_rawGestureDetector.funName] = _rawGestureDetector;
  m[_rawGestureDetectorState.funName] = _rawGestureDetectorState;
  return m;
}

var _gestureRecognizerFactoryWithHandlers = MXFunctionInvoke(
  "GestureRecognizerFactoryWithHandlers",
  ({
    dynamic constructor,
    dynamic initializer,
  }) =>
      GestureRecognizerFactoryWithHandlers(
    null,
    createValueChangedGenericClosure<GestureRecognizer>(_gestureRecognizerFactoryWithHandlers.buildOwner, initializer),
  ),
  [
    "__mx_constructor",
    "initializer",
  ],
);
var _gestureDetector = MXFunctionInvoke(
  "GestureDetector",
  ({
    Key key,
    Widget child,
    dynamic onTapDown,
    dynamic onTapUp,
    dynamic onTap,
    dynamic onTapCancel,
    dynamic onSecondaryTap,
    dynamic onSecondaryTapDown,
    dynamic onSecondaryTapUp,
    dynamic onSecondaryTapCancel,
    dynamic onDoubleTap,
    dynamic onLongPress,
    dynamic onLongPressStart,
    dynamic onLongPressMoveUpdate,
    dynamic onLongPressUp,
    dynamic onLongPressEnd,
    dynamic onSecondaryLongPress,
    dynamic onSecondaryLongPressStart,
    dynamic onSecondaryLongPressMoveUpdate,
    dynamic onSecondaryLongPressUp,
    dynamic onSecondaryLongPressEnd,
    dynamic onVerticalDragDown,
    dynamic onVerticalDragStart,
    dynamic onVerticalDragUpdate,
    dynamic onVerticalDragEnd,
    dynamic onVerticalDragCancel,
    dynamic onHorizontalDragDown,
    dynamic onHorizontalDragStart,
    dynamic onHorizontalDragUpdate,
    dynamic onHorizontalDragEnd,
    dynamic onHorizontalDragCancel,
    dynamic onForcePressStart,
    dynamic onForcePressPeak,
    dynamic onForcePressUpdate,
    dynamic onForcePressEnd,
    dynamic onPanDown,
    dynamic onPanStart,
    dynamic onPanUpdate,
    dynamic onPanEnd,
    dynamic onPanCancel,
    dynamic onScaleStart,
    dynamic onScaleUpdate,
    dynamic onScaleEnd,
    HitTestBehavior behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
    key: key,
    child: child,
    onTapDown: createValueChangedGenericClosure<TapDownDetails>(_gestureDetector.buildOwner, onTapDown),
    onTapUp: createValueChangedGenericClosure<TapUpDetails>(_gestureDetector.buildOwner, onTapUp),
    onTap: createVoidCallbackClosure(_gestureDetector.buildOwner, onTap),
    onTapCancel: createVoidCallbackClosure(_gestureDetector.buildOwner, onTapCancel),
    onSecondaryTap: createVoidCallbackClosure(_gestureDetector.buildOwner, onSecondaryTap),
    onSecondaryTapDown:
        createValueChangedGenericClosure<TapDownDetails>(_gestureDetector.buildOwner, onSecondaryTapDown),
    onSecondaryTapUp: createValueChangedGenericClosure<TapUpDetails>(_gestureDetector.buildOwner, onSecondaryTapUp),
    onSecondaryTapCancel: createVoidCallbackClosure(_gestureDetector.buildOwner, onSecondaryTapCancel),
    onDoubleTap: createVoidCallbackClosure(_gestureDetector.buildOwner, onDoubleTap),
    onLongPress: createVoidCallbackClosure(_gestureDetector.buildOwner, onLongPress),
    onLongPressStart:
        createValueChangedGenericClosure<LongPressStartDetails>(_gestureDetector.buildOwner, onLongPressStart),
    onLongPressMoveUpdate: createValueChangedGenericClosure<LongPressMoveUpdateDetails>(
        _gestureDetector.buildOwner, onLongPressMoveUpdate),
    onLongPressUp: createVoidCallbackClosure(_gestureDetector.buildOwner, onLongPressUp),
    onLongPressEnd: createValueChangedGenericClosure<LongPressEndDetails>(_gestureDetector.buildOwner, onLongPressEnd),
    onSecondaryLongPress: createVoidCallbackClosure(_gestureDetector.buildOwner, onSecondaryLongPress),
    onSecondaryLongPressStart:
        createValueChangedGenericClosure<LongPressStartDetails>(_gestureDetector.buildOwner, onSecondaryLongPressStart),
    onSecondaryLongPressMoveUpdate: createValueChangedGenericClosure<LongPressMoveUpdateDetails>(
        _gestureDetector.buildOwner, onSecondaryLongPressMoveUpdate),
    onSecondaryLongPressUp: createVoidCallbackClosure(_gestureDetector.buildOwner, onSecondaryLongPressUp),
    onSecondaryLongPressEnd:
        createValueChangedGenericClosure<LongPressEndDetails>(_gestureDetector.buildOwner, onSecondaryLongPressEnd),
    onVerticalDragDown:
        createValueChangedGenericClosure<DragDownDetails>(_gestureDetector.buildOwner, onVerticalDragDown),
    onVerticalDragStart:
        createValueChangedGenericClosure<DragStartDetails>(_gestureDetector.buildOwner, onVerticalDragStart),
    onVerticalDragUpdate:
        createValueChangedGenericClosure<DragUpdateDetails>(_gestureDetector.buildOwner, onVerticalDragUpdate),
    onVerticalDragEnd: createValueChangedGenericClosure<DragEndDetails>(_gestureDetector.buildOwner, onVerticalDragEnd),
    onVerticalDragCancel: createVoidCallbackClosure(_gestureDetector.buildOwner, onVerticalDragCancel),
    onHorizontalDragDown:
        createValueChangedGenericClosure<DragDownDetails>(_gestureDetector.buildOwner, onHorizontalDragDown),
    onHorizontalDragStart:
        createValueChangedGenericClosure<DragStartDetails>(_gestureDetector.buildOwner, onHorizontalDragStart),
    onHorizontalDragUpdate:
        createValueChangedGenericClosure<DragUpdateDetails>(_gestureDetector.buildOwner, onHorizontalDragUpdate),
    onHorizontalDragEnd:
        createValueChangedGenericClosure<DragEndDetails>(_gestureDetector.buildOwner, onHorizontalDragEnd),
    onHorizontalDragCancel: createVoidCallbackClosure(_gestureDetector.buildOwner, onHorizontalDragCancel),
    onForcePressStart:
        createValueChangedGenericClosure<ForcePressDetails>(_gestureDetector.buildOwner, onForcePressStart),
    onForcePressPeak:
        createValueChangedGenericClosure<ForcePressDetails>(_gestureDetector.buildOwner, onForcePressPeak),
    onForcePressUpdate:
        createValueChangedGenericClosure<ForcePressDetails>(_gestureDetector.buildOwner, onForcePressUpdate),
    onForcePressEnd: createValueChangedGenericClosure<ForcePressDetails>(_gestureDetector.buildOwner, onForcePressEnd),
    onPanDown: createValueChangedGenericClosure<DragDownDetails>(_gestureDetector.buildOwner, onPanDown),
    onPanStart: createValueChangedGenericClosure<DragStartDetails>(_gestureDetector.buildOwner, onPanStart),
    onPanUpdate: createValueChangedGenericClosure<DragUpdateDetails>(_gestureDetector.buildOwner, onPanUpdate),
    onPanEnd: createValueChangedGenericClosure<DragEndDetails>(_gestureDetector.buildOwner, onPanEnd),
    onPanCancel: createVoidCallbackClosure(_gestureDetector.buildOwner, onPanCancel),
    onScaleStart: createValueChangedGenericClosure<ScaleStartDetails>(_gestureDetector.buildOwner, onScaleStart),
    onScaleUpdate: createValueChangedGenericClosure<ScaleUpdateDetails>(_gestureDetector.buildOwner, onScaleUpdate),
    onScaleEnd: createValueChangedGenericClosure<ScaleEndDetails>(_gestureDetector.buildOwner, onScaleEnd),
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
  ),
  [
    "key",
    "child",
    "onTapDown",
    "onTapUp",
    "onTap",
    "onTapCancel",
    "onSecondaryTap",
    "onSecondaryTapDown",
    "onSecondaryTapUp",
    "onSecondaryTapCancel",
    "onDoubleTap",
    "onLongPress",
    "onLongPressStart",
    "onLongPressMoveUpdate",
    "onLongPressUp",
    "onLongPressEnd",
    "onSecondaryLongPress",
    "onSecondaryLongPressStart",
    "onSecondaryLongPressMoveUpdate",
    "onSecondaryLongPressUp",
    "onSecondaryLongPressEnd",
    "onVerticalDragDown",
    "onVerticalDragStart",
    "onVerticalDragUpdate",
    "onVerticalDragEnd",
    "onVerticalDragCancel",
    "onHorizontalDragDown",
    "onHorizontalDragStart",
    "onHorizontalDragUpdate",
    "onHorizontalDragEnd",
    "onHorizontalDragCancel",
    "onForcePressStart",
    "onForcePressPeak",
    "onForcePressUpdate",
    "onForcePressEnd",
    "onPanDown",
    "onPanStart",
    "onPanUpdate",
    "onPanEnd",
    "onPanCancel",
    "onScaleStart",
    "onScaleUpdate",
    "onScaleEnd",
    "behavior",
    "excludeFromSemantics",
    "dragStartBehavior",
  ],
);
var _rawGestureDetector = MXFunctionInvoke(
  "RawGestureDetector",
  ({
    Key key,
    Widget child,
    dynamic gestures = const <Type, GestureRecognizerFactory<GestureRecognizer>>{},
    HitTestBehavior behavior,
    bool excludeFromSemantics = false,
    SemanticsGestureDelegate semantics,
  }) =>
      RawGestureDetector(
    key: key,
    child: child,
    gestures: toMapT<Type, GestureRecognizerFactory<GestureRecognizer>>(gestures),
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    semantics: semantics,
  ),
  [
    "key",
    "child",
    "gestures",
    "behavior",
    "excludeFromSemantics",
    "semantics",
  ],
);
var _rawGestureDetectorState = MXFunctionInvoke(
  "RawGestureDetectorState",
  () => RawGestureDetectorState(),
  [],
);

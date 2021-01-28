//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/drag_target.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/overlay.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDragTargetSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dragAnchor.funName] = _dragAnchor;
  m[_draggable.funName] = _draggable;
  m[_longPressDraggable.funName] = _longPressDraggable;
  m[_draggableDetails.funName] = _draggableDetails;
  m[_dragTargetDetails.funName] = _dragTargetDetails;
  m[_dragTarget.funName] = _dragTarget;
  return m;
}

var _dragAnchor =
    MXFunctionInvoke("DragAnchor", ({String name, int index}) => MXDragAnchor.parse(name, index), ["name", "index"]);
var _draggable = MXFunctionInvoke(
  "Draggable",
  ({
    Key key,
    Widget child,
    Widget feedback,
    dynamic data,
    Axis axis,
    Widget childWhenDragging,
    Offset feedbackOffset = Offset.zero,
    DragAnchor dragAnchor = DragAnchor.child,
    Axis affinity,
    int maxSimultaneousDrags,
    dynamic onDragStarted,
    dynamic onDraggableCanceled,
    dynamic onDragEnd,
    dynamic onDragCompleted,
    bool ignoringFeedbackSemantics = true,
  }) =>
      Draggable(
    key: key,
    child: child,
    feedback: feedback,
    data: data,
    axis: axis,
    childWhenDragging: childWhenDragging,
    feedbackOffset: feedbackOffset,
    dragAnchor: dragAnchor,
    affinity: affinity,
    maxSimultaneousDrags: maxSimultaneousDrags,
    onDragStarted: createVoidCallbackClosure(_draggable.buildOwner, onDragStarted),
    onDraggableCanceled: createVoidTwoParamsClosure<Velocity, Offset>(_draggable.buildOwner, onDraggableCanceled),
    onDragEnd: createValueChangedGenericClosure<DraggableDetails>(_draggable.buildOwner, onDragEnd),
    onDragCompleted: createVoidCallbackClosure(_draggable.buildOwner, onDragCompleted),
    ignoringFeedbackSemantics: ignoringFeedbackSemantics,
  ),
  [
    "key",
    "child",
    "feedback",
    "data",
    "axis",
    "childWhenDragging",
    "feedbackOffset",
    "dragAnchor",
    "affinity",
    "maxSimultaneousDrags",
    "onDragStarted",
    "onDraggableCanceled",
    "onDragEnd",
    "onDragCompleted",
    "ignoringFeedbackSemantics",
  ],
);
var _longPressDraggable = MXFunctionInvoke(
  "LongPressDraggable",
  ({
    Key key,
    Widget child,
    Widget feedback,
    dynamic data,
    Axis axis,
    Widget childWhenDragging,
    Offset feedbackOffset = Offset.zero,
    DragAnchor dragAnchor = DragAnchor.child,
    int maxSimultaneousDrags,
    dynamic onDragStarted,
    dynamic onDraggableCanceled,
    dynamic onDragEnd,
    dynamic onDragCompleted,
    bool hapticFeedbackOnStart = true,
    bool ignoringFeedbackSemantics = true,
  }) =>
      LongPressDraggable(
    key: key,
    child: child,
    feedback: feedback,
    data: data,
    axis: axis,
    childWhenDragging: childWhenDragging,
    feedbackOffset: feedbackOffset,
    dragAnchor: dragAnchor,
    maxSimultaneousDrags: maxSimultaneousDrags,
    onDragStarted: createVoidCallbackClosure(_longPressDraggable.buildOwner, onDragStarted),
    onDraggableCanceled:
        createVoidTwoParamsClosure<Velocity, Offset>(_longPressDraggable.buildOwner, onDraggableCanceled),
    onDragEnd: createValueChangedGenericClosure<DraggableDetails>(_longPressDraggable.buildOwner, onDragEnd),
    onDragCompleted: createVoidCallbackClosure(_longPressDraggable.buildOwner, onDragCompleted),
    hapticFeedbackOnStart: hapticFeedbackOnStart,
    ignoringFeedbackSemantics: ignoringFeedbackSemantics,
  ),
  [
    "key",
    "child",
    "feedback",
    "data",
    "axis",
    "childWhenDragging",
    "feedbackOffset",
    "dragAnchor",
    "maxSimultaneousDrags",
    "onDragStarted",
    "onDraggableCanceled",
    "onDragEnd",
    "onDragCompleted",
    "hapticFeedbackOnStart",
    "ignoringFeedbackSemantics",
  ],
);
var _draggableDetails = MXFunctionInvoke(
  "DraggableDetails",
  ({
    bool wasAccepted = false,
    Velocity velocity,
    Offset offset,
  }) =>
      DraggableDetails(
    wasAccepted: wasAccepted,
    velocity: velocity,
    offset: offset,
  ),
  [
    "wasAccepted",
    "velocity",
    "offset",
  ],
);
var _dragTargetDetails = MXFunctionInvoke(
  "DragTargetDetails",
  ({
    dynamic data,
    Offset offset,
  }) =>
      DragTargetDetails(
    data: data,
    offset: offset,
  ),
  [
    "data",
    "offset",
  ],
);
var _dragTarget = MXFunctionInvoke(
  "DragTarget",
  ({
    Key key,
    dynamic builder,
    dynamic onWillAccept,
    dynamic onAccept,
    dynamic onAcceptWithDetails,
    dynamic onLeave,
  }) =>
      DragTarget(
    key: key,
    builder: null,
    onWillAccept: null,
    onAccept: createValueChangedGenericClosure<dynamic>(_dragTarget.buildOwner, onAccept),
    onAcceptWithDetails:
        createValueChangedGenericClosure<DragTargetDetails<dynamic>>(_dragTarget.buildOwner, onAcceptWithDetails),
    onLeave: createValueChangedGenericClosure<Object>(_dragTarget.buildOwner, onLeave),
  ),
  [
    "key",
    "builder",
    "onWillAccept",
    "onAccept",
    "onAcceptWithDetails",
    "onLeave",
  ],
);

class MXDragAnchor {
  static DragAnchor parse(String name, int index) {
    switch (name) {
      case 'DragAnchor.child':
        return DragAnchor.child;
      case 'DragAnchor.pointer':
        return DragAnchor.pointer;
    }
    return null;
  }
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_dragTarget.funName] = _dragTarget;
  return m;
}
var _dragAnchor = MXFunctionInvoke(
    "DragAnchor",
    ({Map args}) => MXDragAnchor.parse(args),
  );
var _draggable = MXFunctionInvoke(
    "Draggable",
    (
      {
      Key key,
      Widget child,
      Widget feedback,
      dynamic data,
      Axis axis,
      Widget childWhenDragging,
      Offset feedbackOffset,
      DragAnchor dragAnchor = DragAnchor.child,
      Axis affinity,
      int maxSimultaneousDrags,
      dynamic onDragStarted,
      dynamic onDraggableCanceled,
      dynamic onDragEnd,
      dynamic onDragCompleted,
      bool ignoringFeedbackSemantics = true,
      }
    ) =>
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
      onDraggableCanceled: null,
      onDragEnd: createValueChangedGenericClosure<DraggableDetails>(_draggable.buildOwner, onDragEnd),
      onDragCompleted: createVoidCallbackClosure(_draggable.buildOwner, onDragCompleted),
      ignoringFeedbackSemantics: ignoringFeedbackSemantics,
    ),
);
var _longPressDraggable = MXFunctionInvoke(
    "LongPressDraggable",
    (
      {
      Key key,
      Widget child,
      Widget feedback,
      dynamic data,
      Axis axis,
      Widget childWhenDragging,
      Offset feedbackOffset,
      DragAnchor dragAnchor = DragAnchor.child,
      int maxSimultaneousDrags,
      dynamic onDragStarted,
      dynamic onDraggableCanceled,
      dynamic onDragEnd,
      dynamic onDragCompleted,
      bool hapticFeedbackOnStart = true,
      bool ignoringFeedbackSemantics = true,
      }
    ) =>
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
      onDraggableCanceled: null,
      onDragEnd: createValueChangedGenericClosure<DraggableDetails>(_longPressDraggable.buildOwner, onDragEnd),
      onDragCompleted: createVoidCallbackClosure(_longPressDraggable.buildOwner, onDragCompleted),
      hapticFeedbackOnStart: hapticFeedbackOnStart,
      ignoringFeedbackSemantics: ignoringFeedbackSemantics,
    ),
);
var _draggableDetails = MXFunctionInvoke(
    "DraggableDetails",
    (
      {
      bool wasAccepted = false,
      Velocity velocity,
      Offset offset,
      }
    ) =>
      DraggableDetails(
      wasAccepted: wasAccepted,
      velocity: velocity,
      offset: offset,
    ),
);
var _dragTarget = MXFunctionInvoke(
    "DragTarget",
    (
      {
      Key key,
      dynamic builder,
      dynamic onWillAccept,
      dynamic onAccept,
      dynamic onLeave,
      }
    ) =>
      DragTarget(
      key: key,
      builder: null,
      onWillAccept: createGenericValueGenericClosure<bool, dynamic>(_dragTarget.buildOwner, onWillAccept),
      onAccept: createValueChangedGenericClosure<dynamic>(_dragTarget.buildOwner, onAccept),
      onLeave: createValueChangedGenericClosure<Object>(_dragTarget.buildOwner, onLeave),
    ),
);
class MXDragAnchor {
  static Map str2VMap = {
    'DragAnchor.child': DragAnchor.child,
    'DragAnchor.pointer': DragAnchor.pointer,
  };
  static DragAnchor parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

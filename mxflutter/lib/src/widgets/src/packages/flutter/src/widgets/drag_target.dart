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
  m[dragAnchor.funName] = dragAnchor;
  m[draggable.funName] = draggable;
  m[longPressDraggable.funName] = longPressDraggable;
  m[draggableDetails.funName] = draggableDetails;
  m[dragTarget.funName] = dragTarget;
  return m;
}
var dragAnchor = MXFunctionInvoke(
    "DragAnchor",
    ({Map args}) => MXDragAnchor.parse(args),
  );
var draggable = MXFunctionInvoke(
    "Draggable",
    ({
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
      onDragStarted: createVoidCallbackClosure(draggable.buildOwner, onDragStarted),
      onDraggableCanceled: createVoidCallbackClosure(draggable.buildOwner, onDraggableCanceled),
      onDragEnd: createValueChangedGenericClosure<DraggableDetails>(draggable.buildOwner, onDragEnd),
      onDragCompleted: createVoidCallbackClosure(draggable.buildOwner, onDragCompleted),
      ignoringFeedbackSemantics: ignoringFeedbackSemantics,
    ),
);
var longPressDraggable = MXFunctionInvoke(
    "LongPressDraggable",
    ({
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
      onDragStarted: createVoidCallbackClosure(longPressDraggable.buildOwner, onDragStarted),
      onDraggableCanceled: createVoidCallbackClosure(longPressDraggable.buildOwner, onDraggableCanceled),
      onDragEnd: createValueChangedGenericClosure<DraggableDetails>(longPressDraggable.buildOwner, onDragEnd),
      onDragCompleted: createVoidCallbackClosure(longPressDraggable.buildOwner, onDragCompleted),
      hapticFeedbackOnStart: hapticFeedbackOnStart,
      ignoringFeedbackSemantics: ignoringFeedbackSemantics,
    ),
);
var draggableDetails = MXFunctionInvoke(
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
);
var dragTarget = MXFunctionInvoke(
    "DragTarget",
    ({
      Key key,
      dynamic builder,
      dynamic onWillAccept,
      dynamic onAccept,
      dynamic onLeave,
    }) =>
      DragTarget(
      key: key,
      builder: builder,
      onWillAccept: createGenericValueGenericClosure<bool, dynamic>(dragTarget.buildOwner, onWillAccept),
      onAccept: createValueChangedGenericClosure<dynamic>(dragTarget.buildOwner, onAccept),
      onLeave: createValueChangedGenericClosure<Object>(dragTarget.buildOwner, onLeave),
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

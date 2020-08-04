//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/draggable_scrollable_sheet.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_notifier.dart';
import 'package:flutter/src/widgets/layout_builder.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';
import 'package:flutter/src/widgets/scroll_simulation.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDraggableScrollableSheetSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[draggableScrollableSheet.funName] = draggableScrollableSheet;
  m[draggableScrollableNotification.funName] = draggableScrollableNotification;
  m[draggableScrollableActuator.funName] = draggableScrollableActuator;
  return m;
}
var draggableScrollableSheet = MXFunctionInvoke(
    "DraggableScrollableSheet",
    ({
      Key key,
      dynamic initialChildSize = 0.5,
      dynamic minChildSize = 0.25,
      dynamic maxChildSize = 1.0,
      bool expand = true,
      dynamic builder,
    }) =>
      DraggableScrollableSheet(
      key: key,
      initialChildSize: initialChildSize,
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      expand: expand,
      builder: builder,
    ),
);
var draggableScrollableNotification = MXFunctionInvoke(
    "DraggableScrollableNotification",
    ({
      dynamic extent,
      dynamic minExtent,
      dynamic maxExtent,
      dynamic initialExtent,
      BuildContext context,
    }) =>
      DraggableScrollableNotification(
      extent: extent,
      minExtent: minExtent,
      maxExtent: maxExtent,
      initialExtent: initialExtent,
      context: context,
    ),
);
var draggableScrollableActuator = MXFunctionInvoke(
    "DraggableScrollableActuator",
    ({
      Key key,
      Widget child,
    }) =>
      DraggableScrollableActuator(
      key: key,
      child: child,
    ),
);

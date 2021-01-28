//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_draggableScrollableSheet.funName] = _draggableScrollableSheet;
  m[_draggableScrollableNotification.funName] = _draggableScrollableNotification;
  m[_draggableScrollableActuator.funName] = _draggableScrollableActuator;
  return m;
}

var _draggableScrollableSheet = MXFunctionInvoke(
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
    initialChildSize: initialChildSize?.toDouble(),
    minChildSize: minChildSize?.toDouble(),
    maxChildSize: maxChildSize?.toDouble(),
    expand: expand,
    builder: null,
  ),
  [
    "key",
    "initialChildSize",
    "minChildSize",
    "maxChildSize",
    "expand",
    "builder",
  ],
);
var _draggableScrollableNotification = MXFunctionInvoke(
  "DraggableScrollableNotification",
  ({
    dynamic extent,
    dynamic minExtent,
    dynamic maxExtent,
    dynamic initialExtent,
    BuildContext context,
  }) =>
      DraggableScrollableNotification(
    extent: extent?.toDouble(),
    minExtent: minExtent?.toDouble(),
    maxExtent: maxExtent?.toDouble(),
    initialExtent: initialExtent?.toDouble(),
    context: context,
  ),
  [
    "extent",
    "minExtent",
    "maxExtent",
    "initialExtent",
    "context",
  ],
);
var _draggableScrollableActuator = MXFunctionInvoke(
  "DraggableScrollableActuator",
  ({
    Key key,
    Widget child,
  }) =>
      DraggableScrollableActuator(
    key: key,
    child: child,
  ),
  [
    "key",
    "child",
  ],
);

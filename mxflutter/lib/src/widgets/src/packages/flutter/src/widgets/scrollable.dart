//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'dart:async';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/viewport.dart';
import 'package:flutter/physics.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollableSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollable.funName] = _scrollable;
  m[_scrollableState.funName] = _scrollableState;
  m[_scrollIncrementType.funName] = _scrollIncrementType;
  m[_scrollIncrementDetails.funName] = _scrollIncrementDetails;
  m[_scrollIntent.funName] = _scrollIntent;
  m[_scrollAction.funName] = _scrollAction;
  return m;
}

var _scrollable = MXFunctionInvoke(
  "Scrollable",
  ({
    Key key,
    AxisDirection axisDirection = AxisDirection.down,
    ScrollController controller,
    ScrollPhysics physics,
    dynamic viewportBuilder,
    dynamic incrementCalculator,
    bool excludeFromSemantics = false,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      Scrollable(
    key: key,
    axisDirection: axisDirection,
    controller: controller,
    physics: physics,
    viewportBuilder: null,
    incrementCalculator: null,
    excludeFromSemantics: excludeFromSemantics,
    semanticChildCount: semanticChildCount,
    dragStartBehavior: dragStartBehavior,
  ),
  [
    "key",
    "axisDirection",
    "controller",
    "physics",
    "viewportBuilder",
    "incrementCalculator",
    "excludeFromSemantics",
    "semanticChildCount",
    "dragStartBehavior",
  ],
);
var _scrollableState = MXFunctionInvoke(
  "ScrollableState",
  () => ScrollableState(),
  [],
);
var _scrollIncrementType = MXFunctionInvoke(
    "ScrollIncrementType", ({String name, int index}) => MXScrollIncrementType.parse(name, index), ["name", "index"]);
var _scrollIncrementDetails = MXFunctionInvoke(
  "ScrollIncrementDetails",
  ({
    ScrollIncrementType type,
    ScrollMetrics metrics,
  }) =>
      ScrollIncrementDetails(
    type: type,
    metrics: metrics,
  ),
  [
    "type",
    "metrics",
  ],
);
var _scrollIntent = MXFunctionInvoke(
  "ScrollIntent",
  ({
    AxisDirection direction,
    ScrollIncrementType type = ScrollIncrementType.line,
  }) =>
      ScrollIntent(
    direction: direction,
    type: type,
  ),
  [
    "direction",
    "type",
  ],
);
var _scrollAction = MXFunctionInvoke(
  "ScrollAction",
  () => ScrollAction(),
  [],
);

class MXScrollIncrementType {
  static ScrollIncrementType parse(String name, int index) {
    switch (name) {
      case 'ScrollIncrementType.line':
        return ScrollIncrementType.line;
      case 'ScrollIncrementType.page':
        return ScrollIncrementType.page;
    }
    return null;
  }
}

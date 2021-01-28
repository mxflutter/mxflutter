//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/scroll_activity.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollPositionWithSingleContextSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollPositionWithSingleContext.funName] = _scrollPositionWithSingleContext;
  return m;
}

var _scrollPositionWithSingleContext = MXFunctionInvoke(
  "ScrollPositionWithSingleContext",
  ({
    ScrollPhysics physics,
    ScrollContext context,
    dynamic initialPixels = 0.0,
    bool keepScrollOffset = true,
    ScrollPosition oldPosition,
    String debugLabel,
  }) =>
      ScrollPositionWithSingleContext(
    physics: physics,
    context: context,
    initialPixels: initialPixels?.toDouble(),
    keepScrollOffset: keepScrollOffset,
    oldPosition: oldPosition,
    debugLabel: debugLabel,
  ),
  [
    "physics",
    "context",
    "initialPixels",
    "keepScrollOffset",
    "oldPosition",
    "debugLabel",
  ],
);

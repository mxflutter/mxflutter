//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollControllerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollController.funName] = _scrollController;
  m[_trackingScrollController.funName] = _trackingScrollController;
  // MX modified begin
  m[_scrollController_jumpTo.funName] = _scrollController_jumpTo;
  m[_scrollController_animateTo.funName] = _scrollController_animateTo;
  // MX modified end
  return m;
}

var _scrollController = MXFunctionInvoke(
  "ScrollController",
  ({
    dynamic initialScrollOffset = 0.0,
    bool keepScrollOffset = true,
    String debugLabel,
  }) =>
      ScrollController(
    initialScrollOffset: initialScrollOffset?.toDouble(),
    keepScrollOffset: keepScrollOffset,
    debugLabel: debugLabel,
  ),
  [
    "initialScrollOffset",
    "keepScrollOffset",
    "debugLabel",
  ],
);
var _trackingScrollController = MXFunctionInvoke(
  "TrackingScrollController",
  ({
    dynamic initialScrollOffset = 0.0,
    bool keepScrollOffset = true,
    String debugLabel,
  }) =>
      TrackingScrollController(
    initialScrollOffset: initialScrollOffset?.toDouble(),
    keepScrollOffset: keepScrollOffset,
    debugLabel: debugLabel,
  ),
  [
    "initialScrollOffset",
    "keepScrollOffset",
    "debugLabel",
  ],
);

// MX modified begin
var _scrollController_jumpTo = MXFunctionInvoke(
  "ScrollController#jumpTo",
  ({
    ScrollController mirrorObj,
    dynamic value,
  }) =>
      mirrorObj.jumpTo(value?.toDouble()),
  [
    "mirrorObj",
    "value",
  ],
);

var _scrollController_animateTo = MXFunctionInvoke(
  "ScrollController#animateTo",
  ({
    ScrollController mirrorObj,
    dynamic offset,
    Duration duration,
    Curve curve,
  }) =>
      mirrorObj.animateTo(
    offset?.toDouble(),
    duration: duration,
    curve: curve,
  ),
  [
    "mirrorObj",
    "offset",
    "duration",
    "curve",
  ],
);
// MX modified end

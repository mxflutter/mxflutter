//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollNotificationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollStartNotification.funName] = _scrollStartNotification;
  m[_scrollUpdateNotification.funName] = _scrollUpdateNotification;
  m[_overscrollNotification.funName] = _overscrollNotification;
  m[_scrollEndNotification.funName] = _scrollEndNotification;
  m[_userScrollNotification.funName] = _userScrollNotification;
  return m;
}
var _scrollStartNotification = MXFunctionInvoke(
    "ScrollStartNotification",
    (
      {
      ScrollMetrics metrics,
      BuildContext context,
      DragStartDetails dragDetails,
      }
    ) =>
      ScrollStartNotification(
      metrics: metrics,
      context: context,
      dragDetails: dragDetails,
    ),
);
var _scrollUpdateNotification = MXFunctionInvoke(
    "ScrollUpdateNotification",
    (
      {
      ScrollMetrics metrics,
      BuildContext context,
      DragUpdateDetails dragDetails,
      dynamic scrollDelta,
      }
    ) =>
      ScrollUpdateNotification(
      metrics: metrics,
      context: context,
      dragDetails: dragDetails,
      scrollDelta: scrollDelta?.toDouble(),
    ),
);
var _overscrollNotification = MXFunctionInvoke(
    "OverscrollNotification",
    (
      {
      ScrollMetrics metrics,
      BuildContext context,
      DragUpdateDetails dragDetails,
      dynamic overscroll,
      dynamic velocity = 0.0,
      }
    ) =>
      OverscrollNotification(
      metrics: metrics,
      context: context,
      dragDetails: dragDetails,
      overscroll: overscroll?.toDouble(),
      velocity: velocity?.toDouble(),
    ),
);
var _scrollEndNotification = MXFunctionInvoke(
    "ScrollEndNotification",
    (
      {
      ScrollMetrics metrics,
      BuildContext context,
      DragEndDetails dragDetails,
      }
    ) =>
      ScrollEndNotification(
      metrics: metrics,
      context: context,
      dragDetails: dragDetails,
    ),
);
var _userScrollNotification = MXFunctionInvoke(
    "UserScrollNotification",
    (
      {
      ScrollMetrics metrics,
      BuildContext context,
      ScrollDirection direction,
      }
    ) =>
      UserScrollNotification(
      metrics: metrics,
      context: context,
      direction: direction,
    ),
);

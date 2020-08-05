//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/refresh_indicator.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/progress_indicator.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRefreshIndicatorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_refreshIndicator.funName] = _refreshIndicator;
  m[_refreshIndicatorState.funName] = _refreshIndicatorState;
  return m;
}
var _refreshIndicator = MXFunctionInvoke(
    "RefreshIndicator",
    (
      {
      Key key,
      Widget child,
      double displacement = 40.0,
      dynamic onRefresh,
      Color color,
      Color backgroundColor,
      dynamic notificationPredicate,
      String semanticsLabel,
      String semanticsValue,
      double strokeWidth = 2.0,
      }
    ) =>
      RefreshIndicator(
      key: key,
      child: child,
      displacement: displacement?.toDouble(),
      onRefresh: onRefresh,
      color: color,
      backgroundColor: backgroundColor,
      notificationPredicate: createGenericValueGenericClosure<bool, ScrollNotification>(_refreshIndicator.buildOwner, notificationPredicate),
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
      strokeWidth: strokeWidth?.toDouble(),
    ),
);
var _refreshIndicatorState = MXFunctionInvoke(
    "RefreshIndicatorState",
    (
    ) =>
      RefreshIndicatorState(
    ),
);

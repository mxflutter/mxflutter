//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/refresh_indicator.dart';


class MXProxyRefreshIndicator {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[refreshIndicator.funName] = refreshIndicator;
    m[refreshIndicatorState.funName] = refreshIndicatorState;
    return m;
  }
  static var refreshIndicator = MXFunctionInvoke(
      "RefreshIndicator",
      ({
        Key key,
        Widget child,
        dynamic displacement = 40.0,
        dynamic onRefresh,
        Color color,
        Color backgroundColor,
        dynamic notificationPredicate,
        String semanticsLabel,
        String semanticsValue,
        dynamic strokeWidth = 2.0,
      }) =>
        RefreshIndicator(
        key: key,
        child: child,
        displacement: displacement?.toDouble(),
        onRefresh: onRefresh,
        color: color,
        backgroundColor: backgroundColor,
        notificationPredicate: createGenericValueGenericClosure<bool, ScrollNotification>(refreshIndicator.buildOwner, notificationPredicate),
        semanticsLabel: semanticsLabel,
        semanticsValue: semanticsValue,
        strokeWidth: strokeWidth?.toDouble(),
      ),
    );
  static var refreshIndicatorState = MXFunctionInvoke(
      "RefreshIndicatorState",
      ({
      }) =>
        RefreshIndicatorState(
      ),
    );
}

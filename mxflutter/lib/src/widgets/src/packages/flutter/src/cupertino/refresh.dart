//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/refresh.dart';


class MXProxyRefresh {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[refreshIndicatorMode.funName] = refreshIndicatorMode;
    m[cupertinoSliverRefreshControl.funName] = cupertinoSliverRefreshControl;
    return m;
  }
  static var refreshIndicatorMode = MXFunctionInvoke(
      "RefreshIndicatorMode",
      ({Map args}) => MXRefreshIndicatorMode.parse(args),
  );
  static var cupertinoSliverRefreshControl = MXFunctionInvoke(
      "CupertinoSliverRefreshControl",
      ({
        Key key,
        dynamic refreshTriggerPullDistance = 100.0,
        dynamic refreshIndicatorExtent = 60.0,
        dynamic builder,
        dynamic onRefresh,
      }) =>
        CupertinoSliverRefreshControl(
        key: key,
        refreshTriggerPullDistance: refreshTriggerPullDistance?.toDouble(),
        refreshIndicatorExtent: refreshIndicatorExtent?.toDouble(),
        builder: builder,
        onRefresh: onRefresh,
      ),
    );
}
class MXRefreshIndicatorMode {
  static Map str2VMap = {
    'RefreshIndicatorMode.inactive': RefreshIndicatorMode.inactive,
    'RefreshIndicatorMode.drag': RefreshIndicatorMode.drag,
    'RefreshIndicatorMode.armed': RefreshIndicatorMode.armed,
    'RefreshIndicatorMode.refresh': RefreshIndicatorMode.refresh,
    'RefreshIndicatorMode.done': RefreshIndicatorMode.done,
  };
  static RefreshIndicatorMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

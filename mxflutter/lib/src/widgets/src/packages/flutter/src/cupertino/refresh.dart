//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/refresh.dart';
import 'dart:async' ;
import 'dart:math' ;
import 'package:flutter/rendering.dart' ;
import 'package:flutter/scheduler.dart' ;
import 'package:flutter/services.dart' ;
import 'package:flutter/widgets.dart' ;
import 'package:flutter/src/cupertino/activity_indicator.dart' ;
import 'package:flutter/src/cupertino/colors.dart' ;
import 'package:flutter/src/cupertino/icons.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRefreshSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_refreshIndicatorMode.funName] = _refreshIndicatorMode;
  m[_cupertinoSliverRefreshControl.funName] = _cupertinoSliverRefreshControl;
  return m;
}
var _refreshIndicatorMode = MXFunctionInvoke(
    "RefreshIndicatorMode",
    ({Map args}) => MXRefreshIndicatorMode.parse(args),
  );
var _cupertinoSliverRefreshControl = MXFunctionInvoke(
    "CupertinoSliverRefreshControl",
    (
      {
      Key key,
      dynamic refreshTriggerPullDistance = 100.0,
      dynamic refreshIndicatorExtent = 60.0,
      dynamic builder,
      dynamic onRefresh,
      }
    ) =>
      CupertinoSliverRefreshControl(
      key: key,
      refreshTriggerPullDistance: refreshTriggerPullDistance?.toDouble(),
      refreshIndicatorExtent: refreshIndicatorExtent?.toDouble(),
      builder: null,
      onRefresh: null,
    ),
);
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

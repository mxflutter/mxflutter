//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/refresh.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/activity_indicator.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/icons.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRefreshSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_refreshIndicatorMode.funName] = _refreshIndicatorMode;
  m[_cupertinoSliverRefreshControl.funName] = _cupertinoSliverRefreshControl;
  return m;
}
var _refreshIndicatorMode = MXFunctionInvoke(
    "RefreshIndicatorMode",
    ({String name, int index}) => MXRefreshIndicatorMode.parse(name, index),
  );
var _cupertinoSliverRefreshControl = MXFunctionInvoke(
    "CupertinoSliverRefreshControl",
    (
      {
      Key key,
      dynamic refreshTriggerPullDistance = 100.0,
      dynamic refreshIndicatorExtent = 60.0,
      dynamic builder = CupertinoSliverRefreshControl.buildSimpleRefreshIndicator,
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
  static RefreshIndicatorMode parse(String name, int index) {
    switch(name) {
      case 'RefreshIndicatorMode.inactive': 
       return RefreshIndicatorMode.inactive;
      case 'RefreshIndicatorMode.drag': 
       return RefreshIndicatorMode.drag;
      case 'RefreshIndicatorMode.armed': 
       return RefreshIndicatorMode.armed;
      case 'RefreshIndicatorMode.refresh': 
       return RefreshIndicatorMode.refresh;
      case 'RefreshIndicatorMode.done': 
       return RefreshIndicatorMode.done;
    }
    return null;
  }
}

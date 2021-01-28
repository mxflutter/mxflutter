//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/tab_controller.dart';
import 'dart:math' as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
// MX Modified begin
import 'package:mxflutter/src/mx_mixin.dart';
// MX Modified end

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTabControllerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tabController.funName] = _tabController;
  m[_tabControllerIndex.funName] = _tabControllerIndex;
  m[_defaultTabController.funName] = _defaultTabController;
  return m;
}

// MX Modified begin
var _tabController = MXFunctionInvoke(
  "TabController",
  ({
    int initialIndex = 0,
    int length,
    TickerProvider vsync,
    dynamic listenerList,
    dynamic mirrorID,
  }) {
    var tickVsync;
    if (_tabController.buildOwner.state is MXSingleTickerMixinWidgetState) {
      tickVsync = _tabController.buildOwner.state as MXSingleTickerMixinWidgetState;
    } else if (_tabController.buildOwner.state is MXTickerMixinWidgetState) {
      tickVsync = _tabController.buildOwner.state as MXTickerMixinWidgetState;
    } else if (_tabController.buildOwner.state is MXSingleTickerAndKeepAliveMixinWidgetState) {
      tickVsync = _tabController.buildOwner.state as MXSingleTickerAndKeepAliveMixinWidgetState;
    } else if (_tabController.buildOwner.state is MXTickerAndKeepAliveMixinWidgetState) {
      tickVsync = _tabController.buildOwner.state as MXTickerAndKeepAliveMixinWidgetState;
    }
    TabController tabController = TabController(
      initialIndex: initialIndex,
      length: length,
      vsync: tickVsync,
    );
    if (listenerList != null && listenerList.length > 0) {
      tabController
          .addListener(_createListenerHandle(_tabController.buildOwner, mirrorID, "listenerCallback", tabController));
    }
    return tabController;
  },
  [
    "initialIndex",
    "length",
    "vsync",
    "listenerList",
    "mirrorID",
  ],
);

VoidCallback _createListenerHandle(dynamic bo, String mirrorID, String functionName, TabController tabController) {
  VoidCallback cb = () {
    Map args = {
      "index": tabController.index,
      "previousIndex": tabController.previousIndex,
      "indexIsChanging": tabController.indexIsChanging,
      "offset": tabController.offset,
    };
    bo.mirrorObjEventCallback(mirrorID: mirrorID, functionName: functionName, p: args);
  };
  return cb;
}

var _tabControllerIndex = MXFunctionInvoke(
  "TabController#index",
  ({
    TabController mirrorObj,
    int index,
  }) =>
      mirrorObj.index = index,
  [
    "mirrorObj",
    "index",
  ],
);
// MX Modified end

var _defaultTabController = MXFunctionInvoke(
  "DefaultTabController",
  ({
    Key key,
    int length,
    int initialIndex = 0,
    Widget child,
  }) =>
      DefaultTabController(
    key: key,
    length: length,
    initialIndex: initialIndex,
    child: child,
  ),
  [
    "key",
    "length",
    "initialIndex",
    "child",
  ],
);

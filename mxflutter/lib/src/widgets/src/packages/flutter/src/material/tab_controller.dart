//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/tab_controller.dart';
import 'dart:math' as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTabControllerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tabController.funName] = _tabController;
  m[_defaultTabController.funName] = _defaultTabController;
  return m;
}
var _tabController = MXFunctionInvoke(
    "TabController",
    (
      {
      int initialIndex = 0,
      int length,
      TickerProvider vsync,
      }
    ) =>
      TabController(
      initialIndex: initialIndex,
      length: length,
      vsync: vsync,
    ),
);
var _defaultTabController = MXFunctionInvoke(
    "DefaultTabController",
    (
      {
      Key key,
      int length,
      int initialIndex = 0,
      Widget child,
      }
    ) =>
      DefaultTabController(
      key: key,
      length: length,
      initialIndex: initialIndex,
      child: child,
    ),
);

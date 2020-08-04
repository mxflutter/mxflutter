//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/tab_controller.dart';


class MXProxyTabController {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[tabController.funName] = tabController;
    m[tabController_.funName] = tabController_;
    m[defaultTabController.funName] = defaultTabController;
    return m;
  }
  static var tabController = MXFunctionInvoke(
      "TabController",
      ({
        int initialIndex = 0,
        int length,
        TickerProvider vsync,
      }) =>
        TabController(
        initialIndex: initialIndex,
        length: length,
        vsync: vsync,
      ),
    );
  static var tabController_ = MXFunctionInvoke(
    "tabController.",
      ({
        int index,
        int previousIndex,
        AnimationController animationController,
        int length,
      }) =>
        TabController.(
        index: index,
        previousIndex: previousIndex,
        animationController: animationController,
        length: length,
      ),
    );
  static var defaultTabController = MXFunctionInvoke(
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
    );
}

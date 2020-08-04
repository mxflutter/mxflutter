//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/tab_scaffold.dart';


class MXProxyTabScaffold {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[cupertinoTabController.funName] = cupertinoTabController;
    m[cupertinoTabScaffold.funName] = cupertinoTabScaffold;
    return m;
  }
  static var cupertinoTabController = MXFunctionInvoke(
      "CupertinoTabController",
      ({
        int initialIndex = 0,
      }) =>
        CupertinoTabController(
        initialIndex: initialIndex,
      ),
    );
  static var cupertinoTabScaffold = MXFunctionInvoke(
      "CupertinoTabScaffold",
      ({
        Key key,
        CupertinoTabBar tabBar,
        dynamic tabBuilder,
        CupertinoTabController controller,
        Color backgroundColor,
        bool resizeToAvoidBottomInset = true,
      }) =>
        CupertinoTabScaffold(
        key: key,
        tabBar: tabBar,
        tabBuilder: tabBuilder,
        controller: controller,
        backgroundColor: backgroundColor,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      ),
    );
}

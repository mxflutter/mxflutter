//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/tab_scaffold.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/bottom_tab_bar.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTabScaffoldSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoTabController.funName] = _cupertinoTabController;
  m[_cupertinoTabScaffold.funName] = _cupertinoTabScaffold;
  return m;
}

var _cupertinoTabController = MXFunctionInvoke(
  "CupertinoTabController",
  ({
    int initialIndex = 0,
  }) =>
      CupertinoTabController(
    initialIndex: initialIndex,
  ),
  [
    "initialIndex",
  ],
);
var _cupertinoTabScaffold = MXFunctionInvoke(
  "CupertinoTabScaffold",
  ({
    Key key,
    CupertinoTabBar tabBar,
    dynamic tabBuilder,
    CupertinoTabController controller,
    Color backgroundColor,
    bool resizeToAvoidBottomInset = true,
    // MX modified 增加了children
    dynamic children,
  }) =>
      CupertinoTabScaffold(
    key: key,
    tabBar: tabBar,
    // MX modified 增加了tabBuilder参数
    tabBuilder: (BuildContext context, int index) {
      List<Widget> list = toListT<Widget>(children);
      return list[index];
    },
    controller: controller,
    backgroundColor: backgroundColor,
    resizeToAvoidBottomInset: resizeToAvoidBottomInset,
  ),
  [
    "key",
    "tabBar",
    "tabBuilder",
    "controller",
    "backgroundColor",
    "resizeToAvoidBottomInset",
    // MX modefied 补充了children参数
    "children",
  ],
);

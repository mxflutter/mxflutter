//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[cupertinoTabController.funName] = cupertinoTabController;
  m[cupertinoTabScaffold.funName] = cupertinoTabScaffold;
  return m;
}
var cupertinoTabController = MXFunctionInvoke(
    "CupertinoTabController",
    ({
      int initialIndex = 0,
    }) =>
      CupertinoTabController(
      initialIndex: initialIndex,
    ),
);
var cupertinoTabScaffold = MXFunctionInvoke(
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

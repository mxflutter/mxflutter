//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigation_toolbar.dart';


class MXProxyNavigationToolbar {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[navigationToolbar.funName] = navigationToolbar;
    return m;
  }
  static var navigationToolbar = MXFunctionInvoke(
      "NavigationToolbar",
      ({
        Key key,
        Widget leading,
        Widget middle,
        Widget trailing,
        bool centerMiddle = true,
        dynamic middleSpacing = 16.0,
      }) =>
        NavigationToolbar(
        key: key,
        leading: leading,
        middle: middle,
        trailing: trailing,
        centerMiddle: centerMiddle,
        middleSpacing: middleSpacing?.toDouble(),
      ),
    );
}

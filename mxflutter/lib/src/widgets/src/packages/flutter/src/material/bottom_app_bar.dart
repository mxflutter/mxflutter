//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_app_bar.dart';


class MXProxyBottomAppBar {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[bottomAppBar.funName] = bottomAppBar;
    return m;
  }
  static var bottomAppBar = MXFunctionInvoke(
      "BottomAppBar",
      ({
        Key key,
        Color color,
        dynamic elevation,
        NotchedShape shape,
        Clip clipBehavior = Clip.none,
        dynamic notchMargin = 4.0,
        Widget child,
      }) =>
        BottomAppBar(
        key: key,
        color: color,
        elevation: elevation?.toDouble(),
        shape: shape,
        clipBehavior: clipBehavior,
        notchMargin: notchMargin?.toDouble(),
        child: child,
      ),
    );
}

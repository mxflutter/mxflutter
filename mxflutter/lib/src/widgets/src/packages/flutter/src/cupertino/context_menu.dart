//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/context_menu.dart';


class MXProxyContextMenu {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[cupertinoContextMenu.funName] = cupertinoContextMenu;
    return m;
  }
  static var cupertinoContextMenu = MXFunctionInvoke(
      "CupertinoContextMenu",
      ({
        Key key,
        List<Widget> actions,
        Widget child,
        dynamic previewBuilder,
      }) =>
        CupertinoContextMenu(
        key: key,
        actions: actions,
        child: child,
        previewBuilder: previewBuilder,
      ),
    );
}

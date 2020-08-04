//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/scrollbar.dart';


class MXProxyScrollbar {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[scrollbar.funName] = scrollbar;
    return m;
  }
  static var scrollbar = MXFunctionInvoke(
      "Scrollbar",
      ({
        Key key,
        Widget child,
        ScrollController controller,
        bool isAlwaysShown = false,
      }) =>
        Scrollbar(
        key: key,
        child: child,
        controller: controller,
        isAlwaysShown: isAlwaysShown,
      ),
    );
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/will_pop_scope.dart';


class MXProxyWillPopScope {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[willPopScope.funName] = willPopScope;
    return m;
  }
  static var willPopScope = MXFunctionInvoke(
      "WillPopScope",
      ({
        Key key,
        Widget child,
        dynamic onWillPop,
      }) =>
        WillPopScope(
        key: key,
        child: child,
        onWillPop: onWillPop,
      ),
    );
}

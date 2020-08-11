//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/pages.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/routes.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPagesSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_pageRouteBuilder.funName] = _pageRouteBuilder;
  return m;
}
var _pageRouteBuilder = MXFunctionInvoke(
    "PageRouteBuilder",
    (
      {
      RouteSettings settings,
      dynamic pageBuilder,
      dynamic transitionsBuilder,
      Duration transitionDuration = const Duration(milliseconds: 300),
      bool opaque = true,
      bool barrierDismissible = false,
      Color barrierColor,
      String barrierLabel,
      bool maintainState = true,
      bool fullscreenDialog = false,
      }
    ) =>
      PageRouteBuilder(
      settings: settings,
      pageBuilder: null,
      transitionsBuilder: null,
      transitionDuration: transitionDuration,
      opaque: opaque,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
    ),
);

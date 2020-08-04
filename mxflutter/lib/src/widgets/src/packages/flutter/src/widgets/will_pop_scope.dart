//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/will_pop_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/routes.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerWillPopScopeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[willPopScope.funName] = willPopScope;
  return m;
}
var willPopScope = MXFunctionInvoke(
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

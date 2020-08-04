//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/navigation_toolbar.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerNavigationToolbarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[navigationToolbar.funName] = navigationToolbar;
  return m;
}
var navigationToolbar = MXFunctionInvoke(
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
      middleSpacing: middleSpacing,
    ),
);

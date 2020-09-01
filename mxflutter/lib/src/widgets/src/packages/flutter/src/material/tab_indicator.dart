//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/tab_indicator.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTabIndicatorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_underlineTabIndicator.funName] = _underlineTabIndicator;
  return m;
}

var _underlineTabIndicator = MXFunctionInvoke(
  "UnderlineTabIndicator",
  ({
    BorderSide borderSide = const BorderSide(width: 2.0, color: Colors.white),
    EdgeInsetsGeometry insets = EdgeInsets.zero,
  }) =>
      UnderlineTabIndicator(
    borderSide: borderSide,
    insets: insets,
  ),
  [
    "borderSide",
    "insets",
  ],
);

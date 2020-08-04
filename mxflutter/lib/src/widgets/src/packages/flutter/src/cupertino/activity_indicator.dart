//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/activity_indicator.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerActivityIndicatorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[cupertinoActivityIndicator.funName] = cupertinoActivityIndicator;
  return m;
}
var cupertinoActivityIndicator = MXFunctionInvoke(
    "CupertinoActivityIndicator",
    ({
      Key key,
      bool animating = true,
      dynamic radius = 10.0,
    }) =>
      CupertinoActivityIndicator(
      key: key,
      animating: animating,
      radius: radius,
    ),
);

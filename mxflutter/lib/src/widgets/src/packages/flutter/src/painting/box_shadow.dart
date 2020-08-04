//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/box_shadow.dart';


class MXProxyBoxShadow {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[boxShadow.funName] = boxShadow;
    return m;
  }
  static var boxShadow = MXFunctionInvoke(
      "BoxShadow",
      ({
        Color color,
        Offset offset,
        dynamic blurRadius = 0.0,
        dynamic spreadRadius = 0.0,
      }) =>
        BoxShadow(
        color: color,
        offset: offset,
        blurRadius: blurRadius?.toDouble(),
        spreadRadius: spreadRadius?.toDouble(),
      ),
    );
}

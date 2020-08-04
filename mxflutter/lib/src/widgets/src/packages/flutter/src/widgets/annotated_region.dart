//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/annotated_region.dart';


class MXProxyAnnotatedRegion {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[annotatedRegion.funName] = annotatedRegion;
    return m;
  }
  static var annotatedRegion = MXFunctionInvoke(
      "AnnotatedRegion",
      ({
        Key key,
        Widget child,
        dynamic value,
        bool sized = true,
      }) =>
        AnnotatedRegion(
        key: key,
        child: child,
        value: value,
        sized: sized,
      ),
    );
}

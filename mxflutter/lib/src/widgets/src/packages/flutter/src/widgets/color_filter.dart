//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/color_filter.dart';


class MXProxyColorFilter {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[colorFiltered.funName] = colorFiltered;
    return m;
  }
  static var colorFiltered = MXFunctionInvoke(
      "ColorFiltered",
      ({
        ColorFilter colorFilter,
        Widget child,
        Key key,
      }) =>
        ColorFiltered(
        colorFilter: colorFilter,
        child: child,
        key: key,
      ),
    );
}

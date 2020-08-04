//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class MXProxyPlaceholder {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[placeholder.funName] = placeholder;
    return m;
  }
  static var placeholder = MXFunctionInvoke(
      "Placeholder",
      ({
        Key key,
        Color color,
        dynamic strokeWidth = 2.0,
        dynamic fallbackWidth = 400.0,
        dynamic fallbackHeight = 400.0,
      }) =>
        Placeholder(
        key: key,
        color: color,
        strokeWidth: strokeWidth?.toDouble(),
        fallbackWidth: fallbackWidth?.toDouble(),
        fallbackHeight: fallbackHeight?.toDouble(),
      ),
    );
}

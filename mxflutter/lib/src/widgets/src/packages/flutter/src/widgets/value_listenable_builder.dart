//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/value_listenable_builder.dart';


class MXProxyValueListenableBuilder {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[valueListenableBuilder.funName] = valueListenableBuilder;
    return m;
  }
  static var valueListenableBuilder = MXFunctionInvoke(
      "ValueListenableBuilder",
      ({
        Key key,
        ValueListenable<ValueListenableBuilder::T> valueListenable,
        dynamic builder,
        Widget child,
      }) =>
        ValueListenableBuilder(
        key: key,
        valueListenable: valueListenable,
        builder: builder,
        child: child,
      ),
    );
}

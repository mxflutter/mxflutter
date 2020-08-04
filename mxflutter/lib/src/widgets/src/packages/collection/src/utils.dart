//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:collection/src/utils.dart';


class MXProxyUtils {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[pair.funName] = pair;
    return m;
  }
  static var pair = MXFunctionInvoke(
      "Pair",
      ({
        dynamic first,
        dynamic last,
      }) =>
        Pair(
        first,
        last,
      ),
    );
}

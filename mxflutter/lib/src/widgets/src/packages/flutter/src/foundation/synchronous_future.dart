//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/synchronous_future.dart';


class MXProxySynchronousFuture {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[synchronousFuture.funName] = synchronousFuture;
    return m;
  }
  static var synchronousFuture = MXFunctionInvoke(
      "SynchronousFuture",
      ({
        dynamic _value,
      }) =>
        SynchronousFuture(
        _value,
      ),
    );
}

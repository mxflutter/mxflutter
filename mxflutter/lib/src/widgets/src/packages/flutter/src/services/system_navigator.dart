//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/system_navigator.dart';


class MXProxySystemNavigator {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[systemNavigator_.funName] = systemNavigator_;
    return m;
  }
  static var systemNavigator_ = MXFunctionInvoke(
    "systemNavigator.",
      ({
      }) =>
        SystemNavigator.(
      ),
    );
}

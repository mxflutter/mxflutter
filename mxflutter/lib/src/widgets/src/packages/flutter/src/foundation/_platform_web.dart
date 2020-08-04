//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/_platform_web.dart';
import 'package:flutter/src/foundation/platform.dart';


class MXProxyPlatformWeb {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[targetPlatform.funName] = targetPlatform;
    return m;
  }
  static var targetPlatform = MXFunctionInvoke(
      "TargetPlatform",
      ({Map args}) => MXTargetPlatform.parse(args),
  );
}
class MXTargetPlatform {
  static Map str2VMap = {
    'TargetPlatform.android': TargetPlatform.android,
    'TargetPlatform.fuchsia': TargetPlatform.fuchsia,
    'TargetPlatform.iOS': TargetPlatform.iOS,
    'TargetPlatform.linux': TargetPlatform.linux,
    'TargetPlatform.macOS': TargetPlatform.macOS,
    'TargetPlatform.windows': TargetPlatform.windows,
  };
  static TargetPlatform parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/system_sound.dart';


class MXProxySystemSound {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[systemSoundType.funName] = systemSoundType;
    m[systemSound_.funName] = systemSound_;
    return m;
  }
  static var systemSoundType = MXFunctionInvoke(
      "SystemSoundType",
      ({Map args}) => MXSystemSoundType.parse(args),
  );
  static var systemSound_ = MXFunctionInvoke(
    "systemSound.",
      ({
      }) =>
        SystemSound.(
      ),
    );
}
class MXSystemSoundType {
  static Map str2VMap = {
    'SystemSoundType.click': SystemSoundType.click,
  };
  static SystemSoundType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

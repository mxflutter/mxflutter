//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/system_sound.dart';
import 'dart:async' ;
import 'package:flutter/src/services/system_channels.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSystemSoundSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_systemSoundType.funName] = _systemSoundType;
  return m;
}
var _systemSoundType = MXFunctionInvoke(
    "SystemSoundType",
    ({Map args}) => MXSystemSoundType.parse(args),
  );
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

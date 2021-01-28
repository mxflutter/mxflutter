//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/system_sound.dart';
import 'dart:async';
import 'package:flutter/src/services/system_channels.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSystemSoundSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_systemSoundType.funName] = _systemSoundType;
  return m;
}

var _systemSoundType = MXFunctionInvoke(
    "SystemSoundType", ({String name, int index}) => MXSystemSoundType.parse(name, index), ["name", "index"]);

class MXSystemSoundType {
  static SystemSoundType parse(String name, int index) {
    switch (name) {
      case 'SystemSoundType.click':
        return SystemSoundType.click;
    }
    return null;
  }
}

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/platform.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPlatformSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_targetPlatform.funName] = _targetPlatform;
  return m;
}

var _targetPlatform = MXFunctionInvoke(
    "TargetPlatform", ({String name, int index}) => MXTargetPlatform.parse(name, index), ["name", "index"]);

class MXTargetPlatform {
  static TargetPlatform parse(String name, int index) {
    switch (name) {
      case 'TargetPlatform.android':
        return TargetPlatform.android;
      case 'TargetPlatform.fuchsia':
        return TargetPlatform.fuchsia;
      case 'TargetPlatform.iOS':
        return TargetPlatform.iOS;
      case 'TargetPlatform.linux':
        return TargetPlatform.linux;
      case 'TargetPlatform.macOS':
        return TargetPlatform.macOS;
      case 'TargetPlatform.windows':
        return TargetPlatform.windows;
    }
    return null;
  }
}

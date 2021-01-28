//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/interface_level.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInterfaceLevelSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoUserInterfaceLevelData.funName] = _cupertinoUserInterfaceLevelData;
  m[_cupertinoUserInterfaceLevel.funName] = _cupertinoUserInterfaceLevel;
  return m;
}

var _cupertinoUserInterfaceLevelData = MXFunctionInvoke("CupertinoUserInterfaceLevelData",
    ({String name, int index}) => MXCupertinoUserInterfaceLevelData.parse(name, index), ["name", "index"]);
var _cupertinoUserInterfaceLevel = MXFunctionInvoke(
  "CupertinoUserInterfaceLevel",
  ({
    Key key,
    CupertinoUserInterfaceLevelData data,
    Widget child,
  }) =>
      CupertinoUserInterfaceLevel(
    key: key,
    data: data,
    child: child,
  ),
  [
    "key",
    "data",
    "child",
  ],
);

class MXCupertinoUserInterfaceLevelData {
  static CupertinoUserInterfaceLevelData parse(String name, int index) {
    switch (name) {
      case 'CupertinoUserInterfaceLevelData.base':
        return CupertinoUserInterfaceLevelData.base;
      case 'CupertinoUserInterfaceLevelData.elevated':
        return CupertinoUserInterfaceLevelData.elevated;
    }
    return null;
  }
}

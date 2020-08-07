//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/interface_level.dart';
import 'package:flutter/foundation.dart' ;
import 'package:flutter/src/widgets/framework.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInterfaceLevelSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoUserInterfaceLevelData.funName] = _cupertinoUserInterfaceLevelData;
  m[_cupertinoUserInterfaceLevel.funName] = _cupertinoUserInterfaceLevel;
  return m;
}
var _cupertinoUserInterfaceLevelData = MXFunctionInvoke(
    "CupertinoUserInterfaceLevelData",
    ({Map args}) => MXCupertinoUserInterfaceLevelData.parse(args),
  );
var _cupertinoUserInterfaceLevel = MXFunctionInvoke(
    "CupertinoUserInterfaceLevel",
    (
      {
      Key key,
      CupertinoUserInterfaceLevelData data,
      Widget child,
      }
    ) =>
      CupertinoUserInterfaceLevel(
      key: key,
      data: data,
      child: child,
    ),
);
class MXCupertinoUserInterfaceLevelData {
  static Map str2VMap = {
    'CupertinoUserInterfaceLevelData.base': CupertinoUserInterfaceLevelData.base,
    'CupertinoUserInterfaceLevelData.elevated': CupertinoUserInterfaceLevelData.elevated,
  };
  static CupertinoUserInterfaceLevelData parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

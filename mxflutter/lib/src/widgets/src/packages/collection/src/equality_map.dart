//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/equality_map.dart';
import 'dart:collection';
import 'package:collection/src/equality.dart';
import 'package:collection/src/wrappers.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEqualityMapSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_equalityMap.funName] = _equalityMap;
  m[_equalityMapFrom.funName] = _equalityMapFrom;
  return m;
}

var _equalityMap = MXFunctionInvoke(
  "EqualityMap",
  ({
    Equality<dynamic> equality,
  }) =>
      EqualityMap(
    equality,
  ),
  [
    "equality",
  ],
);
var _equalityMapFrom = MXFunctionInvoke(
  "EqualityMap.from",
  ({
    Equality<dynamic> equality,
    dynamic other,
  }) =>
      EqualityMap.from(
    equality,
    toMapT<dynamic, dynamic>(other),
  ),
  [
    "equality",
    "other",
  ],
);

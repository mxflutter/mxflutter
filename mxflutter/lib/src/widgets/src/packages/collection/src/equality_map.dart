//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/equality_map.dart';
import 'dart:collection';
import 'package:collection/src/equality.dart';
import 'package:collection/src/wrappers.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEqualityMapSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[equalityMap.funName] = equalityMap;
  m[equalityMap_from.funName] = equalityMap_from;
  return m;
}
var equalityMap = MXFunctionInvoke(
    "EqualityMap",
    ({
      Equality<EqualityMap::K> equality,
    }) =>
      EqualityMap(
      equality,
    ),
);
var equalityMap_from = MXFunctionInvoke(
  "equalityMap.from",
    ({
      Equality<EqualityMap::K> equality,
      Map<EqualityMap::K, EqualityMap::V> other,
    }) =>
      EqualityMap.from(
      equality,
      other,
    ),
);

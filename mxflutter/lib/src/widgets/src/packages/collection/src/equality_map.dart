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
  m[_equalityMap.funName] = _equalityMap;
  m[_equalityMap_from.funName] = _equalityMap_from;
  return m;
}
var _equalityMap = MXFunctionInvoke(
    "EqualityMap",
    (
      {
      Equality<dynamic> equality,
      }
    ) =>
      EqualityMap(
      equality,
    ),
);
var _equalityMap_from = MXFunctionInvoke(
  "equalityMap.from",
    (
      {
      Equality<dynamic> equality,
      Map<dynamic, dynamic> other,
      }
    ) =>
      EqualityMap.from(
      equality,
      other,
    ),
);

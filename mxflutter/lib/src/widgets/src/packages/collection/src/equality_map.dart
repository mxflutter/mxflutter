//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:collection/src/equality_map.dart';


class MXProxyEqualityMap {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[equalityMap.funName] = equalityMap;
    m[equalityMap_from.funName] = equalityMap_from;
    return m;
  }
  static var equalityMap = MXFunctionInvoke(
      "EqualityMap",
      ({
        Equality<EqualityMap::K> equality,
      }) =>
        EqualityMap(
        equality,
      ),
    );
  static var equalityMap_from = MXFunctionInvoke(
    "equalityMap.from",
      ({
        Equality<EqualityMap::K> equality,
        Map<EqualityMap::K*, EqualityMap::V> other,
      }) =>
        EqualityMap.from(
        equality,
        other,
      ),
    );
}

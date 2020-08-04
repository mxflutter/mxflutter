//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/canonicalized_map.dart';
import 'dart:collection';
import 'package:collection/src/utils.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCanonicalizedMapSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[canonicalizedMap.funName] = canonicalizedMap;
  m[canonicalizedMap_from.funName] = canonicalizedMap_from;
  return m;
}
var canonicalizedMap = MXFunctionInvoke(
    "CanonicalizedMap",
    ({
      dynamic canonicalize,
      dynamic isValidKey,
    }) =>
      CanonicalizedMap(
      canonicalize,
      isValidKey: createGenericValueGenericClosure<bool, Object>(canonicalizedMap.buildOwner, isValidKey),
    ),
);
var canonicalizedMap_from = MXFunctionInvoke(
  "canonicalizedMap.from",
    ({
      Map<CanonicalizedMap::K, CanonicalizedMap::V> other,
      dynamic canonicalize,
      dynamic isValidKey,
    }) =>
      CanonicalizedMap.from(
      other,
      canonicalize,
      isValidKey: createGenericValueGenericClosure<bool, Object>(canonicalizedMap_from.buildOwner, isValidKey),
    ),
);

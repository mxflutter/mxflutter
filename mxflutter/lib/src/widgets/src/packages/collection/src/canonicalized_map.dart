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
  m[_canonicalizedMap.funName] = _canonicalizedMap;
  m[_canonicalizedMap_from.funName] = _canonicalizedMap_from;
  return m;
}

var _canonicalizedMap = MXFunctionInvoke(
  "CanonicalizedMap",
  ({
    dynamic canonicalize,
    dynamic isValidKey,
  }) =>
      CanonicalizedMap(
    null,
    isValidKey: null,
  ),
  [
    "canonicalize",
    "isValidKey",
  ],
);
var _canonicalizedMap_from = MXFunctionInvoke(
  "CanonicalizedMap.from",
  ({
    dynamic other,
    dynamic canonicalize,
    dynamic isValidKey,
  }) =>
      CanonicalizedMap.from(
    toMapT<dynamic, dynamic>(other),
    null,
    isValidKey: null,
  ),
  [
    "other",
    "canonicalize",
    "isValidKey",
  ],
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/equality_set.dart';
import 'dart:collection';
import 'package:collection/src/equality.dart';
import 'package:collection/src/wrappers.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEqualitySetSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_equalitySet.funName] = _equalitySet;
  m[_equalitySetFrom.funName] = _equalitySetFrom;
  return m;
}

var _equalitySet = MXFunctionInvoke(
  "EqualitySet",
  ({
    Equality<dynamic> equality,
  }) =>
      EqualitySet(
    equality,
  ),
  [
    "equality",
  ],
);
var _equalitySetFrom = MXFunctionInvoke(
  "EqualitySet.from",
  ({
    Equality<dynamic> equality,
    Iterable<dynamic> other,
  }) =>
      EqualitySet.from(
    equality,
    other,
  ),
  [
    "equality",
    "other",
  ],
);

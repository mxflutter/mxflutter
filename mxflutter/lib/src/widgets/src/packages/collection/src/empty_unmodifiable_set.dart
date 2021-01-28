//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/empty_unmodifiable_set.dart';
import 'dart:collection';
import 'package:collection/src/unmodifiable_wrappers.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEmptyUnmodifiableSetSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_emptyUnmodifiableSet.funName] = _emptyUnmodifiableSet;
  return m;
}

var _emptyUnmodifiableSet = MXFunctionInvoke(
  "EmptyUnmodifiableSet",
  () => EmptyUnmodifiableSet(),
  [],
);

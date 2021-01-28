//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/wrappers.dart';
import 'dart:collection';
import 'dart:math' as math;
import 'package:collection/src/unmodifiable_wrappers.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerWrappersSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_delegatingIterable.funName] = _delegatingIterable;
  m[_delegatingList.funName] = _delegatingList;
  m[_delegatingSet.funName] = _delegatingSet;
  m[_delegatingQueue.funName] = _delegatingQueue;
  m[_delegatingMap.funName] = _delegatingMap;
  m[_mapKeySet.funName] = _mapKeySet;
  m[_mapValueSet.funName] = _mapValueSet;
  return m;
}

var _delegatingIterable = MXFunctionInvoke(
  "DelegatingIterable",
  ({
    Iterable<dynamic> base,
  }) =>
      DelegatingIterable(
    base,
  ),
  [
    "base",
  ],
);
var _delegatingList = MXFunctionInvoke(
  "DelegatingList",
  ({
    dynamic base,
  }) =>
      DelegatingList(
    toListT<dynamic>(base),
  ),
  [
    "base",
  ],
);
var _delegatingSet = MXFunctionInvoke(
  "DelegatingSet",
  ({
    Set<dynamic> base,
  }) =>
      DelegatingSet(
    base,
  ),
  [
    "base",
  ],
);
var _delegatingQueue = MXFunctionInvoke(
  "DelegatingQueue",
  ({
    Queue<dynamic> queue,
  }) =>
      DelegatingQueue(
    queue,
  ),
  [
    "queue",
  ],
);
var _delegatingMap = MXFunctionInvoke(
  "DelegatingMap",
  ({
    dynamic base,
  }) =>
      DelegatingMap(
    toMapT<dynamic, dynamic>(base),
  ),
  [
    "base",
  ],
);
var _mapKeySet = MXFunctionInvoke(
  "MapKeySet",
  ({
    dynamic base,
  }) =>
      MapKeySet(
    toMapT<dynamic, dynamic>(base),
  ),
  [
    "base",
  ],
);
var _mapValueSet = MXFunctionInvoke(
  "MapValueSet",
  ({
    dynamic base,
    dynamic keyForValue,
  }) =>
      MapValueSet(
    toMapT<dynamic, dynamic>(base),
    null,
  ),
  [
    "base",
    "keyForValue",
  ],
);

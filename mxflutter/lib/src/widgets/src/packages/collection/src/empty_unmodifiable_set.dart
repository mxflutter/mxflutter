//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/empty_unmodifiable_set.dart';
import 'dart:collection' ;
import 'package:collection/src/unmodifiable_wrappers.dart' ;
import 'package:collection/src/unmodifiable_wrappers.dart';
import 'package:collection/src/empty_unmodifiable_set.dart' ;
import 'package:collection/src/wrappers.dart' ;
import 'package:collection/src/wrappers.dart';
import 'dart:math' as math;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEmptyUnmodifiableSetSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_emptyUnmodifiableSet.funName] = _emptyUnmodifiableSet;
  m[_delegatingIterable.funName] = _delegatingIterable;
  m[_delegatingList.funName] = _delegatingList;
  m[_nonGrowableListView.funName] = _nonGrowableListView;
  m[_nonGrowableListMixin.funName] = _nonGrowableListMixin;
  m[_delegatingSet.funName] = _delegatingSet;
  m[_unmodifiableSetView.funName] = _unmodifiableSetView;
  m[_unmodifiableSetView_empty.funName] = _unmodifiableSetView_empty;
  m[_unmodifiableSetMixin.funName] = _unmodifiableSetMixin;
  m[_unmodifiableMapMixin.funName] = _unmodifiableMapMixin;
  m[_delegatingQueue.funName] = _delegatingQueue;
  m[_delegatingMap.funName] = _delegatingMap;
  m[_mapKeySet.funName] = _mapKeySet;
  m[_mapValueSet.funName] = _mapValueSet;
  return m;
}
var _emptyUnmodifiableSet = MXFunctionInvoke(
    "EmptyUnmodifiableSet",
    (
    ) =>
      EmptyUnmodifiableSet(
    ),
);
var _delegatingIterable = MXFunctionInvoke(
    "DelegatingIterable",
    (
      {
      Iterable<dynamic> base,
      }
    ) =>
      DelegatingIterable(
      base,
    ),
);
var _delegatingList = MXFunctionInvoke(
    "DelegatingList",
    (
      {
      List<dynamic> base,
      }
    ) =>
      DelegatingList(
      base,
    ),
);
var _nonGrowableListView = MXFunctionInvoke(
    "NonGrowableListView",
    (
      {
      List<dynamic> listBase,
      }
    ) =>
      NonGrowableListView(
      listBase,
    ),
);
var _nonGrowableListMixin = MXFunctionInvoke(
    "NonGrowableListMixin",
    (
    ) =>
      NonGrowableListMixin(
    ),
);
var _delegatingSet = MXFunctionInvoke(
    "DelegatingSet",
    (
      {
      Set<dynamic> base,
      }
    ) =>
      DelegatingSet(
      base,
    ),
);
var _unmodifiableSetView = MXFunctionInvoke(
    "UnmodifiableSetView",
    (
      {
      Set<dynamic> setBase,
      }
    ) =>
      UnmodifiableSetView(
      setBase,
    ),
);
var _unmodifiableSetView_empty = MXFunctionInvoke(
  "UnmodifiableSetView.empty",
    (
    ) =>
      UnmodifiableSetView.empty(
    ),
);
var _unmodifiableSetMixin = MXFunctionInvoke(
    "UnmodifiableSetMixin",
    (
    ) =>
      UnmodifiableSetMixin(
    ),
);
var _unmodifiableMapMixin = MXFunctionInvoke(
    "UnmodifiableMapMixin",
    (
    ) =>
      UnmodifiableMapMixin(
    ),
);
var _delegatingQueue = MXFunctionInvoke(
    "DelegatingQueue",
    (
      {
      Queue<dynamic> queue,
      }
    ) =>
      DelegatingQueue(
      queue,
    ),
);
var _delegatingMap = MXFunctionInvoke(
    "DelegatingMap",
    (
      {
      Map<dynamic, dynamic> base,
      }
    ) =>
      DelegatingMap(
      base,
    ),
);
var _mapKeySet = MXFunctionInvoke(
    "MapKeySet",
    (
      {
      Map<dynamic, dynamic> base,
      }
    ) =>
      MapKeySet(
      base,
    ),
);
var _mapValueSet = MXFunctionInvoke(
    "MapValueSet",
    (
      {
      Map<dynamic, dynamic> base,
      dynamic keyForValue,
      }
    ) =>
      MapValueSet(
      base,
      keyForValue: null,
    ),
);

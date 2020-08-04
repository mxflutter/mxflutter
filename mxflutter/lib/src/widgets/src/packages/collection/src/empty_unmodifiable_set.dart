//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:collection/src/empty_unmodifiable_set.dart';
import 'package:collection/src/unmodifiable_wrappers.dart';
import 'package:collection/src/wrappers.dart';


class MXProxyEmptyUnmodifiableSet {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[emptyUnmodifiableSet.funName] = emptyUnmodifiableSet;
    m[delegatingIterable.funName] = delegatingIterable;
    m[delegatingList.funName] = delegatingList;
    m[nonGrowableListView.funName] = nonGrowableListView;
    m[delegatingSet.funName] = delegatingSet;
    m[unmodifiableSetView.funName] = unmodifiableSetView;
    m[delegatingQueue.funName] = delegatingQueue;
    m[delegatingMap.funName] = delegatingMap;
    m[mapKeySet.funName] = mapKeySet;
    m[mapValueSet.funName] = mapValueSet;
    return m;
  }
  static var emptyUnmodifiableSet = MXFunctionInvoke(
      "EmptyUnmodifiableSet",
      ({
      }) =>
        EmptyUnmodifiableSet(
      ),
    );
  static var delegatingIterable = MXFunctionInvoke(
      "DelegatingIterable",
      ({
        Iterable<DelegatingIterable::E> base,
      }) =>
        DelegatingIterable(
        base,
      ),
    );
  static var delegatingList = MXFunctionInvoke(
      "DelegatingList",
      ({
        List<DelegatingList::E> base,
      }) =>
        DelegatingList(
        base,
      ),
    );
  static var nonGrowableListView = MXFunctionInvoke(
      "NonGrowableListView",
      ({
        List<NonGrowableListView::E> listBase,
      }) =>
        NonGrowableListView(
        listBase,
      ),
    );
  static var delegatingSet = MXFunctionInvoke(
      "DelegatingSet",
      ({
        Set<DelegatingSet::E> base,
      }) =>
        DelegatingSet(
        base,
      ),
    );
  static var unmodifiableSetView = MXFunctionInvoke(
      "UnmodifiableSetView",
      ({
        Set<UnmodifiableSetView::E> setBase,
      }) =>
        UnmodifiableSetView(
        setBase,
      ),
    );
  static var delegatingQueue = MXFunctionInvoke(
      "DelegatingQueue",
      ({
        Queue<DelegatingQueue::E> queue,
      }) =>
        DelegatingQueue(
        queue,
      ),
    );
  static var delegatingMap = MXFunctionInvoke(
      "DelegatingMap",
      ({
        Map<DelegatingMap::K*, DelegatingMap::V> base,
      }) =>
        DelegatingMap(
        base,
      ),
    );
  static var mapKeySet = MXFunctionInvoke(
      "MapKeySet",
      ({
        Map<MapKeySet::E*, dynamic> base,
      }) =>
        MapKeySet(
        base,
      ),
    );
  static var mapValueSet = MXFunctionInvoke(
      "MapValueSet",
      ({
        Map<MapValueSet::K*, MapValueSet::V> base,
        dynamic keyForValue,
      }) =>
        MapValueSet(
        base,
        keyForValue,
      ),
    );
}

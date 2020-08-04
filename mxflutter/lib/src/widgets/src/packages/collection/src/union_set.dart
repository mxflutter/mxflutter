//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/union_set.dart';
import 'dart:collection';
import 'package:collection/src/unmodifiable_wrappers.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerUnionSetSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[unionSet.funName] = unionSet;
  m[unionSet_from.funName] = unionSet_from;
  return m;
}
var unionSet = MXFunctionInvoke(
    "UnionSet",
    ({
      Set<Set<UnionSet::E>> _sets,
      bool disjoint = false,
    }) =>
      UnionSet(
      _sets,
      disjoint: disjoint,
    ),
);
var unionSet_from = MXFunctionInvoke(
  "unionSet.from",
    ({
      Iterable<Set<UnionSet::E>> sets,
      bool disjoint = false,
    }) =>
      UnionSet.from(
      sets,
      disjoint: disjoint,
    ),
);

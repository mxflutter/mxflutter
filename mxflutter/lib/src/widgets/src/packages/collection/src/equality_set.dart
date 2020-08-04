//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:collection/src/equality_set.dart';


class MXProxyEqualitySet {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[equalitySet.funName] = equalitySet;
    m[equalitySet_from.funName] = equalitySet_from;
    return m;
  }
  static var equalitySet = MXFunctionInvoke(
      "EqualitySet",
      ({
        Equality<EqualitySet::E> equality,
      }) =>
        EqualitySet(
        equality,
      ),
    );
  static var equalitySet_from = MXFunctionInvoke(
    "equalitySet.from",
      ({
        Equality<EqualitySet::E> equality,
        Iterable<EqualitySet::E> other,
      }) =>
        EqualitySet.from(
        equality,
        other,
      ),
    );
}

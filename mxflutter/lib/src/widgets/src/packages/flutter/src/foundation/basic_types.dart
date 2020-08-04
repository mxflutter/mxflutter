//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/basic_types.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:ui';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBasicTypesSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[cachingIterable.funName] = cachingIterable;
  m[factory.funName] = factory;
  return m;
}
var cachingIterable = MXFunctionInvoke(
    "CachingIterable",
    ({
      Iterator<CachingIterable::E> _prefillIterator,
    }) =>
      CachingIterable(
      _prefillIterator,
    ),
);
var factory = MXFunctionInvoke(
    "Factory",
    ({
      dynamic constructor,
    }) =>
      Factory(
      constructor,
    ),
);

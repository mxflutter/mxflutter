//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/basic_types.dart';


class MXProxyBasicTypes {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[cachingIterable.funName] = cachingIterable;
    m[factory.funName] = factory;
    return m;
  }
  static var cachingIterable = MXFunctionInvoke(
      "CachingIterable",
      ({
        Iterator<CachingIterable::E> _prefillIterator,
      }) =>
        CachingIterable(
        _prefillIterator,
      ),
    );
  static var factory = MXFunctionInvoke(
      "Factory",
      ({
        dynamic constructor,
      }) =>
        Factory(
        constructor,
      ),
    );
}

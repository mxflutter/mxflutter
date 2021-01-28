//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/combined_wrappers/combined_iterable.dart';
import 'dart:collection';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCombinedIterableSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_combinedIterableView.funName] = _combinedIterableView;
  return m;
}

var _combinedIterableView = MXFunctionInvoke(
  "CombinedIterableView",
  ({
    Iterable<Iterable<dynamic>> iterables,
  }) =>
      CombinedIterableView(
    iterables,
  ),
  [
    "iterables",
  ],
);

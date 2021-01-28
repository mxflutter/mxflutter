//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/unmodifiable_wrappers.dart';
import 'package:collection/src/empty_unmodifiable_set.dart';
import 'package:collection/src/wrappers.dart';
import 'dart:collection';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerUnmodifiableWrappersSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_nonGrowableListView.funName] = _nonGrowableListView;
  m[_unmodifiableSetView.funName] = _unmodifiableSetView;
  m[_unmodifiableSetViewEmpty.funName] = _unmodifiableSetViewEmpty;
  return m;
}

var _nonGrowableListView = MXFunctionInvoke(
  "NonGrowableListView",
  ({
    dynamic listBase,
  }) =>
      NonGrowableListView(
    toListT<dynamic>(listBase),
  ),
  [
    "listBase",
  ],
);
var _unmodifiableSetView = MXFunctionInvoke(
  "UnmodifiableSetView",
  ({
    Set<dynamic> setBase,
  }) =>
      UnmodifiableSetView(
    setBase,
  ),
  [
    "setBase",
  ],
);
var _unmodifiableSetViewEmpty = MXFunctionInvoke(
  "UnmodifiableSetView.empty",
  () => UnmodifiableSetView.empty(),
  [],
);

//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_unmodifiableSetView_empty.funName] = _unmodifiableSetView_empty;
  return m;
}
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

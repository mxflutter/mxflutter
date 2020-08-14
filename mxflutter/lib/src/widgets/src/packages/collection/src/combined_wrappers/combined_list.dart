//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/combined_wrappers/combined_list.dart';
import 'dart:collection';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCombinedListSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_combinedListView.funName] = _combinedListView;
  return m;
}
var _combinedListView = MXFunctionInvoke(
    "CombinedListView",
    (
      {
      dynamic lists,
      }
    ) =>
      CombinedListView(
      toListT<List<dynamic>>(lists),
    ),
);

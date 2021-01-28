//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/union_set_controller.dart';
import 'package:collection/src/union_set.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerUnionSetControllerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_unionSetController.funName] = _unionSetController;
  return m;
}

var _unionSetController = MXFunctionInvoke(
  "UnionSetController",
  ({
    bool disjoint = false,
  }) =>
      UnionSetController(
    disjoint: disjoint,
  ),
  [
    "disjoint",
  ],
);

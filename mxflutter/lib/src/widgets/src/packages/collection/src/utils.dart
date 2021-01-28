//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/utils.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerUtilsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_pair.funName] = _pair;
  return m;
}

var _pair = MXFunctionInvoke(
  "Pair",
  ({
    dynamic first,
    dynamic last,
  }) =>
      Pair(
    first,
    last,
  ),
  [
    "first",
    "last",
  ],
);

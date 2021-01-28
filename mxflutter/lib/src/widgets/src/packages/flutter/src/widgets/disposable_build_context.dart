//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/disposable_build_context.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDisposableBuildContextSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_disposableBuildContext.funName] = _disposableBuildContext;
  return m;
}

var _disposableBuildContext = MXFunctionInvoke(
  "DisposableBuildContext",
  ({
    State<StatefulWidget> state,
  }) =>
      DisposableBuildContext(
    state,
  ),
  [
    "state",
  ],
);

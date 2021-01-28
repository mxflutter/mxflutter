//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/dual_transition_builder.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDualTransitionBuilderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dualTransitionBuilder.funName] = _dualTransitionBuilder;
  return m;
}

var _dualTransitionBuilder = MXFunctionInvoke(
  "DualTransitionBuilder",
  ({
    Key key,
    Animation<double> animation,
    dynamic forwardBuilder,
    dynamic reverseBuilder,
    Widget child,
  }) =>
      DualTransitionBuilder(
    key: key,
    animation: animation,
    forwardBuilder: null,
    reverseBuilder: null,
    child: child,
  ),
  [
    "key",
    "animation",
    "forwardBuilder",
    "reverseBuilder",
    "child",
  ],
);

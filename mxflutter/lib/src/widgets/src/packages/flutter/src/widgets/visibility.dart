//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/visibility.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerVisibilitySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_visibility.funName] = _visibility;
  m[_sliverVisibility.funName] = _sliverVisibility;
  return m;
}

var _visibility = MXFunctionInvoke(
  "Visibility",
  ({
    Key key,
    Widget child,
    Widget replacement = const SizedBox(width: 0.0, height: 0.0),
    bool visible = true,
    bool maintainState = false,
    bool maintainAnimation = false,
    bool maintainSize = false,
    bool maintainSemantics = false,
    bool maintainInteractivity = false,
  }) =>
      Visibility(
    key: key,
    child: child,
    replacement: replacement,
    visible: visible,
    maintainState: maintainState,
    maintainAnimation: maintainAnimation,
    maintainSize: maintainSize,
    maintainSemantics: maintainSemantics,
    maintainInteractivity: maintainInteractivity,
  ),
  [
    "key",
    "child",
    "replacement",
    "visible",
    "maintainState",
    "maintainAnimation",
    "maintainSize",
    "maintainSemantics",
    "maintainInteractivity",
  ],
);
var _sliverVisibility = MXFunctionInvoke(
  "SliverVisibility",
  ({
    Key key,
    Widget sliver,
    Widget replacementSliver = const SliverToBoxAdapter(),
    bool visible = true,
    bool maintainState = false,
    bool maintainAnimation = false,
    bool maintainSize = false,
    bool maintainSemantics = false,
    bool maintainInteractivity = false,
  }) =>
      SliverVisibility(
    key: key,
    sliver: sliver,
    replacementSliver: replacementSliver,
    visible: visible,
    maintainState: maintainState,
    maintainAnimation: maintainAnimation,
    maintainSize: maintainSize,
    maintainSemantics: maintainSemantics,
    maintainInteractivity: maintainInteractivity,
  ),
  [
    "key",
    "sliver",
    "replacementSliver",
    "visible",
    "maintainState",
    "maintainAnimation",
    "maintainSize",
    "maintainSemantics",
    "maintainInteractivity",
  ],
);

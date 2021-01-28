//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/overscroll_indicator.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollConfigurationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollBehavior.funName] = _scrollBehavior;
  m[_scrollConfiguration.funName] = _scrollConfiguration;
  return m;
}

var _scrollBehavior = MXFunctionInvoke(
  "ScrollBehavior",
  () => ScrollBehavior(),
  [],
);
var _scrollConfiguration = MXFunctionInvoke(
  "ScrollConfiguration",
  ({
    Key key,
    ScrollBehavior behavior,
    Widget child,
  }) =>
      ScrollConfiguration(
    key: key,
    behavior: behavior,
    child: child,
  ),
  [
    "key",
    "behavior",
    "child",
  ],
);

//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTickerProviderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tickerMode.funName] = _tickerMode;
  return m;
}

var _tickerMode = MXFunctionInvoke(
  "TickerMode",
  ({
    Key key,
    bool enabled,
    Widget child,
  }) =>
      TickerMode(
    key: key,
    enabled: enabled,
    child: child,
  ),
  [
    "key",
    "enabled",
    "child",
  ],
);

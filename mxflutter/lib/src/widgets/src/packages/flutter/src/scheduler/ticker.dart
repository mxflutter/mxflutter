//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/scheduler/binding.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTickerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[ticker.funName] = ticker;
  m[tickerFuture_complete.funName] = tickerFuture_complete;
  m[tickerCanceled.funName] = tickerCanceled;
  return m;
}
var ticker = MXFunctionInvoke(
    "Ticker",
    ({
      dynamic _onTick,
      String debugLabel,
    }) =>
      Ticker(
      _onTick,
      debugLabel: debugLabel,
    ),
);
var tickerFuture_complete = MXFunctionInvoke(
  "tickerFuture.complete",
    ({
    }) =>
      TickerFuture.complete(
    ),
);
var tickerCanceled = MXFunctionInvoke(
    "TickerCanceled",
    ({
      Ticker ticker,
    }) =>
      TickerCanceled(
      ticker,
    ),
);
